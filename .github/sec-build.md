````yaml
╭ stdout   
├ stderr  : [vuln] Vulnerability scanning is enabled
│           2025-08-06T07:31:07Z	INFO	[secret] Secret scanning is enabled
│           2025-08-06T07:31:07Z	INFO	[secret] If your scanning is slow, please try '--scanners vuln' to
│           disable secret scanning
│           2025-08-06T07:31:07Z	INFO	[secret] Please see also
│           https://trivy.dev/v0.65/docs/scanner/secret#recommendation for faster secret detection
│           2025-08-06T07:31:07Z	FATAL	Fatal error	run error: image scan error: scan error: unable to
│           initialize a scan service: unable to initialize an image scan service: unable to find the specified
│            image "nmaguiar/d3k:build" in ["docker" "containerd" "podman" "remote"] 
├ exitcode: 1 
╰ cmd     : docker run --pull always --rm -v trivy-db:/root/.cache/trivy aquasec/trivy -f json  image
            nmaguiar/d3k:build 
````
