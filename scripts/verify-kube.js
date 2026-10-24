// Verify the current upstream manifest, without pinning an oPack release in d3k.
// opack can report copy/hash failures while returning a zero shell exit status.
try {
    var path = getOPackPath("Kube");
    if (!isString(path)) throw "Kube is not installed";

    var manifest = io.readFileYAML(path + "/.package.yaml");
    if (!isMap(manifest.filesHash) || Object.keys(manifest.filesHash).length === 0) {
        throw "Kube package is missing its upstream file hashes";
    }

    Object.keys(manifest.filesHash).forEach(function(file) {
        if (!io.fileExists(path + "/" + file) ||
            sha1(io.readFileBytes(path + "/" + file)) !== manifest.filesHash[file]) {
            throw "Kube package file is missing or differs from its upstream hash: " + file;
        }
    });

    print("PASS: Kube " + manifest.version + " files match the current upstream manifest");
} catch (error) {
    printErr(String(error));
    exit(1);
}
