````yaml
╭ stdout   
├ stderr  : latest: Pulling from aquasec/trivy
│           43c4264eed91: Already exists
│           3096be5fd896: Pulling fs layer
│           fcffdfba928a: Pulling fs layer
│           51a9e5e8c7fc: Pulling fs layer
│           51a9e5e8c7fc: Download complete
│           3096be5fd896: Verifying Checksum
│           3096be5fd896: Download complete
│           3096be5fd896: Pull complete
│           fcffdfba928a: Verifying Checksum
│           fcffdfba928a: Download complete
│           fcffdfba928a: Pull complete
│           51a9e5e8c7fc: Pull complete
│           Digest: sha256:cbb2d9abe8880825a76a49b4a11fa1542e884e4831120668d505f3156a5a3a2f
│           Status: Downloaded newer image for aquasec/trivy:latest
│           2024-11-01T07:25:50Z	INFO	[vulndb] Need to update DB
│           2024-11-01T07:25:50Z	INFO	[vulndb] Downloading vulnerability DB...
│           2024-11-01T07:25:50Z	INFO	[vulndb] Downloading artifact...	repo="ghcr.io/aquasecurity/trivy-db:2"
│           54.96 MiB / 54.96 MiB [----------------------------------------------------------->] 100.00% ? p/s
│           ?54.96 MiB / 54.96 MiB [----------------------------------------------------------->] 100.00% ? p/s
│            ?54.96 MiB / 54.96 MiB [----------------------------------------------------------->] 100.00% ?
│           p/s ?54.96 MiB / 54.96 MiB [----------------------------------------------------------->] 100.00% ?
│            p/s ?54.96 MiB / 54.96 MiB [----------------------------------------------------------->] 100.00%
│           ? p/s ?54.96 MiB / 54.96 MiB [----------------------------------------------------------->] 100.00%
│            ? p/s ?54.96 MiB / 54.96 MiB [----------------------------------------------------------->]
│           100.00% ? p/s ?54.96 MiB / 54.96 MiB [----------------------------------------------------------->]
│            100.00% ? p/s ?54.96 MiB / 54.96 MiB
│           [----------------------------------------------------------->] 100.00% ? p/s ?54.96 MiB / 54.96 MiB
│            [----------------------------------------------------------->] 100.00% ? p/s ?54.96 MiB / 54.96
│           MiB [-------------------------------------------------] 100.00% 30.50 MiB p/s
│           2.0s2024-11-01T07:25:52Z	INFO	[vulndb] Artifact successfully
│           downloaded	repo="ghcr.io/aquasecurity/trivy-db:2"
│           2024-11-01T07:25:52Z	INFO	[vuln] Vulnerability scanning is enabled
│           2024-11-01T07:25:52Z	INFO	[secret] Secret scanning is enabled
│           2024-11-01T07:25:52Z	INFO	[secret] If your scanning is slow, please try '--scanners vuln' to
│           disable secret scanning
│           2024-11-01T07:25:52Z	INFO	[secret] Please see also
│           https://aquasecurity.github.io/trivy/v0.57/docs/scanner/secret#recommendation for faster secret
│           detection
│           2024-11-01T07:26:10Z	INFO	[python] License acquired from METADATA classifiers may be subject to
│           additional terms	name="PyGObject" version="3.48.2"
│           additional terms	name="dbus-python" version="1.3.2"
│           additional terms	name="distro" version="1.9.0"
│           2024-11-01T07:26:10Z	INFO	[javadb] Downloading Java DB...
│           2024-11-01T07:26:10Z	INFO	[javadb] Downloading
│           artifact...	repo="ghcr.io/aquasecurity/trivy-java-db:1"
│           2024-11-01T07:26:10Z	ERROR	[javadb] Failed to download
│           artifact	repo="ghcr.io/aquasecurity/trivy-java-db:1" err="oci download error: failed to fetch the
│           layer: GET
│           https://ghcr.io/v2/aquasecurity/trivy-java-db/blobs/sha256:b25fa06ba9dcc5693820941ec2253f3fadd77645
│           4feace20a5d132d181bd5e3b: TOOMANYREQUESTS: retry-after: 247.478µs, allowed: 44000/minute"
│           2024-11-01T07:26:10Z	FATAL	Fatal error	image scan error: scan error: scan failed: failed analysis:
│           analyze error: pipeline error: failed to analyze layer
│           (sha256:de92c912de09d845e8718ad62aefec2f2a519bf6fc9e855b8886008bcbee3664): post analysis error:
│           post analysis error: Unable to initialize the Java DB: Java DB update failed: OCI artifact error:
│           failed to download Java DB: failed to download artifact from any source: 1 error occurred:
│           	* oci download error: failed to fetch the layer: GET
│           4feace20a5d132d181bd5e3b: TOOMANYREQUESTS: retry-after: 247.478µs, allowed: 44000/minute
│            
├ exitcode: 1 
╰ cmd     : docker run --pull always --rm -v trivy-db:/root/.cache/trivy aquasec/trivy -f json  image
            nmaguiar/d3k:latest 
````
