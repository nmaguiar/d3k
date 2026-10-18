#!/usr/bin/env /opt/oaf/oaf-sb
// Summarize retained raw Trivy JSON without dropping packages or unfixed issues.
var args = processExpr(" ");
try {
function summarize(path) {
    var report = io.readFileJSON(path);
    if (!isArray(report.Results)) throw "Invalid or incomplete Trivy report: " + path;
    var result = {file: path, artifact: report.ArtifactName, os: report.Metadata.OS,
        architecture: report.Metadata.ImageConfig.architecture, imageID: report.Metadata.ImageID,
        categories: {}};
    if (["amd64", "arm64"].indexOf(result.architecture) < 0) throw "Missing or unsupported scan architecture";
    report.Results.forEach(function(target) {
        var category = target.Class === "os-pkgs" ? "os" : target.Type === "jar" ? "java" : target.Type;
        if (!result.categories[category]) result.categories[category] = {HIGH: 0, CRITICAL: 0, fixableHighCritical: 0, unfixedHighCritical: 0};
        (target.Vulnerabilities || []).forEach(function(vulnerability) {
            if (["HIGH", "CRITICAL"].indexOf(vulnerability.Severity) >= 0) {
                var counts = result.categories[category];
                counts[vulnerability.Severity]++;
                counts[vulnerability.FixedVersion ? "fixableHighCritical" : "unfixedHighCritical"]++;
            }
        });
    });
    return result;
}
var baseline = summarize(args.baseline), candidate = summarize(args.candidate);
if (baseline.architecture !== candidate.architecture) throw "Compare matching architectures";
function fixable(path) {
    var entries = {};
    io.readFileJSON(path).Results.forEach(function(target) {
        (target.Vulnerabilities || []).forEach(function(v) {
            if (v.FixedVersion && ["HIGH", "CRITICAL"].indexOf(v.Severity) >= 0) {
                var key = [target.Type, target.Target.split("/").pop(), v.PkgName, v.VulnerabilityID, v.Severity].join(":");
                entries[key] = {type: target.Type, target: target.Target, package: v.PkgName,
                    cve: v.VulnerabilityID, severity: v.Severity, installed: v.InstalledVersion, fixed: v.FixedVersion};
            }
        });
    });
    return entries;
}
var previous = fixable(args.baseline), current = fixable(args.candidate);
var introduced = Object.keys(current).filter(function(key) {return !previous[key];}).sort().map(function(key) {return current[key];});
print(stringify({baseline: baseline, candidate: candidate,
    newFixableHighCritical: introduced,
    note: "Counts are finding occurrences by category, not unique CVEs. Different versions/advisories/coverage prevent attributing changes solely to distribution."}, __, "  "));
if (String(args.gate) === "true" && introduced.length > 0) exit(1);
} catch (error) {
    printErr(String(error));
    exit(2);
}
