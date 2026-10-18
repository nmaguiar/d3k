#!/usr/bin/env /opt/oaf/oaf-sb
// Bounded human output and noninteractive check=true json=true timeout=60.
var args = processExpr(" ");
var json = String(args.json || "false") === "true";
var check = String(args.check || "false") === "true";
var seconds = String(isDef(args.timeout) ? args.timeout : (getEnv("D3K_STARTUP_TIMEOUT") || "300"));
if (!/^[1-9][0-9]{0,4}$/.test(seconds) || Number(seconds) > 86400) {
    printErr("status.js: timeout must be an integer from 1 to 86400"); exit(2);
}
var deadline = now() + Number(seconds) * 1000, result, code;
do {
    var remaining = Math.max(1, Math.ceil((deadline - now()) / 1000));
    var probe = $sh(["timeout", "--foreground", "-k", "2", String(remaining),
        "/usr/local/lib/d3k/runtime.sh", "snapshot"]).get(0);
    if (probe.exitcode === 2) { printErr(probe.stderr); exit(2); }
    result = {};
    String(probe.stdout || "").trim().split("\n").forEach(function(line) {
        var fields = line.split("\t");
        if (fields.length >= 3) result[fields[0]] = {state: fields[1], reason: fields.slice(2).join("\t")};
    });
    code = Object.keys(result).length === 4 ? 0 : 1;
    Object.keys(result).forEach(function(name) {
        if (["ready", "disabled"].indexOf(result[name].state) < 0) code = 1;
    });
    if (code === 0 || now() >= deadline || Object.keys(result).some(function(name) {
        return result[name].state === "failed" || (!check && result[name].state === "degraded");
    })) break;
    sleep(250, true);
} while (true);
var mode = $sh(["/usr/local/lib/d3k/runtime.sh", "mode"]).get(0);
if (json) print(stringify({mode: String(mode.stdout || "unknown").trim(), components: result, ready: code === 0}, __, ""));
else {
    print("d3k status");
    Object.keys(result).forEach(function(name) { print(name + ": " + result[name].state + " - " + result[name].reason); });
    if (code !== 0) printErr("Readiness failed or timed out. Inspect /run/d3k/startup.log.");
}
exit(code);
