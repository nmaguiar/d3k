````yaml
╭ stdout   
├ stderr  : latest: Pulling from aquasec/trivy
│           43c4264eed91: Already exists
│           2fb915365b73: Pulling fs layer
│           55dd28896ea8: Pulling fs layer
│           4ff82ebd20fe: Pulling fs layer
│           4ff82ebd20fe: Verifying Checksum
│           4ff82ebd20fe: Download complete
│           2fb915365b73: Verifying Checksum
│           2fb915365b73: Download complete
│           55dd28896ea8: Verifying Checksum
│           55dd28896ea8: Download complete
│           2fb915365b73: Pull complete
│           55dd28896ea8: Pull complete
│           4ff82ebd20fe: Pull complete
│           Digest: sha256:26245f364b6f5d223003dc344ec1eb5eb8439052bfecb31d79aeba0c74344b3a
│           Status: Downloaded newer image for aquasec/trivy:latest
│           2024-10-24T07:24:43Z	INFO	[vulndb] Need to update DB
│           2024-10-24T07:24:43Z	INFO	[vulndb] Downloading vulnerability DB...
│           2024-10-24T07:24:43Z	INFO	[vulndb] Downloading artifact...	repo="ghcr.io/aquasecurity/trivy-db:2"
│           54.79 MiB / 54.79 MiB [----------------------------------------------------------->] 100.00% ? p/s
│           ?54.79 MiB / 54.79 MiB [----------------------------------------------------------->] 100.00% ? p/s
│            ?54.79 MiB / 54.79 MiB [----------------------------------------------------------->] 100.00% ?
│           p/s ?54.79 MiB / 54.79 MiB [----------------------------------------------------------->] 100.00% ?
│            p/s ?54.79 MiB / 54.79 MiB [----------------------------------------------------------->] 100.00%
│           ? p/s ?54.79 MiB / 54.79 MiB [----------------------------------------------------------->] 100.00%
│            ? p/s ?54.79 MiB / 54.79 MiB [----------------------------------------------------------->]
│           100.00% ? p/s ?54.79 MiB / 54.79 MiB [----------------------------------------------------------->]
│            100.00% ? p/s ?54.79 MiB / 54.79 MiB
│           [----------------------------------------------------------->] 100.00% ? p/s ?54.79 MiB / 54.79 MiB
│            [-------------------------------------------------] 100.00% 30.57 MiB p/s
│           2.0s2024-10-24T07:24:45Z	INFO	[vulndb] Artifact successfully
│           downloaded	repo="ghcr.io/aquasecurity/trivy-db:2"
│           2024-10-24T07:24:45Z	INFO	[vuln] Vulnerability scanning is enabled
│           2024-10-24T07:24:45Z	INFO	[secret] Secret scanning is enabled
│           2024-10-24T07:24:45Z	INFO	[secret] If your scanning is slow, please try '--scanners vuln' to
│           disable secret scanning
│           2024-10-24T07:24:45Z	INFO	[secret] Please see also
│           https://aquasecurity.github.io/trivy/v0.56/docs/scanner/secret#recommendation for faster secret
│           detection
│           2024-10-24T07:25:02Z	INFO	[python] License acquired from METADATA classifiers may be subject to
│           additional terms	name="PyGObject" version="3.48.2"
│           additional terms	name="dbus-python" version="1.3.2"
│           additional terms	name="distro" version="1.9.0"
│           2024-10-24T07:25:02Z	INFO	[javadb] Downloading Java DB...
│           2024-10-24T07:25:02Z	INFO	[javadb] Downloading
│           artifact...	repo="ghcr.io/aquasecurity/trivy-java-db:1"
│           2024-10-24T07:25:03Z	ERROR	[javadb] Failed to download
│           artifact	repo="ghcr.io/aquasecurity/trivy-java-db:1" err="OCI repository error: 1 error
│           occurred:\n\t* GET https://ghcr.io/v2/aquasecurity/trivy-java-db/manifests/1: TOOMANYREQUESTS:
│           retry-after: 409.483µs, allowed: 44000/minute\n\n"
│           2024-10-24T07:25:03Z	FATAL	Fatal error	image scan error: scan error: scan failed: failed analysis:
│           analyze error: pipeline error: failed to analyze layer
│           (sha256:de92c912de09d845e8718ad62aefec2f2a519bf6fc9e855b8886008bcbee3664): post analysis error:
│           post analysis error: Unable to initialize the Java DB: Java DB update failed: OCI artifact error:
│           failed to download Java DB: failed to download artifact from any source 
├ exitcode: 1 
╰ cmd     : docker run --pull always --rm  aquasec/trivy -f json  image nmaguiar/d3k:latest 
````
