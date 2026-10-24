#!/usr/bin/env /opt/oaf/oaf-sb
// A clean vulnerability result is insufficient if the binary was not analyzed.
var args = processExpr(" ");
try {
    var lock = io.readFileYAML("versions.yaml");
    var report = io.readFileJSON(args.input);
    var binaries = report.Results.filter(function(r) {
        return r.Type === "gobinary" && /(^|\/)docker-buildx$/.test(r.Target);
    });
    if (binaries.length !== 1) throw "Expected exactly one scanned buildx binary";
    var packages = binaries[0].Packages || [];
    if (!packages.some(function(p) {
        return p.Name === "stdlib" && p.Version === lock.BUILDX_GO_VERSION.replace(/^go/, "v");
    })) throw "Missing buildx standard-library coverage or unexpected compiler version";
    if (!packages.some(function(p) { return /^github.com\/docker\//.test(p.Name); })) {
        throw "Missing buildx module coverage";
    }
    var unresolved = (binaries[0].Vulnerabilities || []).filter(function(v) {
        return v.PkgName === "stdlib" && ["CVE-2026-78667", "CVE-2026-78669", "CVE-2026-97031", "CVE-2026-111943"].indexOf(v.VulnerabilityID) >= 0;
    });
    if (unresolved.length) throw "Fixed-compiler buildx still reports the original findings";
    print("PASS: buildx compiler/module scan coverage and original stdlib findings absent");
} catch (error) {
    printErr(String(error)); exit(1);
}
