```yaml





├ [5]  ╭ Target         : usr/bin/dockerd 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-10722 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-xhgw-qwwf-pg32
│                        │     │                  
│                        │     ├ PkgID           : github.com/cilium/ebpf@v0.17.3 
│                        │     ├ PkgName         : github.com/cilium/ebpf 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/cilium/ebpf@v0.17.3 
│                        │     │                  ╰ UID : d94ae679629925e7 
│                        │     ├ InstalledVersion: v0.17.3 
│                        │     ├ FixedVersion    : 0.22.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-10722 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d7521682ce2263a60fe2ab5a5127a43fa5468c895b07fa749616f
│                        │     │                   0b0d8204292 
│                        │     ├ Title           : github.com/cilium/ebpf: Cilium ebpf: Denial of Service via
│                        │     │                   integer overflow 
│                        │     ├ Description     : A vulnerability has been found in cilium ebpf up to 0.21.0.
│                        │     │                   This affects the function loadRawSpec of the file btf/btf.go
│                        │     │                    of the component
│                        │     │                   LoadCollectionSpec/LoadCollectionSpecFromReader. Such
│                        │     │                   manipulation of the argument offset leads to integer
│                        │     │                   overflow. The attack can only be performed from a local
│                        │     │                   environment. The exploit has been disclosed to the public
│                        │     │                   and may be used. The name of the patch is
│                        │     │                   533dfc82fd228bfadf42ea7180c39de7d9af47fa. A patch should be
│                        │     │                   applied to remediate this issue. 
│                        │     ├ Severity        : LOW 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-189
│                        │     │                  CWE-190
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ amazon: 2 
│                        │     │                  ├ ghsa  : 1 
│                        │     │                  ├ nvd   : 2 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector : CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │     │                  │        │            N/A:L 
│                        │     │                  │        ├ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:N/
│                        │     │                  │        │            VI:N/VA:L/SC:N/SI:N/SA:N/E:P 
│                        │     │                  │        ├ V3Score  : 3.3 
│                        │     │                  │        ╰ V40Score : 1.9 
│                        │     │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 5.5 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 5.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-10722        
│                        │     │                  https://gist.github.com/thesmartshadow/256bff0f8042c584f993ac
│                        │     │                  e89074a815                                                   
│                        │     │                  https://github.com/cilium/ebpf                               
│                        │     │                                                                               
│                        │     │                  https://github.com/cilium/ebpf/                              
│                        │     │                                                                               
│                        │     │                  https://github.com/cilium/ebpf/commit/533dfc82fd228bfadf42ea7
│                        │     │                  180c39de7d9af47fa                                            
│                        │     │                  https://github.com/cilium/ebpf/issues/2019                   
│                        │     │                                                                               
│                        │     │                  https://github.com/cilium/ebpf/pull/2021                     
│                        │     │                                                                               
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-10722              
│                        │     │                                                                               
│                        │     │                  https://vuldb.com/cve/CVE-2026-10722                         
│                        │     │                                                                               
│                        │     │                  https://vuldb.com/submit/818291                              
│                        │     │                                                                               
│                        │     │                  https://vuldb.com/vuln/368091                                
│                        │     │                                                                               
│                        │     │                  https://vuldb.com/vuln/368091/cti                            
│                        │     │                                                                               
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-10722              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-06-03T13:16:19.15Z 
│                        │     ╰ LastModifiedDate: 2026-07-22T19:10:00.12Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-53495 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-7jxh-36q5-gcqv
│                        │     │                  
│                        │     ├ PkgID           : github.com/containerd/containerd/v2@v2.3.4 
│                        │     ├ PkgName         : github.com/containerd/containerd/v2 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.3.4 
│                        │     │                  ╰ UID : 663099d219e73748 
│                        │     ├ InstalledVersion: v2.3.4 
│                        │     ├ FixedVersion    : 2.0.12, 2.2.8, 2.3.5 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53495 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:fab545b4eabeb109c5953b88c969c5ae2dd0b0a97cfe5272602c1
│                        │     │                   2c04f7e109a 
│                        │     ├ Title           : github.com/containerd/containerd: containerd: Denial of
│                        │     │                   Service via CRI ExecSync goroutine leak 
│                        │     ├ Description     : containerd is an open-source container runtime. Prior to
│                        │     │                   1.7.35, 2.0.12, 2.2.8, and 2.3.5, containerd on Linux with
│                        │     │                   the CRI plugin enabled can indefinitely block the
│                        │     │                   drainExecSyncIO goroutine in
│                        │     │                   internal/cri/server/container_execsync.go when CRI ExecSync
│                        │     │                   is used by exec probes or lifecycle hooks that launch
│                        │     │                   long-lived background child processes retaining standard
│                        │     │                   input and output pipes. The input and output drain phase has
│                        │     │                    no default timeout and did not stop when the request
│                        │     │                   context was canceled, so repeated ExecSync invocations can
│                        │     │                   accumulate blocked goroutines and host memory. The resulting
│                        │     │                    resource exhaustion can cause the OOM killer to terminate
│                        │     │                   containerd, leaving the container runtime unavailable until
│                        │     │                   restart. Deployments not using containerd's CRI
│                        │     │                   implementation and containers not running on Linux are not
│                        │     │                   affected. This issue is fixed in versions 1.7.35, 2.0.12,
│                        │     │                   2.2.8, and 2.3.5. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-400
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ ghsa  : 2 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:N/
│                        │     │                  │        │            VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │     │                  │        ╰ V40Score : 6.8 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 5.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-53495        
│                        │     │                  https://github.com/containerd/containerd                     
│                        │     │                  https://github.com/containerd/containerd/commit/22ccf4314d1fe
│                        │     │                  0834f8e28f10d37d5305ef9880c                                  
│                        │     │                  https://github.com/containerd/containerd/commit/5a2a3a759b0d2
│                        │     │                  ad8c821b33c3afc20890daf6d81                                  
│                        │     │                  https://github.com/containerd/containerd/commit/9ec55f024041d
│                        │     │                  0641f6d79841e45c8781141ddaa                                  
│                        │     │                  https://github.com/containerd/containerd/commit/eebea8c4c912f
│                        │     │                  44b656c8295c9e6607a19b76650                                  
│                        │     │                  https://github.com/containerd/containerd/commit/ff39a972369e2
│                        │     │                  f12fae561a58d658bbf8f2bc318                                  
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v1.7.35
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.0.12
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.2.8 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.3.5 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/security/advisories/
│                        │     │                  GHSA-7jxh-36q5-gcqv                                          
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-53495              
│                        │     │                                                                               
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-53495              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-14T18:17:51.053Z 
│                        │     ╰ LastModifiedDate: 2026-09-14T18:17:51.053Z 
│                        ╰ [2] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.56.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.56.0 
│                              │                  ╰ UID : b3156ebc9dec5b51 
│                              ├ InstalledVersion: v0.56.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                              │                  │         6f08562480eae743d4d8 
│                              │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                              │                            5c4003a8b390d4d4b2c2 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:adde42f734bf55ecbfb5d0b9ea492c1069e2a1b8c0b26c9ac4e51
│                              │                   f76f7be946d 
│                              ├ Title           : The golang.org/x/crypto/openpgp package is unmaintained,
│                              │                   unsafe by design, and has known security issues 
│                              ├ Description     : The golang.org/x/crypto/openpgp package is unsafe by design,
│                              │                    has numerous known security issues, is not maintained, and
│                              │                   should not be used.
│                              │                   
│                              │                   If you are required to interoperate with OpenPGP systems and
│                              │                    need a maintained package, consider
│                              │                   github.com/ProtonMail/go-crypto/openpgp which is a
│                              │                   maintained fork that aims to be a drop-in replacement for
│                              │                   this package. 
│                              ├ Severity        : UNKNOWN 
│                              ╰ References                                           
│                                                 ────────────────────────────────────
│                                                 https://go.dev/issue/44226          
│                                                 https://pkg.go.dev/vuln/GO-2026-5932
│                                                 
├ [6]  ╭ Target         : usr/bin/helm 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-56855 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-6355
│                        │     │                  
│                        │     ├ PkgID           : golang.org/x/crypto@v0.55.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.55.0 
│                        │     │                  ╰ UID : fe38925039e4992f 
│                        │     ├ InstalledVersion: v0.55.0 
│                        │     ├ FixedVersion    : 0.56.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:c202777a77a20e5b1dae5dd97c949995eab705816e0a0c72cf869
│                        │     │                   95722482965 
│                        │     ├ Title           : golang.org/x/crypto/ssh: golang.org/x/crypto/ssh: Denial of
│                        │     │                   Service via crafted messages 
│                        │     ├ Description     : Previously, after a channel has been established, a
│                        │     │                   malicious peer could send crafted messages that would
│                        │     │                   deadlock the entire connection. Now, we handle all RFC 4254
│                        │     │                   channel messages; global requests are handled explicitly.
│                        │     │                   Then, treat all other messages as a protocol error and tear
│                        │     │                   the connection down instead of buffering and blocking. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ VendorSeverity   ─ redhat: 2 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References                                                                
│                        │     │                  ─────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56855    
│                        │     │                  https://go.dev/cl/826524                                 
│                        │     │                  https://go.dev/issue/81317                               
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56855          
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6355                     
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-56855          
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-02T20:17:36.397Z 
│                        │     ╰ LastModifiedDate: 2026-09-04T16:34:56.823Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-78662 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-6354
│                        │     │                  
│                        │     ├ PkgID           : golang.org/x/crypto@v0.55.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.55.0 
│                        │     │                  ╰ UID : fe38925039e4992f 
│                        │     ├ InstalledVersion: v0.55.0 
│                        │     ├ FixedVersion    : 0.56.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:61e9196cdfdb452db48457b201abd8e862241a7499a625b1a5e79
│                        │     │                   800faea95da 
│                        │     ├ Title           : golang.org/x/crypto/ssh: golang.org/x/crypto/ssh: Denial of
│                        │     │                   Service via channel request flooding 
│                        │     ├ Description     : Previously, a channel registered in the mux's chanList is
│                        │     │                   not usable until it is established. A malicious peer was
│                        │     │                   able flood the channel's incomingRequests, deadlocking the
│                        │     │                   entire connection. Now, we add an atomic established state,
│                        │     │                   set when a channel becomes usable. Until such a time,
│                        │     │                   handlePacket drops every packet other than the open
│                        │     │                   confirmation/failure, without blocking and without tearing
│                        │     │                   down the connection. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ VendorSeverity   ─ redhat: 2 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References                                                                
│                        │     │                  ─────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-78662    
│                        │     │                  https://go.dev/cl/826504                                 
│                        │     │                  https://go.dev/issue/81316                               
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-78662          
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6354                     
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-78662          
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-02T20:17:37.167Z 
│                        │     ╰ LastModifiedDate: 2026-09-04T16:33:34.057Z 
│                        ╰ [2] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.55.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.55.0 
│                              │                  ╰ UID : fe38925039e4992f 
│                              ├ InstalledVersion: v0.55.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                              │                  │         6f08562480eae743d4d8 
│                              │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                              │                            5c4003a8b390d4d4b2c2 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:1f99c95976b052a13ac021f5bca3318903fbc19d53313f0513209
│                              │                   67d90b3bc3f 
│                              ├ Title           : The golang.org/x/crypto/openpgp package is unmaintained,
│                              │                   unsafe by design, and has known security issues 
│                              ├ Description     : The golang.org/x/crypto/openpgp package is unsafe by design,
│                              │                    has numerous known security issues, is not maintained, and
│                              │                   should not be used.
│                              │                   
│                              │                   If you are required to interoperate with OpenPGP systems and
│                              │                    need a maintained package, consider
│                              │                   github.com/ProtonMail/go-crypto/openpgp which is a
│                              │                   maintained fork that aims to be a drop-in replacement for
│                              │                   this package. 
│                              ├ Severity        : UNKNOWN 
│                              ╰ References                                           
│                                                 ────────────────────────────────────
│                                                 https://go.dev/issue/44226          
│                                                 https://pkg.go.dev/vuln/GO-2026-5932
│                                                 
├ [7]  ╭ Target  : usr/bin/kubectl 
│      ├ Class   : lang-pkgs 
│      ├ Type    : gobinary 
│      ╰ Packages 
├ [8]  ╭ Target         : usr/bin/pebble 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-33818 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-5972
│                        │     │                  
│                        │     ├ PkgID           : stdlib@v1.26.5 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │     │                  ╰ UID : 26d7064c5de1c97a 
│                        │     ├ InstalledVersion: v1.26.5 
│                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:9c1885aceaea2b26a2277844473cc03e896f936a232f263e6d8ad
│                        │     │                   4e7f2f0cc45 
│                        │     ├ Title           : encoding/asn1: golang: Go encoding/asn1: Denial of Service
│                        │     │                   via excessive recursion in Unmarshal 
│                        │     ├ Description     : Enforce a recursion limit in Unmarshal to prevent stack
│                        │     │                   exhaustion when parsing deeply-nested, recursive
│                        │     │                   structures. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-400
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 3 
│                        │     │                  ├ bitnami    : 3 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ photon     : 3 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:66364             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-33818        
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-66364.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:66364                
│                        │     │                  https://go.dev/cl/814980                                     
│                        │     │                  https://go.dev/issue/80405                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-33818.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-67161-0.html       
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-33818              
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-5972                         
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-33818              
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-08-13T22:17:19.84Z 
│                        │     ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-39821 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-5026
│                        │     │                  
│                        │     ├ PkgID           : stdlib@v1.26.5 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │     │                  ╰ UID : 26d7064c5de1c97a 
│                        │     ├ InstalledVersion: v1.26.5 
│                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:78b62df8f4e4e6f7d2f37d9ca376e41a66d32036ecf7d8b8fca84
│                        │     │                   58187a79c6b 
│                        │     ├ Title           : golang.org/x/net/idna: golang: net/http:
│                        │     │                   golang.org/x/net/idna: Privilege escalation via incorrect
│                        │     │                   Punycode label processing 
│                        │     ├ Description     : The ToASCII and ToUnicode functions incorrectly accept
│                        │     │                   Punycode-encoded labels that decode to an ASCII-only label.
│                        │     │                   For example, ToUnicode("xn--example-.com") incorrectly
│                        │     │                   returns the name "example.com" rather than an error. This
│                        │     │                   behavior can lead to privilege escalation in programs using
│                        │     │                   the idna package. For example, a program which performs
│                        │     │                   privilege checks on the ASCII hostname may reject
│                        │     │                   "example.com" but permit "xn--example-.com". If that program
│                        │     │                    subsequently converts the ASCII hostname to Unicode, it
│                        │     │                   will inadvertently permits access to the Unicode name
│                        │     │                   "example.com". 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs                   
│                        │     │                  ────────
│                        │     │                  CWE-1289
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 3 
│                        │     │                  ├ azure      : 4 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ├ rocky      : 3 
│                        │     │                  ╰ ubuntu     : 2 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:H
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 8.2 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:23262             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:23264             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:26546             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:26547             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:30650             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:30651             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:30853             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:30854             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:30855             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:33155             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:33160             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:33163             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:33173             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:33183             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:33524             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:33531             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:34342             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:34357             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:34359             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:34364             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:34789             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:35826             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:35827             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:35828             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:35829             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:35830             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:35831             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:35993             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:35994             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:36105             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:36167             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:36207             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:36648             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:36651             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:36796             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:36797             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:36808             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:36820             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:36883             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:37387             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:37435             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:37436             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:38995             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:39005             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:39573             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:39879             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:40118             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:40262             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:40945             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:41019             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:41030             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:41031             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:41036             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:41055             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:41066             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:41928             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:41930             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42043             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42047             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42048             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42049             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42050             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42051             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42078             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42079             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42080             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42082             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42132             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42142             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42146             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42150             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42151             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42240             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42644             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42796             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42852             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:43038             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:43052             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:43692             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:44622             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:44624             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:46395             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:47149             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:47735             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:47737             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:47952             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:49702             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:49712             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:50300             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:50843             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:51033             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:51112             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:51187             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:51194             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:51341             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:52826             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:53374             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:53412             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:53413             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:53415             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:53530             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54191             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54274             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54283             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54284             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54285             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54286             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54287             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54395             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54401             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54435             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54441             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54531             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54580             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:54757             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:56143             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:56223             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:56340             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:56431             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:57194             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:57541             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:57649             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:57845             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:59546             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:59549             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:59562             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:60315             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:60354             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:60387             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:60520             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:61245             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:61253             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:62549             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:63134             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65126             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65153             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65359             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65534             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65886             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:66016             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:66022             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:66350             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:66432             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:67149             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:67159             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:67160             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:67287             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:67319             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:67517             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-39821        
│                        │     │                  https://bugzilla.redhat.com/2467809                          
│                        │     │                  https://bugzilla.redhat.com/2467820                          
│                        │     │                  https://bugzilla.redhat.com/2480756                          
│                        │     │                  https://bugzilla.redhat.com/2484204                          
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32280
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32281
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33811
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:65886                
│                        │     │                  https://github.com/golang/go/issues/78760                    
│                        │     │                  https://go.dev/cl/767220                                     
│                        │     │                  https://go.dev/issue/78760                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://groups.google.com/g/golang-announce/c/iI-mYSI0lu8    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-39821.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-66432-0.html       
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-39821              
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-5026                         
│                        │     │                  https://security.access.redhat.com/data/csaf/v2/vex/2026/cve-
│                        │     │                  2026-39821.json                                              
│                        │     │                  https://ubuntu.com/security/notices/USN-8416-1               
│                        │     │                                                                               
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-39821              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
│                        │     ╰ LastModifiedDate: 2026-09-15T12:17:34.803Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-46600 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-5942
│                        │     │                  
│                        │     ├ PkgID           : stdlib@v1.26.5 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │     │                  ╰ UID : 26d7064c5de1c97a 
│                        │     ├ InstalledVersion: v1.26.5 
│                        │     ├ FixedVersion    : 1.26.6, 1.27.0-rc.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:096990c70153d43ea536cf1c3c253a02a9165f8a725f783b4e63c
│                        │     │                   d9c745f3e7c 
│                        │     ├ Title           : golang.org/x/net/dns/dnsmessage:
│                        │     │                   golang.org/x/net/dns/dnsmessage: Denial of Service via
│                        │     │                   invalid DNS record parsing 
│                        │     ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │     │                   of a parameter value overflows the message buffer. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-125
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ azure  : 2 
│                        │     │                  ├ bitnami: 3 
│                        │     │                  ╰ redhat : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References                                                                
│                        │     │                  ─────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-46600    
│                        │     │                  https://go.dev/cl/786345                                 
│                        │     │                  https://go.dev/issue/79795                               
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-46600          
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-5942                     
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-46600          
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
│                        │     ╰ LastModifiedDate: 2026-08-14T16:16:55.673Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-56853 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-6089
│                        │     │                  
│                        │     ├ PkgID           : stdlib@v1.26.5 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │     │                  ╰ UID : 26d7064c5de1c97a 
│                        │     ├ InstalledVersion: v1.26.5 
│                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:d377600a66faa0ff1dc837c696f095dcc17fb7a42c6489d21187a
│                        │     │                   5a47b4bd944 
│                        │     ├ Title           : net/http: golang: Go net/http: Unencrypted HTTP/2
│                        │     │                   connections vulnerable to Denial of Service 
│                        │     ├ Description     : When a server is configured to support unencrypted HTTP/2,
│                        │     │                   it reads a few bytes from each new connection to see if they
│                        │     │                    contain the HTTP/2 client preface. ReadHeaderTimeout is
│                        │     │                   unexpectedly not being applied when doing this. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 3 
│                        │     │                  ├ bitnami    : 3 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ photon     : 3 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65153             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65886             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56853        
│                        │     │                  https://bugzilla.redhat.com/2467809                          
│                        │     │                  https://bugzilla.redhat.com/2467820                          
│                        │     │                  https://bugzilla.redhat.com/2480756                          
│                        │     │                  https://bugzilla.redhat.com/2484204                          
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32280
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32281
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33811
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:65886                
│                        │     │                  https://go.dev/cl/795540                                     
│                        │     │                  https://go.dev/issue/80205                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56853.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-65895-0.html       
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56853              
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6089                         
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-56853              
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-08-13T22:17:22.093Z 
│                        │     ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-56858 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-6091
│                        │     │                  
│                        │     ├ PkgID           : stdlib@v1.26.5 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │     │                  ╰ UID : 26d7064c5de1c97a 
│                        │     ├ InstalledVersion: v1.26.5 
│                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:f08992caf420a31d46bcc934acc023c5fa49ac7243facb9279fb0
│                        │     │                   3fb2244123a 
│                        │     ├ Title           : html/template: golang: Go html/template: Cross-Site
│                        │     │                   Scripting via pathological input 
│                        │     ├ Description     : Previously, pathological inputs could close an unescaped '/'
│                        │     │                    early, allowing for attack-controlled data to inject
│                        │     │                   arbitrary content, potentially leading to XSS. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs                 
│                        │     │                  ──────
│                        │     │                  CWE-79
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 3 
│                        │     │                  ├ bitnami    : 2 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ photon     : 2 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                        │     │                  │         │           L/A:N 
│                        │     │                  │         ╰ V3Score : 6.1 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │     │                            │           H/A:N 
│                        │     │                            ╰ V3Score : 8.1 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65153             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65886             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56858        
│                        │     │                  https://bugzilla.redhat.com/2467809                          
│                        │     │                  https://bugzilla.redhat.com/2467820                          
│                        │     │                  https://bugzilla.redhat.com/2480756                          
│                        │     │                  https://bugzilla.redhat.com/2484204                          
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32280
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32281
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33811
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:65886                
│                        │     │                  https://go.dev/cl/807100                                     
│                        │     │                  https://go.dev/issue/80435                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56858.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-65895-0.html       
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56858              
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6091                         
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-56858              
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-08-13T22:17:22.207Z 
│                        │     ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-56859 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-6088
│                        │     │                  
│                        │     ├ PkgID           : stdlib@v1.26.5 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │     │                  ╰ UID : 26d7064c5de1c97a 
│                        │     ├ InstalledVersion: v1.26.5 
│                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:74acdbd0ef561499ce13c08fb83415131f3efef5ae87fb03df22c
│                        │     │                   689cee0ab51 
│                        │     ├ Title           : encoding/xml: golang: Go: Denial of Service via XML decoding
│                        │     │                    recursion depth issue 
│                        │     ├ Description     : Previously, DecodeElement would reset the depth counter
│                        │     │                   causing it to never fire; this could lead to stack
│                        │     │                   exhaustion. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 3 
│                        │     │                  ├ bitnami    : 3 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ photon     : 3 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65153             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65886             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56859        
│                        │     │                  https://bugzilla.redhat.com/2467809                          
│                        │     │                  https://bugzilla.redhat.com/2467820                          
│                        │     │                  https://bugzilla.redhat.com/2480756                          
│                        │     │                  https://bugzilla.redhat.com/2484204                          
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32280
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32281
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33811
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:65886                
│                        │     │                  https://go.dev/cl/803320                                     
│                        │     │                  https://go.dev/issue/80481                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-65895-0.html       
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56859              
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6088                         
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-56859              
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-08-13T22:17:22.32Z 
│                        │     ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-56860 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-6218
│                        │     │                  
│                        │     ├ PkgID           : stdlib@v1.26.5 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │     │                  ╰ UID : 26d7064c5de1c97a 
│                        │     ├ InstalledVersion: v1.26.5 
│                        │     ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:4b83d7cacf80bccb3e23a5a82aff2842d57783a86ace6ef0e800c
│                        │     │                   4fb2516dc48 
│                        │     ├ Title           : net/url: golang: golang net/url: Denial of Service from
│                        │     │                   quadratic complexity in path resolution 
│                        │     ├ Description     : Previously, resolving relative paths containing parent
│                        │     │                   directory ('..') segments performed string conversions and
│                        │     │                   buffer rewrites on each step, resulting in quadratic time
│                        │     │                   complexity and high memory allocation overhead. Now, path
│                        │     │                   resolution operates on a byte buffer using index-based
│                        │     │                   backtracking for '..' segments, eliminating the quadratic
│                        │     │                   time complexity and significantly reducing memory
│                        │     │                   allocations. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-407
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 3 
│                        │     │                  ├ bitnami    : 2 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ photon     : 2 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 5.9 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:66364             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56860        
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-66364.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:66364                
│                        │     │                  https://go.dev/cl/803681                                     
│                        │     │                  https://go.dev/issue/80494                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56860.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-67161-0.html       
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56860              
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6218                         
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-56860              
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-08-13T22:17:22.44Z 
│                        │     ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ╰ [7] ╭ VulnerabilityID : CVE-2026-56862 
│                              ├ VendorIDs                    
│                              │                  ────────────
│                              │                  GO-2026-6090
│                              │                  
│                              ├ PkgID           : stdlib@v1.26.5 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                              │                  ╰ UID : 26d7064c5de1c97a 
│                              ├ InstalledVersion: v1.26.5 
│                              ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                              │                  │         6f08562480eae743d4d8 
│                              │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                              │                            5c4003a8b390d4d4b2c2 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:17ef1e05e1ae2f0aa9f43440affa5ba2a7e68c4d18643a31f35e4
│                              │                   720f8eeacbb 
│                              ├ Title           : crypto/tls: golang: Golang crypto/tls: Denial of Service via
│                              │                    indefinite KeyUpdate messages 
│                              ├ Description     : Handshake messages, such as KeyUpdate, are always considered
│                              │                    as state-advancing, regardless of whether a handshake has
│                              │                   been completed or not. As a result, a malicious client can
│                              │                   keep sending KeyUpdate messages to force the server to keep
│                              │                   performing key derivation operations indefinitely. 
│                              ├ Severity        : HIGH 
│                              ├ CweIDs                  
│                              │                  ───────
│                              │                  CWE-770
│                              │                  
│                              ├ VendorSeverity   ╭ alma       : 3 
│                              │                  ├ amazon     : 3 
│                              │                  ├ bitnami    : 3 
│                              │                  ├ oracle-oval: 3 
│                              │                  ├ photon     : 3 
│                              │                  ├ redhat     : 3 
│                              │                  ╰ rocky      : 3 
│                              ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                              │                  │         │           N/A:H 
│                              │                  │         ╰ V3Score : 7.5 
│                              │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                              │                            │           N/A:H 
│                              │                            ╰ V3Score : 7.5 
│                              ├ References                                                                    
│                              │                  ─────────────────────────────────────────────────────────────
│                              │                  https://access.redhat.com/errata/RHSA-2026:66364             
│                              │                  https://access.redhat.com/security/cve/CVE-2026-56862        
│                              │                  https://bugzilla.redhat.com/2515815                          
│                              │                  https://bugzilla.redhat.com/2515820                          
│                              │                  https://bugzilla.redhat.com/2515839                          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                              │                  https://creativecommons.org/licenses/by/4.0/                 
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                              │                  https://errata.almalinux.org/9/ALSA-2026-66364.html          
│                              │                  https://errata.rockylinux.org/RLSA-2026:66364                
│                              │                  https://go.dev/cl/804261                                     
│                              │                  https://go.dev/issue/80528                                   
│                              │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                              │                  https://linux.oracle.com/cve/CVE-2026-56862.html             
│                              │                  https://linux.oracle.com/errata/ELSA-2026-67161-0.html       
│                              │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56862              
│                              │                  https://pkg.go.dev/vuln/GO-2026-6090                         
│                              │                  https://www.cve.org/CVERecord?id=CVE-2026-56862              
│                              │                  
│                              ├ PublishedDate   : 2026-08-13T22:17:22.55Z 
│                              ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
├ [9]  ╭ Target         : usr/bin/rootlesskit 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-56854 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-6303
│                        │     │                  
│                        │     ├ PkgID           : golang.org/x/crypto@v0.52.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.52.0 
│                        │     │                  ╰ UID : c6746a665642ce00 
│                        │     ├ InstalledVersion: v0.52.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56854 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:f2bae0a18f5fe270a5dd8fb9a38adec2a98409fec0719199d08d0
│                        │     │                   897b09bc93b 
│                        │     ├ Title           : golang.org/x/crypto/ssh: golang.org/x/crypto/ssh:
│                        │     │                   Authentication bypass due to unenforced source-address
│                        │     │                   restrictions 
│                        │     ├ Description     : The source-address critical option in the Permissions
│                        │     │                   returned by an authentication callback was only enforced for
│                        │     │                    the PublicKeyCallback and VerifiedPublicKeyCallback paths,
│                        │     │                   extending the fix for CVE-2026-46595. Permissions returned
│                        │     │                   by the PasswordCallback, KeyboardInteractiveCallback,
│                        │     │                   NoClientAuthCallback, and GSSAPIWithMICConfig.AllowLogin
│                        │     │                   callbacks were not validated against the client's remote
│                        │     │                   address, so a source-address restriction set by those
│                        │     │                   callbacks was silently ignored. The check is now applied to
│                        │     │                   the Permissions returned by any authentication callback. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-863
│                        │     │                  
│                        │     ├ VendorSeverity   ─ redhat: 3 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:H
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 6.8 
│                        │     ├ References                                                            
│                        │     │                  ─────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56854
│                        │     │                  https://go.dev/cl/797040                             
│                        │     │                  https://go.dev/issue/80213                           
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56854      
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6303                 
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-56854      
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-08-28T16:18:17.607Z 
│                        │     ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-56855 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-6355
│                        │     │                  
│                        │     ├ PkgID           : golang.org/x/crypto@v0.52.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.52.0 
│                        │     │                  ╰ UID : c6746a665642ce00 
│                        │     ├ InstalledVersion: v0.52.0 
│                        │     ├ FixedVersion    : 0.56.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:af073f2eb6b31c86782c2e211eed970d79f31ec287a6a2dbccf1c
│                        │     │                   525173dab6d 
│                        │     ├ Title           : golang.org/x/crypto/ssh: golang.org/x/crypto/ssh: Denial of
│                        │     │                   Service via crafted messages 
│                        │     ├ Description     : Previously, after a channel has been established, a
│                        │     │                   malicious peer could send crafted messages that would
│                        │     │                   deadlock the entire connection. Now, we handle all RFC 4254
│                        │     │                   channel messages; global requests are handled explicitly.
│                        │     │                   Then, treat all other messages as a protocol error and tear
│                        │     │                   the connection down instead of buffering and blocking. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ VendorSeverity   ─ redhat: 2 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References                                                                
│                        │     │                  ─────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56855    
│                        │     │                  https://go.dev/cl/826524                                 
│                        │     │                  https://go.dev/issue/81317                               
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56855          
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6355                     
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-56855          
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-02T20:17:36.397Z 
│                        │     ╰ LastModifiedDate: 2026-09-04T16:34:56.823Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-78662 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-6354
│                        │     │                  
│                        │     ├ PkgID           : golang.org/x/crypto@v0.52.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.52.0 
│                        │     │                  ╰ UID : c6746a665642ce00 
│                        │     ├ InstalledVersion: v0.52.0 
│                        │     ├ FixedVersion    : 0.56.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:06beb938531fac6e76e3961df0e080dac8b12d0c630c9da7d5f9f
│                        │     │                   b3707709970 
│                        │     ├ Title           : golang.org/x/crypto/ssh: golang.org/x/crypto/ssh: Denial of
│                        │     │                   Service via channel request flooding 
│                        │     ├ Description     : Previously, a channel registered in the mux's chanList is
│                        │     │                   not usable until it is established. A malicious peer was
│                        │     │                   able flood the channel's incomingRequests, deadlocking the
│                        │     │                   entire connection. Now, we add an atomic established state,
│                        │     │                   set when a channel becomes usable. Until such a time,
│                        │     │                   handlePacket drops every packet other than the open
│                        │     │                   confirmation/failure, without blocking and without tearing
│                        │     │                   down the connection. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ VendorSeverity   ─ redhat: 2 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References                                                                
│                        │     │                  ─────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-78662    
│                        │     │                  https://go.dev/cl/826504                                 
│                        │     │                  https://go.dev/issue/81316                               
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-78662          
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6354                     
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-78662          
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-02T20:17:37.167Z 
│                        │     ╰ LastModifiedDate: 2026-09-04T16:33:34.057Z 
│                        ├ [3] ╭ VulnerabilityID : GO-2026-5932 
│                        │     ├ PkgID           : golang.org/x/crypto@v0.52.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.52.0 
│                        │     │                  ╰ UID : c6746a665642ce00 
│                        │     ├ InstalledVersion: v0.52.0 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:bf864a0c3aafef6f559885b4830ca6e77938d1b1dcf73072bf753
│                        │     │                   639efa6377c 
│                        │     ├ Title           : The golang.org/x/crypto/openpgp package is unmaintained,
│                        │     │                   unsafe by design, and has known security issues 
│                        │     ├ Description     : The golang.org/x/crypto/openpgp package is unsafe by design,
│                        │     │                    has numerous known security issues, is not maintained, and
│                        │     │                   should not be used.
│                        │     │                   
│                        │     │                   If you are required to interoperate with OpenPGP systems and
│                        │     │                    need a maintained package, consider
│                        │     │                   github.com/ProtonMail/go-crypto/openpgp which is a
│                        │     │                   maintained fork that aims to be a drop-in replacement for
│                        │     │                   this package. 
│                        │     ├ Severity        : UNKNOWN 
│                        │     ╰ References                                           
│                        │                        ────────────────────────────────────
│                        │                        https://go.dev/issue/44226          
│                        │                        https://pkg.go.dev/vuln/GO-2026-5932
│                        │                        
│                        ╰ [4] ╭ VulnerabilityID : CVE-2026-46600 
│                              ├ VendorIDs                    
│                              │                  ────────────
│                              │                  GO-2026-5942
│                              │                  
│                              ├ PkgID           : golang.org/x/net@v0.55.0 
│                              ├ PkgName         : golang.org/x/net 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.55.0 
│                              │                  ╰ UID : 3630442c893130bf 
│                              ├ InstalledVersion: v0.55.0 
│                              ├ FixedVersion    : 0.56.0 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                              │                  │         6f08562480eae743d4d8 
│                              │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                              │                            5c4003a8b390d4d4b2c2 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:b1dfbbdea8e51a6acab7f6aa195934e7d44c6c464804324d09243
│                              │                   5aa7411d500 
│                              ├ Title           : golang.org/x/net/dns/dnsmessage:
│                              │                   golang.org/x/net/dns/dnsmessage: Denial of Service via
│                              │                   invalid DNS record parsing 
│                              ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                              │                   of a parameter value overflows the message buffer. 
│                              ├ Severity        : HIGH 
│                              ├ CweIDs                  
│                              │                  ───────
│                              │                  CWE-125
│                              │                  
│                              ├ VendorSeverity   ╭ azure  : 2 
│                              │                  ├ bitnami: 3 
│                              │                  ╰ redhat : 3 
│                              ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                              │                  │         │           N/A:H 
│                              │                  │         ╰ V3Score : 7.5 
│                              │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                              │                            │           N/A:H 
│                              │                            ╰ V3Score : 7.5 
│                              ├ References                                                                
│                              │                  ─────────────────────────────────────────────────────────
│                              │                  https://access.redhat.com/security/cve/CVE-2026-46600    
│                              │                  https://go.dev/cl/786345                                 
│                              │                  https://go.dev/issue/79795                               
│                              │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI
│                              │                  https://nvd.nist.gov/vuln/detail/CVE-2026-46600          
│                              │                  https://pkg.go.dev/vuln/GO-2026-5942                     
│                              │                  https://www.cve.org/CVERecord?id=CVE-2026-46600          
│                              │                  
│                              ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
│                              ╰ LastModifiedDate: 2026-08-14T16:16:55.673Z 
├ [10] ╭ Target         : usr/libexec/docker/cli-plugins/docker-buildx 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-53495 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-7jxh-36q5-gcqv
│                        │     │                  
│                        │     ├ PkgID           : github.com/containerd/containerd/v2@v2.3.4 
│                        │     ├ PkgName         : github.com/containerd/containerd/v2 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.3.4 
│                        │     │                  ╰ UID : 11eee4b4e346979a 
│                        │     ├ InstalledVersion: v2.3.4 
│                        │     ├ FixedVersion    : 2.0.12, 2.2.8, 2.3.5 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53495 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:4f826d45ca0f0e110e50458632f4ccc155443208ebdc8ec8a6e7a
│                        │     │                   f17ee6c21ee 
│                        │     ├ Title           : github.com/containerd/containerd: containerd: Denial of
│                        │     │                   Service via CRI ExecSync goroutine leak 
│                        │     ├ Description     : containerd is an open-source container runtime. Prior to
│                        │     │                   1.7.35, 2.0.12, 2.2.8, and 2.3.5, containerd on Linux with
│                        │     │                   the CRI plugin enabled can indefinitely block the
│                        │     │                   drainExecSyncIO goroutine in
│                        │     │                   internal/cri/server/container_execsync.go when CRI ExecSync
│                        │     │                   is used by exec probes or lifecycle hooks that launch
│                        │     │                   long-lived background child processes retaining standard
│                        │     │                   input and output pipes. The input and output drain phase has
│                        │     │                    no default timeout and did not stop when the request
│                        │     │                   context was canceled, so repeated ExecSync invocations can
│                        │     │                   accumulate blocked goroutines and host memory. The resulting
│                        │     │                    resource exhaustion can cause the OOM killer to terminate
│                        │     │                   containerd, leaving the container runtime unavailable until
│                        │     │                   restart. Deployments not using containerd's CRI
│                        │     │                   implementation and containers not running on Linux are not
│                        │     │                   affected. This issue is fixed in versions 1.7.35, 2.0.12,
│                        │     │                   2.2.8, and 2.3.5. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-400
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ ghsa  : 2 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:N/
│                        │     │                  │        │            VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │     │                  │        ╰ V40Score : 6.8 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 5.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-53495        
│                        │     │                  https://github.com/containerd/containerd                     
│                        │     │                  https://github.com/containerd/containerd/commit/22ccf4314d1fe
│                        │     │                  0834f8e28f10d37d5305ef9880c                                  
│                        │     │                  https://github.com/containerd/containerd/commit/5a2a3a759b0d2
│                        │     │                  ad8c821b33c3afc20890daf6d81                                  
│                        │     │                  https://github.com/containerd/containerd/commit/9ec55f024041d
│                        │     │                  0641f6d79841e45c8781141ddaa                                  
│                        │     │                  https://github.com/containerd/containerd/commit/eebea8c4c912f
│                        │     │                  44b656c8295c9e6607a19b76650                                  
│                        │     │                  https://github.com/containerd/containerd/commit/ff39a972369e2
│                        │     │                  f12fae561a58d658bbf8f2bc318                                  
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v1.7.35
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.0.12
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.2.8 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.3.5 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/security/advisories/
│                        │     │                  GHSA-7jxh-36q5-gcqv                                          
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-53495              
│                        │     │                                                                               
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-53495              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-14T18:17:51.053Z 
│                        │     ╰ LastModifiedDate: 2026-09-14T18:17:51.053Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-41567 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-x86f-5xw2-fm2r
│                        │     │                  
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:cb158cf6b0bc7c6537054a592d27538168411a2fde1dd15f44e81
│                        │     │                   a67e6a5f37b 
│                        │     ├ Title           : docker: Moby/Docker Engine: Arbitrary Code Execution via
│                        │     │                   malicious container image and compressed archive upload 
│                        │     ├ Description     : Moby is an open source container framework. In versions
│                        │     │                   prior to 29.5.1 and in moby/moby v2 prior to v2.0.0-beta.14,
│                        │     │                    when a compressed archive is uploaded to a container via
│                        │     │                   `PUT /containers/{id}/archive` or piped through `docker cp
│                        │     │                   -`, the daemon resolves decompression binaries (such as `xz`
│                        │     │                    or `unpigz`) from the container's filesystem rather than
│                        │     │                   the host's due to incorrect ordering of operations. A
│                        │     │                   malicious container image containing a trojanized
│                        │     │                   decompression binary can achieve arbitrary code execution
│                        │     │                   with full daemon privileges, including host root UID and
│                        │     │                   unrestricted capabilities, when a user uploads a compressed
│                        │     │                   (xz or gzip) archive into that container. This issue is
│                        │     │                   fixed in Docker Engine 29.5.1 and moby/moby v2.0.0-beta.14.
│                        │     │                   Workarounds include only running containers from trusted
│                        │     │                   images, using authorization plugins to restrict access to
│                        │     │                   the `PUT /containers/{id}/archive` endpoint, and avoiding
│                        │     │                   piping compressed archives into containers created from
│                        │     │                   untrusted images 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-427
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ ghsa  : 3 
│                        │     │                  ├ photon: 3 
│                        │     │                  ╰ redhat: 3 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:H
│                        │     │                  │        │           /A:N 
│                        │     │                  │        ╰ V3Score : 7.2 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:H
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 7.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:37387             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:41030             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:42852             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:44622             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:51057             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-41567        
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2485356          
│                        │     │                  https://github.com/moby/moby                                 
│                        │     │                  https://github.com/moby/moby/security/advisories/GHSA-x86f-5x
│                        │     │                  w2-fm2r                                                      
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-41567              
│                        │     │                                                                               
│                        │     │                  https://security.access.redhat.com/data/csaf/v2/vex/2026/cve-
│                        │     │                  2026-41567.json                                              
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-41567              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │     ╰ LastModifiedDate: 2026-09-09T13:19:53.313Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-rg2x-37c3-w2rh
│                        │     │                  
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:c9b6307eac2cb7fe28396a600129fda2b1c7e3bc8f62eb171a92f
│                        │     │                   1b71ac87d2d 
│                        │     ├ Title           : github.com/docker/docker: github.com/moby/moby: Moby
│                        │     │                   container framework: Host file overwrite via race condition
│                        │     │                   in docker cp mount setup 
│                        │     ├ Description     : Moby is an open source container framework. In Docker Engine
│                        │     │                    prior to version 29.5.1, Docker Daemon versions 28.5.2 and
│                        │     │                   prior, and Moby Daemon prior to version 2.0.0-beta.14, a
│                        │     │                   race condition during docker cp mount setup allows a
│                        │     │                   malicious container to redirect a bind mount target to an
│                        │     │                   arbitrary host path, potentially overwriting host files or
│                        │     │                   causing denial of service. This issue has been patched in
│                        │     │                   Docker Engine version 29.5.1 and Moby Daemon version
│                        │     │                   2.0.0-beta.14. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-61 
│                        │     │                  CWE-367
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ ghsa  : 3 
│                        │     │                  ├ nvd   : 3 
│                        │     │                  ├ photon: 3 
│                        │     │                  ╰ redhat: 3 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 7.2 
│                        │     │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 7.2 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 7.2 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-42306        
│                        │     │                  https://github.com/moby/moby                                 
│                        │     │                  https://github.com/moby/moby/security/advisories/GHSA-rg2x-37
│                        │     │                  c3-w2rh                                                      
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-42306              
│                        │     │                                                                               
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-42306              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-06-12T19:16:27.49Z 
│                        │     ╰ LastModifiedDate: 2026-06-17T10:47:39.96Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-33997 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-pxq6-2prw-chj9
│                        │     │                  
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:ba6724af1937ffd74e40667b532a2356a94f50a9d65e55b7ec7a4
│                        │     │                   1e6fed96660 
│                        │     ├ Title           : moby: docker: github.com/moby/moby: Moby: Privilege
│                        │     │                   validation bypass during plugin installation 
│                        │     ├ Description     : Moby is an open source container framework. Prior to version
│                        │     │                    29.3.1, a security vulnerability has been detected that
│                        │     │                   allows plugins privilege validation to be bypassed during
│                        │     │                   docker plugin install. Due to an error in the daemon's
│                        │     │                   privilege comparison logic, the daemon may incorrectly
│                        │     │                   accept a privilege set that differs from the one approved by
│                        │     │                    the user. Plugins that request exactly one privilege are
│                        │     │                   also affected, because no comparison is performed at all.
│                        │     │                   This issue has been patched in version 29.3.1. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-193
│                        │     │                  CWE-266
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ amazon: 2 
│                        │     │                  ├ ghsa  : 2 
│                        │     │                  ├ nvd   : 3 
│                        │     │                  ├ photon: 3 
│                        │     │                  ╰ redhat: 3 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H
│                        │     │                  │        │           /A:N 
│                        │     │                  │        ╰ V3Score : 6.8 
│                        │     │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H
│                        │     │                  │        │           /A:N 
│                        │     │                  │        ╰ V3Score : 8.1 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:H/UI:R/S:C/C:H/I:H
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 8.4 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:21769             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:22347             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:23345             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-33997        
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2453277          
│                        │     │                  https://docs.docker.com/engine/extend/legacy_plugins         
│                        │     │                  https://github.com/moby/moby                                 
│                        │     │                  https://github.com/moby/moby/commit/f4d6f25bf0c3fa12d4968320a
│                        │     │                  45685947756a22a                                              
│                        │     │                  https://github.com/moby/moby/releases/tag/docker-v29.3.1     
│                        │     │                                                                               
│                        │     │                  https://github.com/moby/moby/security/advisories/GHSA-pxq6-2p
│                        │     │                  rw-chj9                                                      
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-33997              
│                        │     │                                                                               
│                        │     │                  https://security.access.redhat.com/data/csaf/v2/vex/2026/cve-
│                        │     │                  2026-33997.json                                              
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-33997              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-03-31T03:15:57.523Z 
│                        │     ╰ LastModifiedDate: 2026-09-09T13:19:32.963Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-41568 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-vp62-88p7-qqf5
│                        │     │                  
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:78b7df9489787723a71729b3fb31849b5eae55781b2910a856c2a
│                        │     │                   db5ebc72819 
│                        │     ├ Title           : github.com/docker/docker: github.com/moby/moby: Moby: Denial
│                        │     │                    of Service via race condition in docker cp mount setup 
│                        │     ├ Description     : Moby is an open source container framework. In Docker Engine
│                        │     │                    prior to version 29.5.1, Docker Daemon versions 28.5.2 and
│                        │     │                   prior, and Moby Daemon prior to version 2.0.0-beta.14, a
│                        │     │                   race condition during docker cp mount setup allows a
│                        │     │                   malicious container to create empty files or directories at
│                        │     │                   arbitrary absolute paths on the host filesystem. This issue
│                        │     │                   has been patched in Docker Engine version 29.5.1 and Moby
│                        │     │                   Daemon version 2.0.0-beta.14. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-81 
│                        │     │                  CWE-367
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ ghsa  : 2 
│                        │     │                  ╰ redhat: 1 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 6 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 3.9 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-41568        
│                        │     │                  https://github.com/moby/moby                                 
│                        │     │                  https://github.com/moby/moby/security/advisories/GHSA-vp62-88
│                        │     │                  p7-qqf5                                                      
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-41568              
│                        │     │                                                                               
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-41568              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-06-12T19:16:26.907Z 
│                        │     ╰ LastModifiedDate: 2026-06-17T10:46:51.787Z 
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-17106 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-hfg8-hc9c-6c3h
│                        │     │                  
│                        │     ├ PkgID           : github.com/moby/go-archive@v0.2.0 
│                        │     ├ PkgName         : github.com/moby/go-archive 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/moby/go-archive@v0.2.0 
│                        │     │                  ╰ UID : 8806660e6ada6dff 
│                        │     ├ InstalledVersion: v0.2.0 
│                        │     ├ FixedVersion    : 0.3.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-17106 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:5e3702df8d76021e83c4dc3df9d44b01275cea1e2dfcb81546c90
│                        │     │                   d67c4a69c6e 
│                        │     ├ Title           : github.com/moby/go-archive: moby/go-archive: Arbitrary file
│                        │     │                   write via link following in tar extraction 
│                        │     ├ Description     : The tar extraction routines in moby/go-archive (Unpack,
│                        │     │                   UnpackLayer, Untar/UntarUncompressed, and the ApplyLayer
│                        │     │                   helpers) do not confine filesystem operations to the
│                        │     │                   destination directory. The extractor decides where each
│                        │     │                   archive entry lands using lexical string checks and then
│                        │     │                   performs the filesystem operation on a path that is resolved
│                        │     │                    by the OS, so links introduced by the archive can be
│                        │     │                   followed out of the destination directory. An attacker who
│                        │     │                   controls the contents of an archive can create or overwrite
│                        │     │                   files at arbitrary paths writable by the extracting
│                        │     │                   process. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs                 
│                        │     │                  ──────
│                        │     │                  CWE-59
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ azure  : 3 
│                        │     │                  ├ bitnami: 3 
│                        │     │                  ├ ghsa   : 3 
│                        │     │                  ╰ redhat : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:A/VC:H
│                        │     │                  │         │            /VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │     │                  │         ╰ V40Score : 7.1 
│                        │     │                  ├ ghsa    ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:A/VC:H
│                        │     │                  │         │            /VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │     │                  │         ╰ V40Score : 7.1 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │     │                            │           H/A:H 
│                        │     │                            ╰ V3Score : 7.8 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-17106        
│                        │     │                  https://docs.docker.com/desktop/release-notes/#4860          
│                        │     │                  https://docs.docker.com/engine/release-notes/29/#2970        
│                        │     │                  https://github.com/bikini/exploitarium/tree/main/docker-cp-co
│                        │     │                  pyout-destination-escape                                     
│                        │     │                  https://github.com/docker/cli/releases/tag/v29.7.0           
│                        │     │                                                                               
│                        │     │                  https://github.com/docker/compose/releases/tag/v5.4.0        
│                        │     │                                                                               
│                        │     │                  https://github.com/docker/sbx-releases/releases/tag/v0.38.0  
│                        │     │                                                                               
│                        │     │                  https://github.com/masasron/CopyEscape-CVE-2026-17106        
│                        │     │                                                                               
│                        │     │                  https://github.com/moby/go-archive                           
│                        │     │                                                                               
│                        │     │                  https://github.com/moby/go-archive/releases/tag/v0.3.0       
│                        │     │                                                                               
│                        │     │                  https://github.com/moby/go-archive/security/advisories/GHSA-h
│                        │     │                  fg8-hc9c-6c3h                                                
│                        │     │                  https://github.com/moby/moby/issues/52948                    
│                        │     │                                                                               
│                        │     │                  https://github.com/moby/moby/releases/tag/docker-v29.7.0     
│                        │     │                                                                               
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-17106              
│                        │     │                                                                               
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-17106              
│                        │     │                                                                               
│                        │     │                  https://www.imperva.com/blog/copyescape-taking-over-docker-ho
│                        │     │                  sts-with-docker-cp                                           
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-08-18T19:16:45.03Z 
│                        │     ╰ LastModifiedDate: 2026-08-28T15:29:44.967Z 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-56855 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-6355
│                        │     │                  
│                        │     ├ PkgID           : golang.org/x/crypto@v0.55.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.55.0 
│                        │     │                  ╰ UID : 25359bce0c42962b 
│                        │     ├ InstalledVersion: v0.55.0 
│                        │     ├ FixedVersion    : 0.56.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:892ca2059f7d8dd4c1835bc66fbc9c32e3bf6694a7c126b1337a3
│                        │     │                   b83232747f5 
│                        │     ├ Title           : golang.org/x/crypto/ssh: golang.org/x/crypto/ssh: Denial of
│                        │     │                   Service via crafted messages 
│                        │     ├ Description     : Previously, after a channel has been established, a
│                        │     │                   malicious peer could send crafted messages that would
│                        │     │                   deadlock the entire connection. Now, we handle all RFC 4254
│                        │     │                   channel messages; global requests are handled explicitly.
│                        │     │                   Then, treat all other messages as a protocol error and tear
│                        │     │                   the connection down instead of buffering and blocking. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ VendorSeverity   ─ redhat: 2 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References                                                                
│                        │     │                  ─────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56855    
│                        │     │                  https://go.dev/cl/826524                                 
│                        │     │                  https://go.dev/issue/81317                               
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56855          
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6355                     
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-56855          
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-02T20:17:36.397Z 
│                        │     ╰ LastModifiedDate: 2026-09-04T16:34:56.823Z 
│                        ├ [7] ╭ VulnerabilityID : CVE-2026-78662 
│                        │     ├ VendorIDs                    
│                        │     │                  ────────────
│                        │     │                  GO-2026-6354
│                        │     │                  
│                        │     ├ PkgID           : golang.org/x/crypto@v0.55.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.55.0 
│                        │     │                  ╰ UID : 25359bce0c42962b 
│                        │     ├ InstalledVersion: v0.55.0 
│                        │     ├ FixedVersion    : 0.56.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:d821a4cf3824957e688463947bd1683d6c6183dd0f88fc773af0b
│                        │     │                   53b44b78e38 
│                        │     ├ Title           : golang.org/x/crypto/ssh: golang.org/x/crypto/ssh: Denial of
│                        │     │                   Service via channel request flooding 
│                        │     ├ Description     : Previously, a channel registered in the mux's chanList is
│                        │     │                   not usable until it is established. A malicious peer was
│                        │     │                   able flood the channel's incomingRequests, deadlocking the
│                        │     │                   entire connection. Now, we add an atomic established state,
│                        │     │                   set when a channel becomes usable. Until such a time,
│                        │     │                   handlePacket drops every packet other than the open
│                        │     │                   confirmation/failure, without blocking and without tearing
│                        │     │                   down the connection. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ VendorSeverity   ─ redhat: 2 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References                                                                
│                        │     │                  ─────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-78662    
│                        │     │                  https://go.dev/cl/826504                                 
│                        │     │                  https://go.dev/issue/81316                               
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-78662          
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6354                     
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-78662          
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-02T20:17:37.167Z 
│                        │     ╰ LastModifiedDate: 2026-09-04T16:33:34.057Z 
│                        ╰ [8] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.55.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.55.0 
│                              │                  ╰ UID : 25359bce0c42962b 
│                              ├ InstalledVersion: v0.55.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                              │                  │         6f08562480eae743d4d8 
│                              │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                              │                            5c4003a8b390d4d4b2c2 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:c0e813524f26bad2a44b4e7c99eb2fc4ef5b277aaca439f266adf
│                              │                   aed3aa73c05 
│                              ├ Title           : The golang.org/x/crypto/openpgp package is unmaintained,
│                              │                   unsafe by design, and has known security issues 
│                              ├ Description     : The golang.org/x/crypto/openpgp package is unsafe by design,
│                              │                    has numerous known security issues, is not maintained, and
│                              │                   should not be used.
│                              │                   
│                              │                   If you are required to interoperate with OpenPGP systems and
│                              │                    need a maintained package, consider
│                              │                   github.com/ProtonMail/go-crypto/openpgp which is a
│                              │                   maintained fork that aims to be a drop-in replacement for
│                              │                   this package. 
│                              ├ Severity        : UNKNOWN 
│                              ╰ References                                           
│                                                 ────────────────────────────────────
│                                                 https://go.dev/issue/44226          
│                                                 https://pkg.go.dev/vuln/GO-2026-5932
│                                                 
├ [11] ╭ Target         : usr/libexec/docker/cli-plugins/docker-compose 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-53495 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-7jxh-36q5-gcqv
│                        │     │                  
│                        │     ├ PkgID           : github.com/containerd/containerd/v2@v2.3.4 
│                        │     ├ PkgName         : github.com/containerd/containerd/v2 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.3.4 
│                        │     │                  ╰ UID : be9e50bbe437c5af 
│                        │     ├ InstalledVersion: v2.3.4 
│                        │     ├ FixedVersion    : 2.0.12, 2.2.8, 2.3.5 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                        │     │                  │         6f08562480eae743d4d8 
│                        │     │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                        │     │                            5c4003a8b390d4d4b2c2 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53495 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:2c66e968add21bede6914b68a55e535bf8b82b2a1908f9bcb09f6
│                        │     │                   b5989210ead 
│                        │     ├ Title           : github.com/containerd/containerd: containerd: Denial of
│                        │     │                   Service via CRI ExecSync goroutine leak 
│                        │     ├ Description     : containerd is an open-source container runtime. Prior to
│                        │     │                   1.7.35, 2.0.12, 2.2.8, and 2.3.5, containerd on Linux with
│                        │     │                   the CRI plugin enabled can indefinitely block the
│                        │     │                   drainExecSyncIO goroutine in
│                        │     │                   internal/cri/server/container_execsync.go when CRI ExecSync
│                        │     │                   is used by exec probes or lifecycle hooks that launch
│                        │     │                   long-lived background child processes retaining standard
│                        │     │                   input and output pipes. The input and output drain phase has
│                        │     │                    no default timeout and did not stop when the request
│                        │     │                   context was canceled, so repeated ExecSync invocations can
│                        │     │                   accumulate blocked goroutines and host memory. The resulting
│                        │     │                    resource exhaustion can cause the OOM killer to terminate
│                        │     │                   containerd, leaving the container runtime unavailable until
│                        │     │                   restart. Deployments not using containerd's CRI
│                        │     │                   implementation and containers not running on Linux are not
│                        │     │                   affected. This issue is fixed in versions 1.7.35, 2.0.12,
│                        │     │                   2.2.8, and 2.3.5. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-400
│                        │     │                  
│                        │     ├ VendorSeverity   ╭ ghsa  : 2 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:N/
│                        │     │                  │        │            VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │     │                  │        ╰ V40Score : 6.8 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 5.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-53495        
│                        │     │                  https://github.com/containerd/containerd                     
│                        │     │                  https://github.com/containerd/containerd/commit/22ccf4314d1fe
│                        │     │                  0834f8e28f10d37d5305ef9880c                                  
│                        │     │                  https://github.com/containerd/containerd/commit/5a2a3a759b0d2
│                        │     │                  ad8c821b33c3afc20890daf6d81                                  
│                        │     │                  https://github.com/containerd/containerd/commit/9ec55f024041d
│                        │     │                  0641f6d79841e45c8781141ddaa                                  
│                        │     │                  https://github.com/containerd/containerd/commit/eebea8c4c912f
│                        │     │                  44b656c8295c9e6607a19b76650                                  
│                        │     │                  https://github.com/containerd/containerd/commit/ff39a972369e2
│                        │     │                  f12fae561a58d658bbf8f2bc318                                  
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v1.7.35
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.0.12
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.2.8 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.3.5 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/security/advisories/
│                        │     │                  GHSA-7jxh-36q5-gcqv                                          
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-53495              
│                        │     │                                                                               
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-53495              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-14T18:17:51.053Z 
│                        │     ╰ LastModifiedDate: 2026-09-14T18:17:51.053Z 
│                        ╰ [1] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.56.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.56.0 
│                              │                  ╰ UID : 8db81c6138f552c6 
│                              ├ InstalledVersion: v0.56.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f7628474
│                              │                  │         6f08562480eae743d4d8 
│                              │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b450
│                              │                            5c4003a8b390d4d4b2c2 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:6bfaa3079c670a3d458e87e8e96046edefc0590d32eb18c63841b
│                              │                   ded56e21478 
│                              ├ Title           : The golang.org/x/crypto/openpgp package is unmaintained,
│                              │                   unsafe by design, and has known security issues 
│                              ├ Description     : The golang.org/x/crypto/openpgp package is unsafe by design,
│                              │                    has numerous known security issues, is not maintained, and
│                              │                   should not be used.
│                              │                   
│                              │                   If you are required to interoperate with OpenPGP systems and
│                              │                    need a maintained package, consider
│                              │                   github.com/ProtonMail/go-crypto/openpgp which is a
│                              │                   maintained fork that aims to be a drop-in replacement for
│                              │                   this package. 
│                              ├ Severity        : UNKNOWN 
│                              ╰ References                                           
│                                                 ────────────────────────────────────
│                                                 https://go.dev/issue/44226          
│                                                 https://pkg.go.dev/vuln/GO-2026-5932
│                                                 
├ [12] ╭ Target         : usr/libexec/docker/cli-plugins/docker-model 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-53495 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-7jxh-36q5-gcqv
│                        │      │                  
│                        │      ├ PkgID           : github.com/containerd/containerd/v2@v2.2.5 
│                        │      ├ PkgName         : github.com/containerd/containerd/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.5 
│                        │      │                  ╰ UID : 6926cc9182afd95f 
│                        │      ├ InstalledVersion: v2.2.5 
│                        │      ├ FixedVersion    : 2.0.12, 2.2.8, 2.3.5 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53495 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:4836ee1f31c93099bdca63cfaf89209bd3df31fa2b965b30beca
│                        │      │                   451df2dc39d7 
│                        │      ├ Title           : github.com/containerd/containerd: containerd: Denial of
│                        │      │                   Service via CRI ExecSync goroutine leak 
│                        │      ├ Description     : containerd is an open-source container runtime. Prior to
│                        │      │                   1.7.35, 2.0.12, 2.2.8, and 2.3.5, containerd on Linux with
│                        │      │                   the CRI plugin enabled can indefinitely block the
│                        │      │                   drainExecSyncIO goroutine in
│                        │      │                   internal/cri/server/container_execsync.go when CRI ExecSync
│                        │      │                    is used by exec probes or lifecycle hooks that launch
│                        │      │                   long-lived background child processes retaining standard
│                        │      │                   input and output pipes. The input and output drain phase
│                        │      │                   has no default timeout and did not stop when the request
│                        │      │                   context was canceled, so repeated ExecSync invocations can
│                        │      │                   accumulate blocked goroutines and host memory. The
│                        │      │                   resulting resource exhaustion can cause the OOM killer to
│                        │      │                   terminate containerd, leaving the container runtime
│                        │      │                   unavailable until restart. Deployments not using
│                        │      │                   containerd's CRI implementation and containers not running
│                        │      │                   on Linux are not affected. This issue is fixed in versions
│                        │      │                   1.7.35, 2.0.12, 2.2.8, and 2.3.5. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-400
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ redhat: 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:N
│                        │      │                  │        │            /VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 6.8 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 5.5 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-53495       
│                        │      │                  https://github.com/containerd/containerd                    
│                        │      │                  https://github.com/containerd/containerd/commit/22ccf4314d1f
│                        │      │                  e0834f8e28f10d37d5305ef9880c                                
│                        │      │                  https://github.com/containerd/containerd/commit/5a2a3a759b0d
│                        │      │                  2ad8c821b33c3afc20890daf6d81                                
│                        │      │                  https://github.com/containerd/containerd/commit/9ec55f024041
│                        │      │                  d0641f6d79841e45c8781141ddaa                                
│                        │      │                  https://github.com/containerd/containerd/commit/eebea8c4c912
│                        │      │                  f44b656c8295c9e6607a19b76650                                
│                        │      │                  https://github.com/containerd/containerd/commit/ff39a972369e
│                        │      │                  2f12fae561a58d658bbf8f2bc318                                
│                        │      │                  https://github.com/containerd/containerd/releases/tag/v1.7.3
│                        │      │                  5                                                           
│                        │      │                  https://github.com/containerd/containerd/releases/tag/v2.0.1
│                        │      │                  2                                                           
│                        │      │                  https://github.com/containerd/containerd/releases/tag/v2.2.8
│                        │      │                                                                              
│                        │      │                  https://github.com/containerd/containerd/releases/tag/v2.3.5
│                        │      │                                                                              
│                        │      │                  https://github.com/containerd/containerd/security/advisories
│                        │      │                  /GHSA-7jxh-36q5-gcqv                                        
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-53495             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-53495             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-14T18:17:51.053Z 
│                        │      ╰ LastModifiedDate: 2026-09-14T18:17:51.053Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-56854 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6303
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/crypto@v0.53.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.53.0 
│                        │      │                  ╰ UID : 4a75460d65c046ad 
│                        │      ├ InstalledVersion: v0.53.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56854 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f3ee7e8d8513bf01d62a5d4005062e963e7cb04df3d64d6bc759
│                        │      │                   123c42b66929 
│                        │      ├ Title           : golang.org/x/crypto/ssh: golang.org/x/crypto/ssh:
│                        │      │                   Authentication bypass due to unenforced source-address
│                        │      │                   restrictions 
│                        │      ├ Description     : The source-address critical option in the Permissions
│                        │      │                   returned by an authentication callback was only enforced
│                        │      │                   for the PublicKeyCallback and VerifiedPublicKeyCallback
│                        │      │                   paths, extending the fix for CVE-2026-46595. Permissions
│                        │      │                   returned by the PasswordCallback,
│                        │      │                   KeyboardInteractiveCallback, NoClientAuthCallback, and
│                        │      │                   GSSAPIWithMICConfig.AllowLogin callbacks were not validated
│                        │      │                    against the client's remote address, so a source-address
│                        │      │                   restriction set by those callbacks was silently ignored.
│                        │      │                   The check is now applied to the Permissions returned by any
│                        │      │                    authentication callback. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-863
│                        │      │                  
│                        │      ├ VendorSeverity   ─ redhat: 3 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 6.8 
│                        │      ├ References                                                            
│                        │      │                  ─────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56854
│                        │      │                  https://go.dev/cl/797040                             
│                        │      │                  https://go.dev/issue/80213                           
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56854      
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6303                 
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56854      
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-28T16:18:17.607Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-56855 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6355
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/crypto@v0.53.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.53.0 
│                        │      │                  ╰ UID : 4a75460d65c046ad 
│                        │      ├ InstalledVersion: v0.53.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:39e6b06f8ca46f7b610ceb87ca39013adc03f03b09a1fc2fd00d
│                        │      │                   0e36069e9010 
│                        │      ├ Title           : golang.org/x/crypto/ssh: golang.org/x/crypto/ssh: Denial of
│                        │      │                    Service via crafted messages 
│                        │      ├ Description     : Previously, after a channel has been established, a
│                        │      │                   malicious peer could send crafted messages that would
│                        │      │                   deadlock the entire connection. Now, we handle all RFC 4254
│                        │      │                    channel messages; global requests are handled explicitly.
│                        │      │                   Then, treat all other messages as a protocol error and tear
│                        │      │                    the connection down instead of buffering and blocking. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-770
│                        │      │                  
│                        │      ├ VendorSeverity   ─ redhat: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56855    
│                        │      │                  https://go.dev/cl/826524                                 
│                        │      │                  https://go.dev/issue/81317                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56855          
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6355                     
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56855          
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-02T20:17:36.397Z 
│                        │      ╰ LastModifiedDate: 2026-09-04T16:34:56.823Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-78662 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6354
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/crypto@v0.53.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.53.0 
│                        │      │                  ╰ UID : 4a75460d65c046ad 
│                        │      ├ InstalledVersion: v0.53.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f91b72743178bfb43cc7131b933f3730c21ddf55c091cb67098b
│                        │      │                   5382fe2d559f 
│                        │      ├ Title           : golang.org/x/crypto/ssh: golang.org/x/crypto/ssh: Denial of
│                        │      │                    Service via channel request flooding 
│                        │      ├ Description     : Previously, a channel registered in the mux's chanList is
│                        │      │                   not usable until it is established. A malicious peer was
│                        │      │                   able flood the channel's incomingRequests, deadlocking the
│                        │      │                   entire connection. Now, we add an atomic established state,
│                        │      │                    set when a channel becomes usable. Until such a time,
│                        │      │                   handlePacket drops every packet other than the open
│                        │      │                   confirmation/failure, without blocking and without tearing
│                        │      │                   down the connection. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-770
│                        │      │                  
│                        │      ├ VendorSeverity   ─ redhat: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-78662    
│                        │      │                  https://go.dev/cl/826504                                 
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54432         
│                        │      │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-78662          
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6354                     
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-78662          
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-02T20:17:37.167Z 
│                        │      ╰ LastModifiedDate: 2026-09-04T16:33:34.057Z 
│                        ├ [4]  ╭ VulnerabilityID : GO-2026-5932 
│                        │      ├ PkgID           : golang.org/x/crypto@v0.53.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.53.0 
│                        │      │                  ╰ UID : 4a75460d65c046ad 
│                        │      ├ InstalledVersion: v0.53.0 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:41cfecdd1cfc61c5326291cac3e16939e834028e4edb547143c3
│                        │      │                   9a1bfd9036f3 
│                        │      ├ Title           : The golang.org/x/crypto/openpgp package is unmaintained,
│                        │      │                   unsafe by design, and has known security issues 
│                        │      ├ Description     : The golang.org/x/crypto/openpgp package is unsafe by
│                        │      │                   design, has numerous known security issues, is not
│                        │      │                   maintained, and should not be used.
│                        │      │                   
│                        │      │                   If you are required to interoperate with OpenPGP systems
│                        │      │                   and need a maintained package, consider
│                        │      │                   github.com/ProtonMail/go-crypto/openpgp which is a
│                        │      │                   maintained fork that aims to be a drop-in replacement for
│                        │      │                   this package. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ╰ References                                           
│                        │                         ────────────────────────────────────
│                        │                         https://go.dev/issue/44226          
│                        │                         https://pkg.go.dev/vuln/GO-2026-5932
│                        │                         
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-46600 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5942
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/net@v0.55.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.55.0 
│                        │      │                  ╰ UID : 7883d2541b515fd6 
│                        │      ├ InstalledVersion: v0.55.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:b618e3b03b7a9aefd10ceee017fb004e94d07d9790eeacba2938
│                        │      │                   e22ade9096fc 
│                        │      ├ Title           : golang.org/x/net/dns/dnsmessage:
│                        │      │                   golang.org/x/net/dns/dnsmessage: Denial of Service via
│                        │      │                   invalid DNS record parsing 
│                        │      ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a parameter value overflows the message buffer. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-125
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ azure  : 2 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ╰ redhat : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-46600    
│                        │      │                  https://go.dev/cl/786345                                 
│                        │      │                  https://go.dev/issue/79795                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-46600          
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5942                     
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-46600          
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
│                        │      ╰ LastModifiedDate: 2026-08-14T16:16:55.673Z 
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-56852 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5970
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/text@v0.38.0 
│                        │      ├ PkgName         : golang.org/x/text 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.38.0 
│                        │      │                  ╰ UID : 23d84dcd6ab5ac00 
│                        │      ├ InstalledVersion: v0.38.0 
│                        │      ├ FixedVersion    : 0.39.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f2dc7d952fea62cb2be5f112c89794e50be8d206e3d8d1fdeef5
│                        │      │                   a93f45859157 
│                        │      ├ Title           : golang.org/x/text: golang.org/x/text: Denial of Service via
│                        │      │                    invalid UTF-8 input 
│                        │      ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │      │                   containing invalid UTF-8 bytes. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-835
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 3 
│                        │      │                  ╰ redhat: 3 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 7.5 
│                        │      ├ References                                                            
│                        │      │                  ─────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56852
│                        │      │                  https://go.dev/cl/794100                             
│                        │      │                  https://go.dev/issue/80142                           
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56852      
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5970                 
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56852      
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-21T20:17:02.867Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-84304 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-vp52-pcj8-j9qc
│                        │      │                  
│                        │      ├ PkgID           : google.golang.org/grpc@v1.79.3 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.79.3 
│                        │      │                  ╰ UID : 2977bc5805b7c756 
│                        │      ├ InstalledVersion: v1.79.3 
│                        │      ├ FixedVersion    : 1.83.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84304 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:a4da11eb497b0ed28b8888028b324ffa2b324c8d645fb559f9c3
│                        │      │                   f1c047b50293 
│                        │      ├ Title           : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.83.1, in ... 
│                        │      ├ Description     : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.83.1, internal/transport/transport.go stores each
│                        │      │                   fragmented HTTP/2 DATA frame as a separate recvMsg in
│                        │      │                   recvBuffer, so millions of one-byte frames can consume
│                        │      │                   disproportionate heap memory even when payload bytes remain
│                        │      │                    within connection and stream flow-control windows. An
│                        │      │                   unauthenticated remote attacker can use concurrent
│                        │      │                   multiplexed streams to exhaust process memory and cause a
│                        │      │                   runtime panic or out-of-memory termination. Receive-buffer
│                        │      │                   compaction is enabled by default and can be controlled
│                        │      │                   temporarily with
│                        │      │                   GRPC_GO_EXPERIMENTAL_ENABLE_RECEIVE_BUFFER_COMPACTION. This
│                        │      │                    issue is fixed in version 1.83.1. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-400
│                        │      │                  
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/V
│                        │      │                         │            I:N/VA:H/SC:N/SI:N/SA:N 
│                        │      │                         ╰ V40Score : 8.7 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://github.com/grpc/grpc-go                             
│                        │      │                  https://github.com/grpc/grpc-go/commit/7354d9c8debb4bcf2225b
│                        │      │                  f429857078de310c176                                         
│                        │      │                  https://github.com/grpc/grpc-go/commit/8cfeca0e1ee5ea0980dcc
│                        │      │                  320e20240fa1079ec77                                         
│                        │      │                  https://github.com/grpc/grpc-go/pull/9331                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/pull/9333                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/releases/tag/v1.83.1        
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/security/advisories/GHSA-vp5
│                        │      │                  2-pcj8-j9qc                                                 
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-84304             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-01T19:17:30.743Z 
│                        │      ╰ LastModifiedDate: 2026-09-09T21:09:13.08Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-84445 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-2v4p-qf9q-27wj
│                        │      │                  
│                        │      ├ PkgID           : google.golang.org/grpc@v1.79.3 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.79.3 
│                        │      │                  ╰ UID : 2977bc5805b7c756 
│                        │      ├ InstalledVersion: v1.79.3 
│                        │      ├ FixedVersion    : 1.82.2, 1.83.2, 1.85.0-dev.0.20260825072537-93e31b48545e 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84445 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:8c612a9b5e729674ada7feabc3df9ea9b9078d749c5f567f52f9
│                        │      │                   a0af9f19f987 
│                        │      ├ Title           : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.82.2 and ... 
│                        │      ├ Description     : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.82.2 and 1.83.2, servers created with
│                        │      │                   xds.NewGRPCServer() allow
│                        │      │                   internal/transport/http2_server.go to accept an RPC
│                        │      │                   containing neither the :authority header nor the Host
│                        │      │                   header, while RouteAndProcess in
│                        │      │                   internal/xds/server/routing.go assumes that an authority
│                        │      │                   value exists and indexes the empty slice. A remote client
│                        │      │                   that can complete transport connection establishment can
│                        │      │                   trigger an index-out-of-bounds panic that is not recovered
│                        │      │                   by the per-RPC goroutine and terminates the entire server
│                        │      │                   process. In insecure or ordinary TLS deployments the
│                        │      │                   request can be unauthenticated, while strict mTLS or ALTS
│                        │      │                   deployments require valid transport credentials before the
│                        │      │                   malformed RPC can reach the interceptor. This issue is
│                        │      │                   fixed in versions 1.82.2 and 1.83.2. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-129
│                        │      │                  CWE-248
│                        │      │                  
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://github.com/grpc/grpc-go                             
│                        │      │                  https://github.com/grpc/grpc-go/commit/3822494d8ea03b992c089
│                        │      │                  fd2a195f041762fffb7                                         
│                        │      │                  https://github.com/grpc/grpc-go/commit/8668b69c167df908b6b36
│                        │      │                  66dcbf40992b9e932a4                                         
│                        │      │                  https://github.com/grpc/grpc-go/commit/93e31b48545e2a8aaeb6e
│                        │      │                  06b47fb249f94e6297f                                         
│                        │      │                  https://github.com/grpc/grpc-go/issues/9354                 
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/pull/9365                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/pull/9366                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/pull/9367                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/releases/tag/v1.82.2        
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/releases/tag/v1.83.2        
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/security/advisories/GHSA-2v4
│                        │      │                  p-qf9q-27wj                                                 
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-14T17:17:51.743Z 
│                        │      ╰ LastModifiedDate: 2026-09-14T17:17:51.743Z 
│                        ├ [9]  ╭ VulnerabilityID : GHSA-hrxh-6v49-42gf 
│                        │      ├ PkgID           : google.golang.org/grpc@v1.79.3 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.79.3 
│                        │      │                  ╰ UID : 2977bc5805b7c756 
│                        │      ├ InstalledVersion: v1.79.3 
│                        │      ├ FixedVersion    : 1.82.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:85e02c1a2a46708819a6eb5fced2fe7a364c625f5c4e39a955dc
│                        │      │                   d483d6ad6efe 
│                        │      ├ Title           : gRPC-Go: xDS RBAC and HTTP/2 Vulnerabilities 
│                        │      ├ Description     : Multiple security vulnerabilities have been identified and
│                        │      │                   addressed in grpc-go affecting the xDS RBAC authorization
│                        │      │                   engine (internal/xds/rbac) and the HTTP/2 transport server
│                        │      │                   implementation (internal/transport). These vulnerabilities
│                        │      │                   could result in:
│                        │      │                   
│                        │      │                   - Authorization Bypass (Fail-Open) when translating xDS
│                        │      │                   RBAC policies containing `Metadata` or
│                        │      │                   `RequestedServerName` fields.
│                        │      │                   - Denial of Service (High CPU Consumption) due to an HTTP/2
│                        │      │                    Rapid Reset mitigation bypass during client-initiated
│                        │      │                   stream resets.
│                        │      │                   - Denial of Service (Server Panic) when parsing crafted xDS
│                        │      │                    RBAC policies containing `NOT` rules around unsupported
│                        │      │                   fields.
│                        │      │                   ### Impact
│                        │      │                   _What kind of vulnerability is it? Who is impacted?_
│                        │      │                   #### xDS RBAC Authorization Bypass via `Metadata` &
│                        │      │                   `RequestedServerName` matchers
│                        │      │                   - Affected Component: xDS RBAC 
│                        │      │                   - Impact: When building policy matchers for gRPC RBAC from
│                        │      │                   xDS configurations, unsupported `permission` and
│                        │      │                   `principal` rules (specifically `Metadata` and
│                        │      │                   `RequestedServerName`) were silently ignored and treated as
│                        │      │                    no-ops.
│                        │      │                     - If an authorization policy relied purely on these
│                        │      │                   matchers for access control, treating those rules as no-ops
│                        │      │                    effectively removed the restrictions.
│                        │      │                   - If these unsupported rules were nested inside logical
│                        │      │                   `NOT` rules (`Permission_NotRule` / `Principal_NotId`) or
│                        │      │                   multi-condition `OR/AND` rules, silently dropping them
│                        │      │                   changed the boolean logic flow of the authorization
│                        │      │                   engine.
│                        │      │                   As a result, policy evaluation decisions could fail open,
│                        │      │                   allowing unauthorized clients to access protected gRPC
│                        │      │                   services or resources.
│                        │      │                   #### HTTP/2 Rapid Reset Mitigation Bypass / Denial of
│                        │      │                   Service via Stream Aborts
│                        │      │                   - Affected Component: HTTP/2 transport
│                        │      │                   - Impact: Earlier mitigations in grpc-go for HTTP/2 Rapid
│                        │      │                   Reset only applied threshold checks to items that directly
│                        │      │                   resulted in control frames being written back to the wire,
│                        │      │                   such as `SETTINGS` ACKs or server-initiated `RST_STREAM`s.
│                        │      │                   When a client initiated a rapid flood of stream creation
│                        │      │                   (`HEADERS`) immediately followed by stream termination
│                        │      │                   `RST_STREAM`, items queued up in the control buffer without
│                        │      │                    counting against the transport response frame threshold.
│                        │      │                   An attacker can repeatedly trigger this flood sequence to
│                        │      │                   bypass reader blocking, resulting in high CPU usage, and
│                        │      │                   Denial of Service (DoS).
│                        │      │                   #### Denial of Service (Panic) in xDS RBAC Engine via
│                        │      │                   Unsupported Fields inside NOT Rules
│                        │      │                   - Impact: The xDS RBAC policy translators recursively
│                        │      │                   generate matchers for nested rules. When a `NOT` rule
│                        │      │                   wrapped an unsupported or unhandled field (such as
│                        │      │                   `SourcedMetadata`), the recursive step returned an empty
│                        │      │                   matcher. This could result in a runtime panic when the RBAC
│                        │      │                    engine attempts to authorize an incoming request.
│                        │      │                   An attacker or misconfigured/malicious xDS management
│                        │      │                   server delivering an LDS/RDS update containing a `NOT` rule
│                        │      │                    around an unhandled field causes the gRPC server process
│                        │      │                   to crash immediately (CWE-248 / Denial of Service).
│                        │      │                   ### Patches
│                        │      │                   _Has the problem been patched? What versions should users
│                        │      │                   upgrade to?_
│                        │      │                   All three issues have been fixed in `master` and will be
│                        │      │                   released in 1.82.1 shortly.
│                        │      │                   ### Workarounds
│                        │      │                   _Is there a way for users to fix or remediate the
│                        │      │                   vulnerability without upgrading?_
│                        │      │                   If upgrading grpc-go immediately is not possible, apply the
│                        │      │                    following workarounds based on your deployment
│                        │      │                   architecture:
│                        │      │                   * For xDS RBAC Vulnerabilities & Panics: Ensure that
│                        │      │                   upstream xDS management servers do not push RBAC policies
│                        │      │                   containing `Metadata`, `RequestedServerName`, or `NOT`
│                        │      │                   rules wrapping unsupported fields (such as
│                        │      │                   `SourcedMetadata`) to grpc-go servers.
│                        │      │                   * For HTTP/2 Rapid Reset DOS: Configure upstream reverse
│                        │      │                   proxies or load balancers (such as Envoy) with strict
│                        │      │                   HTTP/2 `max_concurrent_streams` limits and active rate
│                        │      │                   limiting on `RST_STREAM` frequency per connection.
│                        │      │                   ### Severity
│                        │      │                     | Vulnerability | Qualitative Severity | Approximate CVSS
│                        │      │                    v3.1 Score | Primary Impact |
│                        │      │                     | :--- | :--- | :--- | :--- |
│                        │      │                     | **xDS RBAC Authorization Bypass** | **High** | `8.2` |
│                        │      │                   Unauthorized Access / Fail-Open |
│                        │      │                     | **HTTP/2 Rapid Reset DOS Bypass** | **High** | `7.5` |
│                        │      │                   High CPU Consumption / Denial of Service |
│                        │      │                     | **xDS RBAC Engine Server Panic** | **Medium** | `5.9` |
│                        │      │                    Process Crash / Denial of Service | 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/V
│                        │      │                         │            I:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                         ╰ V40Score : 8.8 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://github.com/grpc/grpc-go                             
│                        │      │                  https://github.com/grpc/grpc-go/commit/4ea465d4ab98013f72a14
│                        │      │                  2fe0fc89c19770b2935                                         
│                        │      │                  https://github.com/grpc/grpc-go/pull/9236                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/releases/tag/v1.82.1        
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/security/advisories/GHSA-hrx
│                        │      │                  h-6v49-42gf                                                 
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-21T22:03:55Z 
│                        │      ╰ LastModifiedDate: 2026-07-21T22:03:56Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-84303 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-qc2q-p7wx-3px3
│                        │      │                  
│                        │      ├ PkgID           : google.golang.org/grpc@v1.79.3 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.79.3 
│                        │      │                  ╰ UID : 2977bc5805b7c756 
│                        │      ├ InstalledVersion: v1.79.3 
│                        │      ├ FixedVersion    : 1.83.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84303 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:3ad591a0cae0df643b889cb8968a647dfd747b43e7460622c09b
│                        │      │                   b039ea2ee72f 
│                        │      ├ Title           : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.83.1, th ... 
│                        │      ├ Description     : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.83.1, the xDS RBAC HTTP filter in
│                        │      │                   internal/xds/httpfilter/rbac/rbac.go does not lowercase
│                        │      │                   header matcher names in normalizeHeaderMatcher even though
│                        │      │                   incoming metadata keys are lowercase. A DENY policy using a
│                        │      │                    mixed-case name such as X-Role or User-Agent therefore
│                        │      │                   does not match and fails open, allowing requests that
│                        │      │                   should be rejected. The same case mismatch permits :Scheme
│                        │      │                   or Grpc-Status to evade gRFC A41 validation and prevents
│                        │      │                   Host from being rewritten to :authority. This issue is
│                        │      │                   fixed in version 1.83.1. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-178
│                        │      │                  CWE-863
│                        │      │                  
│                        │      ├ VendorSeverity   ─ ghsa: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:L/V
│                        │      │                         │            I:L/VA:N/SC:N/SI:N/SA:N 
│                        │      │                         ╰ V40Score : 6.3 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://github.com/grpc/grpc-go                             
│                        │      │                  https://github.com/grpc/grpc-go/commit/db9482836c298f234c896
│                        │      │                  cf82ab68cafc78237f8                                         
│                        │      │                  https://github.com/grpc/grpc-go/commit/ebba6f3f1b206e2b4dc4d
│                        │      │                  1d5a96d18430302c2fe                                         
│                        │      │                  https://github.com/grpc/grpc-go/pull/9332                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/pull/9335                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/releases/tag/v1.83.1        
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/security/advisories/GHSA-qc2
│                        │      │                  q-p7wx-3px3                                                 
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-84303             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-01T19:17:30.6Z 
│                        │      ╰ LastModifiedDate: 2026-09-09T21:09:13.08Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-33818 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5972
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.25.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                        │      │                  ╰ UID : 81d0a980aae4af20 
│                        │      ├ InstalledVersion: v1.25.12 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:d905ceaf72809031b190cd1efd1d87e2301b1b80703e3211b348
│                        │      │                   9b674169af4c 
│                        │      ├ Title           : encoding/asn1: golang: Go encoding/asn1: Denial of Service
│                        │      │                   via excessive recursion in Unmarshal 
│                        │      ├ Description     : Enforce a recursion limit in Unmarshal to prevent stack
│                        │      │                   exhaustion when parsing deeply-nested, recursive
│                        │      │                   structures. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-400
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66364             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-33818        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-66364.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:66364                
│                        │      │                  https://go.dev/cl/814980                                     
│                        │      │                  https://go.dev/issue/80405                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-33818.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-67161-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-33818              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5972                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-33818              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:19.84Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-39821 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5026
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.25.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                        │      │                  ╰ UID : 81d0a980aae4af20 
│                        │      ├ InstalledVersion: v1.25.12 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:c5c58d0abe15920ce8730a09fb2f88f7384c81ac1eb968bb85c3
│                        │      │                   90ac8887d61a 
│                        │      ├ Title           : golang.org/x/net/idna: golang: net/http:
│                        │      │                   golang.org/x/net/idna: Privilege escalation via incorrect
│                        │      │                   Punycode label processing 
│                        │      ├ Description     : The ToASCII and ToUnicode functions incorrectly accept
│                        │      │                   Punycode-encoded labels that decode to an ASCII-only label.
│                        │      │                    For example, ToUnicode("xn--example-.com") incorrectly
│                        │      │                   returns the name "example.com" rather than an error. This
│                        │      │                   behavior can lead to privilege escalation in programs using
│                        │      │                    the idna package. For example, a program which performs
│                        │      │                   privilege checks on the ASCII hostname may reject
│                        │      │                   "example.com" but permit "xn--example-.com". If that
│                        │      │                   program subsequently converts the ASCII hostname to
│                        │      │                   Unicode, it will inadvertently permits access to the
│                        │      │                   Unicode name "example.com". 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                   
│                        │      │                  ────────
│                        │      │                  CWE-1289
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 4 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 8.2 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://bugzilla.redhat.com/2515840                         
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:23264            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:26546            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:26547            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:30650            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:30651            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:30853            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:30854            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:30855            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33155            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33160            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33163            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33173            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33183            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33524            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33531            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34342            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34357            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34359            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34364            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34789            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35826            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35827            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35828            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35829            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35830            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35831            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35993            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35994            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36105            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36167            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36207            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36648            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36651            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36796            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36797            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36808            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36820            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36883            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:37387            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:37435            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:37436            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:38995            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:39005            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:39573            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:39879            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:40118            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:40262            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:40945            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41019            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41030            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41031            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41036            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41055            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41066            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41928            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41930            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42043            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42047            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42048            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42049            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42050            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42051            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42078            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42079            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42080            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42082            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42132            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42142            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42146            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42150            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42151            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42240            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42644            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42796            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42852            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:43038            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:43052            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:43692            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:44622            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:44624            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:46395            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:47149            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:47735            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:47737            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:47952            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49702            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49712            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:50300            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:50843            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51033            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51112            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51187            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51194            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51341            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:52826            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53374            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53412            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53413            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53415            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53530            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54191            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54274            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54283            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54284            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54285            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54286            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54287            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54395            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54401            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54435            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54441            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54531            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54580            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54757            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:56143            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:56223            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:56340            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:56431            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57194            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57541            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57649            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57845            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59546            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59549            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59562            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60315            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60354            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60387            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60520            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:61245            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:61253            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62549            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63134            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65126            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65153            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65359            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65534            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65886            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66016            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66022            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66350            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66432            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67149            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67159            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67160            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67287            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67319            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67517            
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-39821       
│                        │      │                  https://bugzilla.redhat.com/2467809                         
│                        │      │                  https://bugzilla.redhat.com/2467820                         
│                        │      │                  https://bugzilla.redhat.com/2480756                         
│                        │      │                  https://bugzilla.redhat.com/2484204                         
│                        │      │                  https://bugzilla.redhat.com/2515815                         
│                        │      │                  https://bugzilla.redhat.com/2515820                         
│                        │      │                  https://bugzilla.redhat.com/2515827                         
│                        │      │                  https://bugzilla.redhat.com/2515838                         
│                        │      │                  https://bugzilla.redhat.com/2515839                         
│                        │      │                  https://bugzilla.redhat.com/2515840                         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840         
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3228
│                        │      │                  0                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3228
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3381
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3381
│                        │      │                  8                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  0                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-4249
│                        │      │                  9                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-4250
│                        │      │                  4                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5685
│                        │      │                  3                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5685
│                        │      │                  8                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5685
│                        │      │                  9                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5686
│                        │      │                  0                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5686
│                        │      │                  2                                                           
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html         
│                        │      │                                                                              
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:65886               
│                        │      │                                                                              
│                        │      │                  https://github.com/golang/go/issues/78760                   
│                        │      │                                                                              
│                        │      │                  https://go.dev/cl/767220                                    
│                        │      │                                                                              
│                        │      │                  https://go.dev/issue/78760                                  
│                        │      │                                                                              
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI   
│                        │      │                                                                              
│                        │      │                  https://groups.google.com/g/golang-announce/c/iI-mYSI0lu8   
│                        │      │                                                                              
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-39821.html            
│                        │      │                                                                              
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-66432-0.html      
│                        │      │                                                                              
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-39821             
│                        │      │                                                                              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5026                        
│                        │      │                                                                              
│                        │      │                  https://security.access.redhat.com/data/csaf/v2/vex/2026/cve
│                        │      │                  -2026-39821.json                                            
│                        │      │                  https://ubuntu.com/security/notices/USN-8416-1              
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-39821             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
│                        │      ╰ LastModifiedDate: 2026-09-15T12:17:34.803Z 
│                        ├ [13] ╭ VulnerabilityID : CVE-2026-56853 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6089
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.25.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                        │      │                  ╰ UID : 81d0a980aae4af20 
│                        │      ├ InstalledVersion: v1.25.12 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:085d0a54330b2418b1293f47f40629e94663c2401735b921a1c0
│                        │      │                   98f3292f93ef 
│                        │      ├ Title           : net/http: golang: Go net/http: Unencrypted HTTP/2
│                        │      │                   connections vulnerable to Denial of Service 
│                        │      ├ Description     : When a server is configured to support unencrypted HTTP/2,
│                        │      │                   it reads a few bytes from each new connection to see if
│                        │      │                   they contain the HTTP/2 client preface. ReadHeaderTimeout
│                        │      │                   is unexpectedly not being applied when doing this. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-770
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65153             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65886             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56853        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2480756                          
│                        │      │                  https://bugzilla.redhat.com/2484204                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32280
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32281
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33811
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:65886                
│                        │      │                  https://go.dev/cl/795540                                     
│                        │      │                  https://go.dev/issue/80205                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56853.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-65895-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56853              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6089                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56853              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.093Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [14] ╭ VulnerabilityID : CVE-2026-56858 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6091
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.25.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                        │      │                  ╰ UID : 81d0a980aae4af20 
│                        │      ├ InstalledVersion: v1.25.12 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:28f8a2ccf742f8718df08962f3f149226fae1e4f20f428658616
│                        │      │                   73b33b2b8338 
│                        │      ├ Title           : html/template: golang: Go html/template: Cross-Site
│                        │      │                   Scripting via pathological input 
│                        │      ├ Description     : Previously, pathological inputs could close an unescaped
│                        │      │                   '/' early, allowing for attack-controlled data to inject
│                        │      │                   arbitrary content, potentially leading to XSS. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                 
│                        │      │                  ──────
│                        │      │                  CWE-79
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                  │         │           :L/A:N 
│                        │      │                  │         ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │      │                            │           :H/A:N 
│                        │      │                            ╰ V3Score : 8.1 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65153             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65886             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56858        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2480756                          
│                        │      │                  https://bugzilla.redhat.com/2484204                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32280
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32281
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33811
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:65886                
│                        │      │                  https://go.dev/cl/807100                                     
│                        │      │                  https://go.dev/issue/80435                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56858.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-65895-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56858              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6091                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56858              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.207Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [15] ╭ VulnerabilityID : CVE-2026-56859 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6088
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.25.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                        │      │                  ╰ UID : 81d0a980aae4af20 
│                        │      ├ InstalledVersion: v1.25.12 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:feb46f3cb7040891cc4ade8675f32e8fbf4fd4176403141d8316
│                        │      │                   176402a5ee7c 
│                        │      ├ Title           : encoding/xml: golang: Go: Denial of Service via XML
│                        │      │                   decoding recursion depth issue 
│                        │      ├ Description     : Previously, DecodeElement would reset the depth counter
│                        │      │                   causing it to never fire; this could lead to stack
│                        │      │                   exhaustion. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-770
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65153             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65886             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56859        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2480756                          
│                        │      │                  https://bugzilla.redhat.com/2484204                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32280
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32281
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33811
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:65886                
│                        │      │                  https://go.dev/cl/803320                                     
│                        │      │                  https://go.dev/issue/80481                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-65895-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56859              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6088                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56859              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.32Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [16] ╭ VulnerabilityID : CVE-2026-56860 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6218
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.25.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                        │      │                  ╰ UID : 81d0a980aae4af20 
│                        │      ├ InstalledVersion: v1.25.12 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:e23da10e00b4e033e514e12c75e35ad9cfacd62b7d1fc95b796a
│                        │      │                   c8ccb3d905e0 
│                        │      ├ Title           : net/url: golang: golang net/url: Denial of Service from
│                        │      │                   quadratic complexity in path resolution 
│                        │      ├ Description     : Previously, resolving relative paths containing parent
│                        │      │                   directory ('..') segments performed string conversions and
│                        │      │                   buffer rewrites on each step, resulting in quadratic time
│                        │      │                   complexity and high memory allocation overhead. Now, path
│                        │      │                   resolution operates on a byte buffer using index-based
│                        │      │                   backtracking for '..' segments, eliminating the quadratic
│                        │      │                   time complexity and significantly reducing memory
│                        │      │                   allocations. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-407
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 5.9 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66364             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56860        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-66364.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:66364                
│                        │      │                  https://go.dev/cl/803681                                     
│                        │      │                  https://go.dev/issue/80494                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56860.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-67161-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56860              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6218                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56860              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.44Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ╰ [17] ╭ VulnerabilityID : CVE-2026-56862 
│                               ├ VendorIDs                    
│                               │                  ────────────
│                               │                  GO-2026-6090
│                               │                  
│                               ├ PkgID           : stdlib@v1.25.12 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                               │                  ╰ UID : 81d0a980aae4af20 
│                               ├ InstalledVersion: v1.25.12 
│                               ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                               │                  │         46f08562480eae743d4d8 
│                               │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                               │                            05c4003a8b390d4d4b2c2 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:578d615064a5024cb02e9bd7696ce9e0ad7d43fdbc27f0e91d6a
│                               │                   7df702e6db51 
│                               ├ Title           : crypto/tls: golang: Golang crypto/tls: Denial of Service
│                               │                   via indefinite KeyUpdate messages 
│                               ├ Description     : Handshake messages, such as KeyUpdate, are always
│                               │                   considered as state-advancing, regardless of whether a
│                               │                   handshake has been completed or not. As a result, a
│                               │                   malicious client can keep sending KeyUpdate messages to
│                               │                   force the server to keep performing key derivation
│                               │                   operations indefinitely. 
│                               ├ Severity        : HIGH 
│                               ├ CweIDs                  
│                               │                  ───────
│                               │                  CWE-770
│                               │                  
│                               ├ VendorSeverity   ╭ alma       : 3 
│                               │                  ├ amazon     : 3 
│                               │                  ├ bitnami    : 3 
│                               │                  ├ oracle-oval: 3 
│                               │                  ├ photon     : 3 
│                               │                  ├ redhat     : 3 
│                               │                  ╰ rocky      : 3 
│                               ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                               │                  │         │           :N/A:H 
│                               │                  │         ╰ V3Score : 7.5 
│                               │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                               │                            │           :N/A:H 
│                               │                            ╰ V3Score : 7.5 
│                               ├ References                                                                    
│                               │                  ─────────────────────────────────────────────────────────────
│                               │                  https://access.redhat.com/errata/RHSA-2026:66364             
│                               │                  https://access.redhat.com/security/cve/CVE-2026-56862        
│                               │                  https://bugzilla.redhat.com/2515815                          
│                               │                  https://bugzilla.redhat.com/2515820                          
│                               │                  https://bugzilla.redhat.com/2515839                          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                               │                  https://creativecommons.org/licenses/by/4.0/                 
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                               │                  https://errata.almalinux.org/9/ALSA-2026-66364.html          
│                               │                  https://errata.rockylinux.org/RLSA-2026:66364                
│                               │                  https://go.dev/cl/804261                                     
│                               │                  https://go.dev/issue/80528                                   
│                               │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                               │                  https://linux.oracle.com/cve/CVE-2026-56862.html             
│                               │                  https://linux.oracle.com/errata/ELSA-2026-67161-0.html       
│                               │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56862              
│                               │                  https://pkg.go.dev/vuln/GO-2026-6090                         
│                               │                  https://www.cve.org/CVERecord?id=CVE-2026-56862              
│                               │                  
│                               ├ PublishedDate   : 2026-08-13T22:17:22.55Z 
│                               ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
├ [13] ╭ Target         : usr/local/bin/k3d 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2025-15558 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-p436-gjf2-799p
│                        │      │                  
│                        │      ├ PkgID           : github.com/docker/cli@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/cli 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/cli@v28.5.2%2Bincompati
│                        │      │                  │       ble 
│                        │      │                  ╰ UID : 207ecb2699a7f1fb 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ FixedVersion    : 29.2.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-15558 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:102f20a3a0260a8135ad85b02265b16b880d4dcdd63557a51bf7
│                        │      │                   0d325b5bf306 
│                        │      ├ Title           : docker/cli: Docker CLI for Windows: Privilege escalation
│                        │      │                   via malicious plugin binaries 
│                        │      ├ Description     : Docker CLI for Windows searches for plugin binaries in
│                        │      │                   C:\ProgramData\Docker\cli-plugins, a directory that does
│                        │      │                   not exist by default. A low-privileged attacker can create
│                        │      │                   this directory and place malicious CLI plugin binaries
│                        │      │                   (docker-compose.exe, docker-buildx.exe, etc.) that are
│                        │      │                   executed when a victim user opens Docker Desktop or invokes
│                        │      │                    Docker CLI plugin features, and allow privilege-escalation
│                        │      │                    if the docker CLI is executed as a privileged user.
│                        │      │                   
│                        │      │                   This issue affects Docker CLI: through 29.1.5 and Windows
│                        │      │                   binaries acting as a CLI-plugin manager using the 
│                        │      │                   github.com/docker/cli/cli-plugins/manager
│                        │      │                   https://pkg.go.dev/github.com/docker/cli@v29.1.5+incompatib
│                        │      │                   le/cli-plugins/manager  package, such as Docker Compose.
│                        │      │                   This issue does not impact non-Windows binaries, and
│                        │      │                   projects not using the plugin-manager code. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-427
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ bitnami: 3 
│                        │      │                  ├ ghsa   : 3 
│                        │      │                  ├ nvd    : 3 
│                        │      │                  ╰ redhat : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:P/VC:
│                        │      │                  │         │            H/VI:H/VA:H/SC:N/SI:N/SA:N/AU:N/R:U[
│                        │      │                  │         │            m 
│                        │      │                  │         ╰ V40Score : 7 
│                        │      │                  ├ ghsa    ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:P/VC:
│                        │      │                  │         │            H/VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │         ╰ V40Score : 7 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I
│                        │      │                  │         │           :H/A:H 
│                        │      │                  │         ╰ V3Score : 8 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:H/I
│                        │      │                            │           :H/A:H 
│                        │      │                            ╰ V3Score : 7.3 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2025-15558       
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2444574         
│                        │      │                  https://docs.docker.com/desktop/release-notes               
│                        │      │                  https://docs.docker.com/desktop/release-notes/              
│                        │      │                  https://github.com/docker/cli                               
│                        │      │                  https://github.com/docker/cli/commit/13759330b1f7e7cb0d67047
│                        │      │                  ea42c5482548ba7fa                                           
│                        │      │                  https://github.com/docker/cli/pull/6713                     
│                        │      │                                                                              
│                        │      │                  https://github.com/docker/cli/security/advisories/GHSA-p436-
│                        │      │                  gjf2-799p                                                   
│                        │      │                  https://github.com/docker/compose/pull/12300                
│                        │      │                                                                              
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2025-15558             
│                        │      │                                                                              
│                        │      │                  https://security.access.redhat.com/data/csaf/v2/vex/2025/cve
│                        │      │                  -2025-15558.json                                            
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2025-15558             
│                        │      │                                                                              
│                        │      │                  https://www.zerodayinitiative.com/advisories/ZDI-CAN-28304  
│                        │      │                                                                              
│                        │      │                  https://www.zerodayinitiative.com/advisories/ZDI-CAN-28304/ 
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-03-04T17:16:14.763Z 
│                        │      ╰ LastModifiedDate: 2026-07-15T02:17:22.307Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-41567 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-x86f-5xw2-fm2r
│                        │      │                  
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:5114f373b904606e3d5073a0b7544e5fab8d70501681d7a001cf
│                        │      │                   9f594c914007 
│                        │      ├ Title           : docker: Moby/Docker Engine: Arbitrary Code Execution via
│                        │      │                   malicious container image and compressed archive upload 
│                        │      ├ Description     : Moby is an open source container framework. In versions
│                        │      │                   prior to 29.5.1 and in moby/moby v2 prior to
│                        │      │                   v2.0.0-beta.14, when a compressed archive is uploaded to a
│                        │      │                   container via `PUT /containers/{id}/archive` or piped
│                        │      │                   through `docker cp -`, the daemon resolves decompression
│                        │      │                   binaries (such as `xz` or `unpigz`) from the container's
│                        │      │                   filesystem rather than the host's due to incorrect ordering
│                        │      │                    of operations. A malicious container image containing a
│                        │      │                   trojanized decompression binary can achieve arbitrary code
│                        │      │                   execution with full daemon privileges, including host root
│                        │      │                   UID and unrestricted capabilities, when a user uploads a
│                        │      │                   compressed (xz or gzip) archive into that container. This
│                        │      │                   issue is fixed in Docker Engine 29.5.1 and moby/moby
│                        │      │                   v2.0.0-beta.14. Workarounds include only running containers
│                        │      │                    from trusted images, using authorization plugins to
│                        │      │                   restrict access to the `PUT /containers/{id}/archive`
│                        │      │                   endpoint, and avoiding piping compressed archives into
│                        │      │                   containers created from untrusted images 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-427
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ ghsa  : 3 
│                        │      │                  ├ photon: 3 
│                        │      │                  ╰ redhat: 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:
│                        │      │                  │        │           H/A:N 
│                        │      │                  │        ╰ V3Score : 7.2 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 7.5 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:37387            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41030            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42852            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:44622            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51057            
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-41567       
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2485356         
│                        │      │                  https://github.com/moby/moby                                
│                        │      │                  https://github.com/moby/moby/security/advisories/GHSA-x86f-5
│                        │      │                  xw2-fm2r                                                    
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-41567             
│                        │      │                                                                              
│                        │      │                  https://security.access.redhat.com/data/csaf/v2/vex/2026/cve
│                        │      │                  -2026-41567.json                                            
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-41567             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │      ╰ LastModifiedDate: 2026-09-09T13:19:53.313Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-42306 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-rg2x-37c3-w2rh
│                        │      │                  
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:3b2d52bec1570e72aef665d507db19424f36c1fd909b819458d3
│                        │      │                   922545c7a0cd 
│                        │      ├ Title           : github.com/docker/docker: github.com/moby/moby: Moby
│                        │      │                   container framework: Host file overwrite via race condition
│                        │      │                    in docker cp mount setup 
│                        │      ├ Description     : Moby is an open source container framework. In Docker
│                        │      │                   Engine prior to version 29.5.1, Docker Daemon versions
│                        │      │                   28.5.2 and prior, and Moby Daemon prior to version
│                        │      │                   2.0.0-beta.14, a race condition during docker cp mount
│                        │      │                   setup allows a malicious container to redirect a bind mount
│                        │      │                    target to an arbitrary host path, potentially overwriting
│                        │      │                   host files or causing denial of service. This issue has
│                        │      │                   been patched in Docker Engine version 29.5.1 and Moby
│                        │      │                   Daemon version 2.0.0-beta.14. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-61 
│                        │      │                  CWE-367
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ ghsa  : 3 
│                        │      │                  ├ nvd   : 3 
│                        │      │                  ├ photon: 3 
│                        │      │                  ╰ redhat: 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 7.2 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 7.2 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 7.2 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-42306       
│                        │      │                  https://github.com/moby/moby                                
│                        │      │                  https://github.com/moby/moby/security/advisories/GHSA-rg2x-3
│                        │      │                  7c3-w2rh                                                    
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-42306             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-42306             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-06-12T19:16:27.49Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:47:39.96Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-33997 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-pxq6-2prw-chj9
│                        │      │                  
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ FixedVersion    : 29.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:29a5150981f2143b0292faf3c35625807937df5d273e0a7e335e
│                        │      │                   927466e4b3d9 
│                        │      ├ Title           : moby: docker: github.com/moby/moby: Moby: Privilege
│                        │      │                   validation bypass during plugin installation 
│                        │      ├ Description     : Moby is an open source container framework. Prior to
│                        │      │                   version 29.3.1, a security vulnerability has been detected
│                        │      │                   that allows plugins privilege validation to be bypassed
│                        │      │                   during docker plugin install. Due to an error in the
│                        │      │                   daemon's privilege comparison logic, the daemon may
│                        │      │                   incorrectly accept a privilege set that differs from the
│                        │      │                   one approved by the user. Plugins that request exactly one
│                        │      │                   privilege are also affected, because no comparison is
│                        │      │                   performed at all. This issue has been patched in version
│                        │      │                   29.3.1. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-193
│                        │      │                  CWE-266
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ amazon: 2 
│                        │      │                  ├ ghsa  : 2 
│                        │      │                  ├ nvd   : 3 
│                        │      │                  ├ photon: 3 
│                        │      │                  ╰ redhat: 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           H/A:N 
│                        │      │                  │        ╰ V3Score : 6.8 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           H/A:N 
│                        │      │                  │        ╰ V3Score : 8.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:H/UI:R/S:C/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 8.4 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:21769            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:22347            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:23345            
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-33997       
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2453277         
│                        │      │                  https://docs.docker.com/engine/extend/legacy_plugins        
│                        │      │                  https://github.com/moby/moby                                
│                        │      │                  https://github.com/moby/moby/commit/f4d6f25bf0c3fa12d4968320
│                        │      │                  a45685947756a22a                                            
│                        │      │                  https://github.com/moby/moby/releases/tag/docker-v29.3.1    
│                        │      │                                                                              
│                        │      │                  https://github.com/moby/moby/security/advisories/GHSA-pxq6-2
│                        │      │                  prw-chj9                                                    
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-33997             
│                        │      │                                                                              
│                        │      │                  https://security.access.redhat.com/data/csaf/v2/vex/2026/cve
│                        │      │                  -2026-33997.json                                            
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-33997             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-03-31T03:15:57.523Z 
│                        │      ╰ LastModifiedDate: 2026-09-09T13:19:32.963Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-41568 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-vp62-88p7-qqf5
│                        │      │                  
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:06258c8f917b2ceda5310930830f5ddd3a591ccfe37bd5be2f6b
│                        │      │                   2354e896a8ad 
│                        │      ├ Title           : github.com/docker/docker: github.com/moby/moby: Moby:
│                        │      │                   Denial of Service via race condition in docker cp mount
│                        │      │                   setup 
│                        │      ├ Description     : Moby is an open source container framework. In Docker
│                        │      │                   Engine prior to version 29.5.1, Docker Daemon versions
│                        │      │                   28.5.2 and prior, and Moby Daemon prior to version
│                        │      │                   2.0.0-beta.14, a race condition during docker cp mount
│                        │      │                   setup allows a malicious container to create empty files or
│                        │      │                    directories at arbitrary absolute paths on the host
│                        │      │                   filesystem. This issue has been patched in Docker Engine
│                        │      │                   version 29.5.1 and Moby Daemon version 2.0.0-beta.14. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-81 
│                        │      │                  CWE-367
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ redhat: 1 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:
│                        │      │                  │        │           L/A:H 
│                        │      │                  │        ╰ V3Score : 6 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 3.9 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-41568       
│                        │      │                  https://github.com/moby/moby                                
│                        │      │                  https://github.com/moby/moby/security/advisories/GHSA-vp62-8
│                        │      │                  8p7-qqf5                                                    
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-41568             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-41568             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-06-12T19:16:26.907Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:46:51.787Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-17106 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-hfg8-hc9c-6c3h
│                        │      │                  
│                        │      ├ PkgID           : github.com/moby/go-archive@v0.1.0 
│                        │      ├ PkgName         : github.com/moby/go-archive 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/moby/go-archive@v0.1.0 
│                        │      │                  ╰ UID : 42caa8f464c7c613 
│                        │      ├ InstalledVersion: v0.1.0 
│                        │      ├ FixedVersion    : 0.3.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-17106 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:80daf31ecad122a7270d7462cdf52ebeaf8e0b25e016cc6cefee
│                        │      │                   695fd0c95ef4 
│                        │      ├ Title           : github.com/moby/go-archive: moby/go-archive: Arbitrary file
│                        │      │                    write via link following in tar extraction 
│                        │      ├ Description     : The tar extraction routines in moby/go-archive (Unpack,
│                        │      │                   UnpackLayer, Untar/UntarUncompressed, and the ApplyLayer
│                        │      │                   helpers) do not confine filesystem operations to the
│                        │      │                   destination directory. The extractor decides where each
│                        │      │                   archive entry lands using lexical string checks and then
│                        │      │                   performs the filesystem operation on a path that is
│                        │      │                   resolved by the OS, so links introduced by the archive can
│                        │      │                   be followed out of the destination directory. An attacker
│                        │      │                   who controls the contents of an archive can create or
│                        │      │                   overwrite files at arbitrary paths writable by the
│                        │      │                   extracting process. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                 
│                        │      │                  ──────
│                        │      │                  CWE-59
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ azure  : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ├ ghsa   : 3 
│                        │      │                  ╰ redhat : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:A/VC:
│                        │      │                  │         │            H/VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │         ╰ V40Score : 7.1 
│                        │      │                  ├ ghsa    ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:A/VC:
│                        │      │                  │         │            H/VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │         ╰ V40Score : 7.1 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │      │                            │           :H/A:H 
│                        │      │                            ╰ V3Score : 7.8 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-17106       
│                        │      │                  https://docs.docker.com/desktop/release-notes/#4860         
│                        │      │                  https://docs.docker.com/engine/release-notes/29/#2970       
│                        │      │                  https://github.com/bikini/exploitarium/tree/main/docker-cp-c
│                        │      │                  opyout-destination-escape                                   
│                        │      │                  https://github.com/docker/cli/releases/tag/v29.7.0          
│                        │      │                                                                              
│                        │      │                  https://github.com/docker/compose/releases/tag/v5.4.0       
│                        │      │                                                                              
│                        │      │                  https://github.com/docker/sbx-releases/releases/tag/v0.38.0 
│                        │      │                                                                              
│                        │      │                  https://github.com/masasron/CopyEscape-CVE-2026-17106       
│                        │      │                                                                              
│                        │      │                  https://github.com/moby/go-archive                          
│                        │      │                                                                              
│                        │      │                  https://github.com/moby/go-archive/releases/tag/v0.3.0      
│                        │      │                                                                              
│                        │      │                  https://github.com/moby/go-archive/security/advisories/GHSA-
│                        │      │                  hfg8-hc9c-6c3h                                              
│                        │      │                  https://github.com/moby/moby/issues/52948                   
│                        │      │                                                                              
│                        │      │                  https://github.com/moby/moby/releases/tag/docker-v29.7.0    
│                        │      │                                                                              
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-17106             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-17106             
│                        │      │                                                                              
│                        │      │                  https://www.imperva.com/blog/copyescape-taking-over-docker-h
│                        │      │                  osts-with-docker-cp                                         
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-18T19:16:45.03Z 
│                        │      ╰ LastModifiedDate: 2026-08-28T15:29:44.967Z 
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-56864 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6180
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/mod@v0.36.0 
│                        │      ├ PkgName         : golang.org/x/mod 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/mod@v0.36.0 
│                        │      │                  ╰ UID : 19d487a996824e80 
│                        │      ├ InstalledVersion: v0.36.0 
│                        │      ├ FixedVersion    : 0.40.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56864 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:c47a7a7608ceb6367e87d87f5342fe1f7f89bfe8bc95813a2be0
│                        │      │                   7d6a80408829 
│                        │      ├ Title           : golang.org/x/mod/sumdb: golang.org/x/mod/sumdb: Integrity
│                        │      │                   bypass via malicious GOSUMDB 
│                        │      ├ Description     : A malicious GOSUMDB was capable of serving arbitrary module
│                        │      │                    content not contained within the transparency log. This
│                        │      │                   attack allows for a coordinating GOPROXY and GOSUMDB to
│                        │      │                   serve a client malicious module content that cannot be
│                        │      │                   detected by evaluating the transparency log. In order to
│                        │      │                   determine if you have been affected:   rm -r go.sum
│                        │      │                   go.work.sum vendor/ && go mod tidy 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-347
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ├ photon : 3 
│                        │      │                  ╰ redhat : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                        │      │                  │         │           :N/A:N 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │      │                            │           :H/A:N 
│                        │      │                            ╰ V3Score : 8.1 
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56864    
│                        │      │                  https://go.dev/cl/815000                                 
│                        │      │                  https://go.dev/cl/815020                                 
│                        │      │                  https://go.dev/issue/80745                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56864          
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6180                     
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56864          
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.677Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-56865 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6179
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/mod@v0.36.0 
│                        │      ├ PkgName         : golang.org/x/mod 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/mod@v0.36.0 
│                        │      │                  ╰ UID : 19d487a996824e80 
│                        │      ├ InstalledVersion: v0.36.0 
│                        │      ├ FixedVersion    : 0.40.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56865 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:85c9ef8e8163c7e26b5ba5d151e189edade79774d8cc7ed55436
│                        │      │                   71c89925e4e9 
│                        │      ├ Title           : golang.org/x/mod/sumdb/tlog: golang.org/x/mod/sumdb/tlog:
│                        │      │                   Supply chain compromise via transparency log tile
│                        │      │                   verification bypass 
│                        │      ├ Description     : A malicious GOPROXY was previously capable of forging up to
│                        │      │                    two sumdb tiles that allow for a requested module to
│                        │      │                   bypass the GOSUMDB check and persist attacker-controlled
│                        │      │                   module content to a local Go module cache. This attack
│                        │      │                   allows for a malicious GOPROXY to serve malicious module
│                        │      │                   content that cannot be detected by evaluating the
│                        │      │                   transparency log. All tiles are now correctly verified
│                        │      │                   against their parents. In order to determine if you have
│                        │      │                   been affected:   rm -r go.sum go.work.sum vendor/ && go mod
│                        │      │                    tidy 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-347
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ├ photon : 3 
│                        │      │                  ╰ redhat : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:H/I
│                        │      │                  │         │           :H/A:H 
│                        │      │                  │         ╰ V3Score : 8.4 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │      │                            │           :H/A:H 
│                        │      │                            ╰ V3Score : 8.8 
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56865    
│                        │      │                  https://go.dev/cl/814960                                 
│                        │      │                  https://go.dev/cl/815020                                 
│                        │      │                  https://go.dev/issue/80744                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56865          
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6179                     
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56865          
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.797Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-46600 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5942
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/net@v0.55.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.55.0 
│                        │      │                  ╰ UID : 2f843a7f8b510757 
│                        │      ├ InstalledVersion: v0.55.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0986a17c336fe37612a32a2256c3da9688ca71c4f94bee941854
│                        │      │                   15cc09c2e495 
│                        │      ├ Title           : golang.org/x/net/dns/dnsmessage:
│                        │      │                   golang.org/x/net/dns/dnsmessage: Denial of Service via
│                        │      │                   invalid DNS record parsing 
│                        │      ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a parameter value overflows the message buffer. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-125
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ azure  : 2 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ╰ redhat : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-46600    
│                        │      │                  https://go.dev/cl/786345                                 
│                        │      │                  https://go.dev/issue/79795                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-46600          
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5942                     
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-46600          
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
│                        │      ╰ LastModifiedDate: 2026-08-14T16:16:55.673Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-56852 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5970
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/text@v0.37.0 
│                        │      ├ PkgName         : golang.org/x/text 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.37.0 
│                        │      │                  ╰ UID : 8481703a747ddd9e 
│                        │      ├ InstalledVersion: v0.37.0 
│                        │      ├ FixedVersion    : 0.39.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:84bb54f3d7e03c2d1e846bc3eb17cfb93d1ed1866ad90c02bd4f
│                        │      │                   c85f1b34dc19 
│                        │      ├ Title           : golang.org/x/text: golang.org/x/text: Denial of Service via
│                        │      │                    invalid UTF-8 input 
│                        │      ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │      │                   containing invalid UTF-8 bytes. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-835
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 3 
│                        │      │                  ╰ redhat: 3 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 7.5 
│                        │      ├ References                                                            
│                        │      │                  ─────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56852
│                        │      │                  https://go.dev/cl/794100                             
│                        │      │                  https://go.dev/issue/80142                           
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56852      
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5970                 
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56852      
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-21T20:17:02.867Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-84304 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-vp52-pcj8-j9qc
│                        │      │                  
│                        │      ├ PkgID           : google.golang.org/grpc@v1.81.1 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.81.1 
│                        │      │                  ╰ UID : 53f12763215d3977 
│                        │      ├ InstalledVersion: v1.81.1 
│                        │      ├ FixedVersion    : 1.83.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84304 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:aa712539074ccf4ff23482b8b55995a16b23d29311a4f3f923bd
│                        │      │                   7c6f7afca7c9 
│                        │      ├ Title           : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.83.1, in ... 
│                        │      ├ Description     : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.83.1, internal/transport/transport.go stores each
│                        │      │                   fragmented HTTP/2 DATA frame as a separate recvMsg in
│                        │      │                   recvBuffer, so millions of one-byte frames can consume
│                        │      │                   disproportionate heap memory even when payload bytes remain
│                        │      │                    within connection and stream flow-control windows. An
│                        │      │                   unauthenticated remote attacker can use concurrent
│                        │      │                   multiplexed streams to exhaust process memory and cause a
│                        │      │                   runtime panic or out-of-memory termination. Receive-buffer
│                        │      │                   compaction is enabled by default and can be controlled
│                        │      │                   temporarily with
│                        │      │                   GRPC_GO_EXPERIMENTAL_ENABLE_RECEIVE_BUFFER_COMPACTION. This
│                        │      │                    issue is fixed in version 1.83.1. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-400
│                        │      │                  
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/V
│                        │      │                         │            I:N/VA:H/SC:N/SI:N/SA:N 
│                        │      │                         ╰ V40Score : 8.7 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://github.com/grpc/grpc-go                             
│                        │      │                  https://github.com/grpc/grpc-go/commit/7354d9c8debb4bcf2225b
│                        │      │                  f429857078de310c176                                         
│                        │      │                  https://github.com/grpc/grpc-go/commit/8cfeca0e1ee5ea0980dcc
│                        │      │                  320e20240fa1079ec77                                         
│                        │      │                  https://github.com/grpc/grpc-go/pull/9331                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/pull/9333                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/releases/tag/v1.83.1        
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/security/advisories/GHSA-vp5
│                        │      │                  2-pcj8-j9qc                                                 
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-84304             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-01T19:17:30.743Z 
│                        │      ╰ LastModifiedDate: 2026-09-09T21:09:13.08Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-84445 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-2v4p-qf9q-27wj
│                        │      │                  
│                        │      ├ PkgID           : google.golang.org/grpc@v1.81.1 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.81.1 
│                        │      │                  ╰ UID : 53f12763215d3977 
│                        │      ├ InstalledVersion: v1.81.1 
│                        │      ├ FixedVersion    : 1.82.2, 1.83.2, 1.85.0-dev.0.20260825072537-93e31b48545e 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84445 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:6879bbf126fee5dcfec96d4a6ddfa2cff32a85867e47672ef575
│                        │      │                   8bb4abbfbf4e 
│                        │      ├ Title           : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.82.2 and ... 
│                        │      ├ Description     : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.82.2 and 1.83.2, servers created with
│                        │      │                   xds.NewGRPCServer() allow
│                        │      │                   internal/transport/http2_server.go to accept an RPC
│                        │      │                   containing neither the :authority header nor the Host
│                        │      │                   header, while RouteAndProcess in
│                        │      │                   internal/xds/server/routing.go assumes that an authority
│                        │      │                   value exists and indexes the empty slice. A remote client
│                        │      │                   that can complete transport connection establishment can
│                        │      │                   trigger an index-out-of-bounds panic that is not recovered
│                        │      │                   by the per-RPC goroutine and terminates the entire server
│                        │      │                   process. In insecure or ordinary TLS deployments the
│                        │      │                   request can be unauthenticated, while strict mTLS or ALTS
│                        │      │                   deployments require valid transport credentials before the
│                        │      │                   malformed RPC can reach the interceptor. This issue is
│                        │      │                   fixed in versions 1.82.2 and 1.83.2. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-129
│                        │      │                  CWE-248
│                        │      │                  
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://github.com/grpc/grpc-go                             
│                        │      │                  https://github.com/grpc/grpc-go/commit/3822494d8ea03b992c089
│                        │      │                  fd2a195f041762fffb7                                         
│                        │      │                  https://github.com/grpc/grpc-go/commit/8668b69c167df908b6b36
│                        │      │                  66dcbf40992b9e932a4                                         
│                        │      │                  https://github.com/grpc/grpc-go/commit/93e31b48545e2a8aaeb6e
│                        │      │                  06b47fb249f94e6297f                                         
│                        │      │                  https://github.com/grpc/grpc-go/issues/9354                 
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/pull/9365                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/pull/9366                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/pull/9367                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/releases/tag/v1.82.2        
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/releases/tag/v1.83.2        
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/security/advisories/GHSA-2v4
│                        │      │                  p-qf9q-27wj                                                 
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-14T17:17:51.743Z 
│                        │      ╰ LastModifiedDate: 2026-09-14T17:17:51.743Z 
│                        ├ [12] ╭ VulnerabilityID : GHSA-hrxh-6v49-42gf 
│                        │      ├ PkgID           : google.golang.org/grpc@v1.81.1 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.81.1 
│                        │      │                  ╰ UID : 53f12763215d3977 
│                        │      ├ InstalledVersion: v1.81.1 
│                        │      ├ FixedVersion    : 1.82.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:bd27d1f623c1c906a5aa66f942699228a95a4b16af14982841c9
│                        │      │                   ee42da08b91c 
│                        │      ├ Title           : gRPC-Go: xDS RBAC and HTTP/2 Vulnerabilities 
│                        │      ├ Description     : Multiple security vulnerabilities have been identified and
│                        │      │                   addressed in grpc-go affecting the xDS RBAC authorization
│                        │      │                   engine (internal/xds/rbac) and the HTTP/2 transport server
│                        │      │                   implementation (internal/transport). These vulnerabilities
│                        │      │                   could result in:
│                        │      │                   
│                        │      │                   - Authorization Bypass (Fail-Open) when translating xDS
│                        │      │                   RBAC policies containing `Metadata` or
│                        │      │                   `RequestedServerName` fields.
│                        │      │                   - Denial of Service (High CPU Consumption) due to an HTTP/2
│                        │      │                    Rapid Reset mitigation bypass during client-initiated
│                        │      │                   stream resets.
│                        │      │                   - Denial of Service (Server Panic) when parsing crafted xDS
│                        │      │                    RBAC policies containing `NOT` rules around unsupported
│                        │      │                   fields.
│                        │      │                   ### Impact
│                        │      │                   _What kind of vulnerability is it? Who is impacted?_
│                        │      │                   #### xDS RBAC Authorization Bypass via `Metadata` &
│                        │      │                   `RequestedServerName` matchers
│                        │      │                   - Affected Component: xDS RBAC 
│                        │      │                   - Impact: When building policy matchers for gRPC RBAC from
│                        │      │                   xDS configurations, unsupported `permission` and
│                        │      │                   `principal` rules (specifically `Metadata` and
│                        │      │                   `RequestedServerName`) were silently ignored and treated as
│                        │      │                    no-ops.
│                        │      │                     - If an authorization policy relied purely on these
│                        │      │                   matchers for access control, treating those rules as no-ops
│                        │      │                    effectively removed the restrictions.
│                        │      │                   - If these unsupported rules were nested inside logical
│                        │      │                   `NOT` rules (`Permission_NotRule` / `Principal_NotId`) or
│                        │      │                   multi-condition `OR/AND` rules, silently dropping them
│                        │      │                   changed the boolean logic flow of the authorization
│                        │      │                   engine.
│                        │      │                   As a result, policy evaluation decisions could fail open,
│                        │      │                   allowing unauthorized clients to access protected gRPC
│                        │      │                   services or resources.
│                        │      │                   #### HTTP/2 Rapid Reset Mitigation Bypass / Denial of
│                        │      │                   Service via Stream Aborts
│                        │      │                   - Affected Component: HTTP/2 transport
│                        │      │                   - Impact: Earlier mitigations in grpc-go for HTTP/2 Rapid
│                        │      │                   Reset only applied threshold checks to items that directly
│                        │      │                   resulted in control frames being written back to the wire,
│                        │      │                   such as `SETTINGS` ACKs or server-initiated `RST_STREAM`s.
│                        │      │                   When a client initiated a rapid flood of stream creation
│                        │      │                   (`HEADERS`) immediately followed by stream termination
│                        │      │                   `RST_STREAM`, items queued up in the control buffer without
│                        │      │                    counting against the transport response frame threshold.
│                        │      │                   An attacker can repeatedly trigger this flood sequence to
│                        │      │                   bypass reader blocking, resulting in high CPU usage, and
│                        │      │                   Denial of Service (DoS).
│                        │      │                   #### Denial of Service (Panic) in xDS RBAC Engine via
│                        │      │                   Unsupported Fields inside NOT Rules
│                        │      │                   - Impact: The xDS RBAC policy translators recursively
│                        │      │                   generate matchers for nested rules. When a `NOT` rule
│                        │      │                   wrapped an unsupported or unhandled field (such as
│                        │      │                   `SourcedMetadata`), the recursive step returned an empty
│                        │      │                   matcher. This could result in a runtime panic when the RBAC
│                        │      │                    engine attempts to authorize an incoming request.
│                        │      │                   An attacker or misconfigured/malicious xDS management
│                        │      │                   server delivering an LDS/RDS update containing a `NOT` rule
│                        │      │                    around an unhandled field causes the gRPC server process
│                        │      │                   to crash immediately (CWE-248 / Denial of Service).
│                        │      │                   ### Patches
│                        │      │                   _Has the problem been patched? What versions should users
│                        │      │                   upgrade to?_
│                        │      │                   All three issues have been fixed in `master` and will be
│                        │      │                   released in 1.82.1 shortly.
│                        │      │                   ### Workarounds
│                        │      │                   _Is there a way for users to fix or remediate the
│                        │      │                   vulnerability without upgrading?_
│                        │      │                   If upgrading grpc-go immediately is not possible, apply the
│                        │      │                    following workarounds based on your deployment
│                        │      │                   architecture:
│                        │      │                   * For xDS RBAC Vulnerabilities & Panics: Ensure that
│                        │      │                   upstream xDS management servers do not push RBAC policies
│                        │      │                   containing `Metadata`, `RequestedServerName`, or `NOT`
│                        │      │                   rules wrapping unsupported fields (such as
│                        │      │                   `SourcedMetadata`) to grpc-go servers.
│                        │      │                   * For HTTP/2 Rapid Reset DOS: Configure upstream reverse
│                        │      │                   proxies or load balancers (such as Envoy) with strict
│                        │      │                   HTTP/2 `max_concurrent_streams` limits and active rate
│                        │      │                   limiting on `RST_STREAM` frequency per connection.
│                        │      │                   ### Severity
│                        │      │                     | Vulnerability | Qualitative Severity | Approximate CVSS
│                        │      │                    v3.1 Score | Primary Impact |
│                        │      │                     | :--- | :--- | :--- | :--- |
│                        │      │                     | **xDS RBAC Authorization Bypass** | **High** | `8.2` |
│                        │      │                   Unauthorized Access / Fail-Open |
│                        │      │                     | **HTTP/2 Rapid Reset DOS Bypass** | **High** | `7.5` |
│                        │      │                   High CPU Consumption / Denial of Service |
│                        │      │                     | **xDS RBAC Engine Server Panic** | **Medium** | `5.9` |
│                        │      │                    Process Crash / Denial of Service | 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/V
│                        │      │                         │            I:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                         ╰ V40Score : 8.8 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://github.com/grpc/grpc-go                             
│                        │      │                  https://github.com/grpc/grpc-go/commit/4ea465d4ab98013f72a14
│                        │      │                  2fe0fc89c19770b2935                                         
│                        │      │                  https://github.com/grpc/grpc-go/pull/9236                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/releases/tag/v1.82.1        
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/security/advisories/GHSA-hrx
│                        │      │                  h-6v49-42gf                                                 
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-21T22:03:55Z 
│                        │      ╰ LastModifiedDate: 2026-07-21T22:03:56Z 
│                        ├ [13] ╭ VulnerabilityID : CVE-2026-84303 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-qc2q-p7wx-3px3
│                        │      │                  
│                        │      ├ PkgID           : google.golang.org/grpc@v1.81.1 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.81.1 
│                        │      │                  ╰ UID : 53f12763215d3977 
│                        │      ├ InstalledVersion: v1.81.1 
│                        │      ├ FixedVersion    : 1.83.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84303 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:7b3d70a2a9e1274a37c27bf58deaa09769a8c9636b7c2be2765c
│                        │      │                   c02809d223bc 
│                        │      ├ Title           : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.83.1, th ... 
│                        │      ├ Description     : gRPC-Go is the Go language implementation of gRPC. Prior to
│                        │      │                    1.83.1, the xDS RBAC HTTP filter in
│                        │      │                   internal/xds/httpfilter/rbac/rbac.go does not lowercase
│                        │      │                   header matcher names in normalizeHeaderMatcher even though
│                        │      │                   incoming metadata keys are lowercase. A DENY policy using a
│                        │      │                    mixed-case name such as X-Role or User-Agent therefore
│                        │      │                   does not match and fails open, allowing requests that
│                        │      │                   should be rejected. The same case mismatch permits :Scheme
│                        │      │                   or Grpc-Status to evade gRFC A41 validation and prevents
│                        │      │                   Host from being rewritten to :authority. This issue is
│                        │      │                   fixed in version 1.83.1. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-178
│                        │      │                  CWE-863
│                        │      │                  
│                        │      ├ VendorSeverity   ─ ghsa: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:N/UI:N/VC:L/V
│                        │      │                         │            I:L/VA:N/SC:N/SI:N/SA:N 
│                        │      │                         ╰ V40Score : 6.3 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://github.com/grpc/grpc-go                             
│                        │      │                  https://github.com/grpc/grpc-go/commit/db9482836c298f234c896
│                        │      │                  cf82ab68cafc78237f8                                         
│                        │      │                  https://github.com/grpc/grpc-go/commit/ebba6f3f1b206e2b4dc4d
│                        │      │                  1d5a96d18430302c2fe                                         
│                        │      │                  https://github.com/grpc/grpc-go/pull/9332                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/pull/9335                   
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/releases/tag/v1.83.1        
│                        │      │                                                                              
│                        │      │                  https://github.com/grpc/grpc-go/security/advisories/GHSA-qc2
│                        │      │                  q-p7wx-3px3                                                 
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-84303             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-01T19:17:30.6Z 
│                        │      ╰ LastModifiedDate: 2026-09-09T21:09:13.08Z 
│                        ├ [14] ╭ VulnerabilityID : CVE-2026-27145 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5037
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:99f2a0cf855ea4b67436508d0833e50ec56a35abcaf87f193fb0
│                        │      │                   d57d654a5f55 
│                        │      ├ Title           : crypto/x509: golang: golang crypto/x509: Denial of Service
│                        │      │                   via excessive processing of DNS SAN entries 
│                        │      ├ Description     : (*x509.Certificate).VerifyHostname previously called
│                        │      │                   matchHostnames in a loop over all DNS Subject Alternative
│                        │      │                   Name (SAN) entries. This caused strings.Split(host, ".") to
│                        │      │                    execute repeatedly on the same input hostname. With a
│                        │      │                   large DNS SAN list, verification costs scaled quadratically
│                        │      │                    based on the number of SAN entries multiplied by the
│                        │      │                   hostname's label count. Because x509.Verify validates
│                        │      │                   hostnames before building the certificate chain, this
│                        │      │                   overhead occurred even for untrusted certificates. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-606
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:23262            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:23264            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:29980            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:29981            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33574            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34357            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34359            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35832            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36317            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36648            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36797            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:38995            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:39005            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:39573            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:39879            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41030            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41036            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41930            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42043            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42047            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42049            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42050            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42051            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42079            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42080            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42082            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42142            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42150            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42151            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42240            
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56855             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42946            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:44622            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:46394            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:46395            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:47149            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:47735            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:47737            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49702            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49703            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49705            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49712            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49729            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49744            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49765            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49770            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:50205            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:50319            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51057            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51187            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:52946            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53374            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53412            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53413            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53415            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53416            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53530            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54168            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54401            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54427            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54432            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54435            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54441            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54500            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54525            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54531            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54603            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54757            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:55899            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57194            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57482            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57488            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57649            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59556            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59557            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59558            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59559            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59579            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59593            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60025            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60315            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60354            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60386            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60387            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60388            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60390            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60391            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:61253            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:61314            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63016            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66022            
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-27145       
│                        │      │                  https://bugzilla.redhat.com/2445356                         
│                        │      │                  https://bugzilla.redhat.com/2484207                         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2445356         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484207         
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-2567
│                        │      │                  9                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-2714
│                        │      │                  5                                                           
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-36317.html         
│                        │      │                                                                              
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:36317               
│                        │      │                                                                              
│                        │      │                  https://go.dev/cl/783621                                    
│                        │      │                                                                              
│                        │      │                  https://go.dev/issue/79694                                  
│                        │      │                                                                              
│                        │      │                  https://groups.google.com/g/golang-announce/c/tKs3rmcBcKw   
│                        │      │                                                                              
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-27145.html            
│                        │      │                                                                              
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-46395.html        
│                        │      │                                                                              
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-27145             
│                        │      │                                                                              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5037                        
│                        │      │                                                                              
│                        │      │                  https://security.access.redhat.com/data/csaf/v2/vex/2026/cve
│                        │      │                  -2026-27145.json                                            
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-27145             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │      ╰ LastModifiedDate: 2026-09-11T13:17:23.34Z 
│                        ├ [15] ╭ VulnerabilityID : CVE-2026-33818 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5972
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:1840ca4ec01c432004f110b0248fb4080f474ad798293513bb4e
│                        │      │                   9dcb6d4e1245 
│                        │      ├ Title           : encoding/asn1: golang: Go encoding/asn1: Denial of Service
│                        │      │                   via excessive recursion in Unmarshal 
│                        │      ├ Description     : Enforce a recursion limit in Unmarshal to prevent stack
│                        │      │                   exhaustion when parsing deeply-nested, recursive
│                        │      │                   structures. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-400
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66364             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-33818        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-66364.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:66364                
│                        │      │                  https://go.dev/cl/814980                                     
│                        │      │                  https://go.dev/issue/80405                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-33818.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-67161-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-33818              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5972                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-33818              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:19.84Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [16] ╭ VulnerabilityID : CVE-2026-39821 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5026
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:dbb87f68c5ed0767ad516d4803a096adf66b36e29dda2468914b
│                        │      │                   4dd27a6264a5 
│                        │      ├ Title           : golang.org/x/net/idna: golang: net/http:
│                        │      │                   golang.org/x/net/idna: Privilege escalation via incorrect
│                        │      │                   Punycode label processing 
│                        │      ├ Description     : The ToASCII and ToUnicode functions incorrectly accept
│                        │      │                   Punycode-encoded labels that decode to an ASCII-only label.
│                        │      │                    For example, ToUnicode("xn--example-.com") incorrectly
│                        │      │                   returns the name "example.com" rather than an error. This
│                        │      │                   behavior can lead to privilege escalation in programs using
│                        │      │                    the idna package. For example, a program which performs
│                        │      │                   privilege checks on the ASCII hostname may reject
│                        │      │                   "example.com" but permit "xn--example-.com". If that
│                        │      │                   program subsequently converts the ASCII hostname to
│                        │      │                   Unicode, it will inadvertently permits access to the
│                        │      │                   Unicode name "example.com". 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                   
│                        │      │                  ────────
│                        │      │                  CWE-1289
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 4 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 8.2 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:23262            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:23264            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:26546            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:26547            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:30650            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:30651            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:30853            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:30854            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:30855            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33155            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33160            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33163            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33173            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33183            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33524            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33531            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34342            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34357            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34359            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34364            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:34789            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35826            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35827            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35828            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35829            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35830            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35831            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35993            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35994            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36105            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36167            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36207            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36648            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36651            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36796            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36797            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36808            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36820            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36883            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:37387            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:37435            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:37436            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:38995            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:39005            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:39573            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:39879            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:40118            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:40262            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:40945            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41019            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41030            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41031            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41036            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41055            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41066            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41928            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:41930            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42043            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42047            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42048            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42049            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42050            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42051            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42078            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42079            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42080            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42082            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42132            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42142            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42146            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42150            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42151            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42240            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42644            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42796            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42852            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:43038            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:43052            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:43692            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:44622            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:44624            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:46395            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:47149            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:47735            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:47737            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:47952            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49702            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:49712            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:50300            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:50843            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51033            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51112            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51187            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51194            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:51341            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:52826            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53374            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53412            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53413            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53415            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:53530            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54191            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54274            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54283            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54284            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54285            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54286            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54287            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54395            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54401            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54435            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54441            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54531            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54580            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54757            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:56143            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:56223            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:56340            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:56431            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57194            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57541            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57649            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57845            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59546            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59549            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59562            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60315            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60354            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60387            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60520            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:61245            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:61253            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62549            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63134            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65126            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65153            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65359            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65534            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65886            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66016            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66022            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66350            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66432            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67149            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67159            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67160            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67287            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67319            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:67517            
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-39821       
│                        │      │                  https://bugzilla.redhat.com/2467809                         
│                        │      │                  https://bugzilla.redhat.com/2467820                         
│                        │      │                  https://bugzilla.redhat.com/2480756                         
│                        │      │                  https://bugzilla.redhat.com/2484204                         
│                        │      │                  https://bugzilla.redhat.com/2515815                         
│                        │      │                  https://bugzilla.redhat.com/2515820                         
│                        │      │                  https://bugzilla.redhat.com/2515827                         
│                        │      │                  https://bugzilla.redhat.com/2515838                         
│                        │      │                  https://bugzilla.redhat.com/2515839                         
│                        │      │                  https://bugzilla.redhat.com/2515840                         
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:23264            
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840         
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3228
│                        │      │                  0                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3228
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3381
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3381
│                        │      │                  8                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  0                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-4249
│                        │      │                  9                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-4250
│                        │      │                  4                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5685
│                        │      │                  3                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5685
│                        │      │                  8                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5685
│                        │      │                  9                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5686
│                        │      │                  0                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5686
│                        │      │                  2                                                           
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html         
│                        │      │                                                                              
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:65886               
│                        │      │                                                                              
│                        │      │                  https://github.com/golang/go/issues/78760                   
│                        │      │                                                                              
│                        │      │                  https://go.dev/cl/767220                                    
│                        │      │                                                                              
│                        │      │                  https://go.dev/issue/78760                                  
│                        │      │                                                                              
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI   
│                        │      │                                                                              
│                        │      │                  https://groups.google.com/g/golang-announce/c/iI-mYSI0lu8   
│                        │      │                                                                              
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-39821.html            
│                        │      │                                                                              
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-66432-0.html      
│                        │      │                                                                              
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-39821             
│                        │      │                                                                              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5026                        
│                        │      │                                                                              
│                        │      │                  https://security.access.redhat.com/data/csaf/v2/vex/2026/cve
│                        │      │                  -2026-39821.json                                            
│                        │      │                  https://ubuntu.com/security/notices/USN-8416-1              
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-39821             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
│                        │      ╰ LastModifiedDate: 2026-09-15T12:17:34.803Z 
│                        ├ [17] ╭ VulnerabilityID : CVE-2026-39822 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-4970
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:701e137bcf1aeeb0f5d0a2b75311e182b183e44795c0544ce702
│                        │      │                   8ddaf3be53c1 
│                        │      ├ Title           : golang: Go os.Root: Symlink following vulnerability allows
│                        │      │                   directory traversal 
│                        │      ├ Description     : On Unix systems, opening a file in an os.Root improperly
│                        │      │                   follows symlinks to locations outside of the Root when the
│                        │      │                   final path component of the a path is a symbolic link and
│                        │      │                   the path ends in /. For example, 'root.Open("symlink/")'
│                        │      │                   will open "symlink" even when "symlink" is a symbolic link
│                        │      │                   pointing outside of the root. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                 
│                        │      │                  ──────
│                        │      │                  CWE-61
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I
│                        │      │                  │         │           :H/A:H 
│                        │      │                  │         ╰ V3Score : 7.8 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I
│                        │      │                            │           :H/A:H 
│                        │      │                            ╰ V3Score : 7.8 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:38878             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-39822        
│                        │      │                  https://bugzilla.redhat.com/2498152                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2498152          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39822
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-38878.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:38878                
│                        │      │                  https://go.dev/cl/797880                                     
│                        │      │                  https://go.dev/issue/79005                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/OrmQE_Yp5Sc    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-39822.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-38995.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-39822              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-4970                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-39822              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-08T17:17:21.31Z 
│                        │      ╰ LastModifiedDate: 2026-07-13T14:54:26.317Z 
│                        ├ [18] ╭ VulnerabilityID : CVE-2026-42504 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5038
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:d79be42f45dee012af1826662a470dd63ac868522f21b4a7a235
│                        │      │                   1cd9e7dbabee 
│                        │      ├ Title           : mime: golang: Golang MIME: Denial of Service via
│                        │      │                   maliciously-crafted MIME header 
│                        │      ├ Description     : Decoding a maliciously-crafted MIME header containing many
│                        │      │                   invalid encoded-words can consume excessive CPU. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-407
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65153             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65886             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-42504        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2480756                          
│                        │      │                  https://bugzilla.redhat.com/2484204                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32280
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32281
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33811
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:65886                
│                        │      │                  https://go.dev/cl/774481                                     
│                        │      │                  https://go.dev/issue/79217                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/tKs3rmcBcKw    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-42504.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-65895-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-42504              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5038                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-42504              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │      ╰ LastModifiedDate: 2026-07-22T19:10:00.12Z 
│                        ├ [19] ╭ VulnerabilityID : CVE-2026-46600 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5942
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:609cd82bd2837336d9b5db952ff0ee6c2bbd242286640b6fe7d8
│                        │      │                   31aebb94e6f9 
│                        │      ├ Title           : golang.org/x/net/dns/dnsmessage:
│                        │      │                   golang.org/x/net/dns/dnsmessage: Denial of Service via
│                        │      │                   invalid DNS record parsing 
│                        │      ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a parameter value overflows the message buffer. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-125
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ azure  : 2 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ╰ redhat : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-46600    
│                        │      │                  https://go.dev/cl/786345                                 
│                        │      │                  https://go.dev/issue/79795                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-46600          
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5942                     
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-46600          
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
│                        │      ╰ LastModifiedDate: 2026-08-14T16:16:55.673Z 
│                        ├ [20] ╭ VulnerabilityID : CVE-2026-56853 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6089
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:8ba5401c579b25a299255897d6a9dd66a35d8cf9a5457bcf66bb
│                        │      │                   361c12b56a49 
│                        │      ├ Title           : net/http: golang: Go net/http: Unencrypted HTTP/2
│                        │      │                   connections vulnerable to Denial of Service 
│                        │      ├ Description     : When a server is configured to support unencrypted HTTP/2,
│                        │      │                   it reads a few bytes from each new connection to see if
│                        │      │                   they contain the HTTP/2 client preface. ReadHeaderTimeout
│                        │      │                   is unexpectedly not being applied when doing this. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-770
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65153             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65886             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56853        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2480756                          
│                        │      │                  https://bugzilla.redhat.com/2484204                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32280
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32281
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33811
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56859              
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:65886                
│                        │      │                  https://go.dev/cl/795540                                     
│                        │      │                  https://go.dev/issue/80205                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56853.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-65895-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56853              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6089                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56853              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.093Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [21] ╭ VulnerabilityID : CVE-2026-56858 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6091
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:bae83c99e6e316a849e08961d45004bbf679ebfbd3b8eaccf57d
│                        │      │                   283079236b74 
│                        │      ├ Title           : html/template: golang: Go html/template: Cross-Site
│                        │      │                   Scripting via pathological input 
│                        │      ├ Description     : Previously, pathological inputs could close an unescaped
│                        │      │                   '/' early, allowing for attack-controlled data to inject
│                        │      │                   arbitrary content, potentially leading to XSS. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                 
│                        │      │                  ──────
│                        │      │                  CWE-79
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                  │         │           :L/A:N 
│                        │      │                  │         ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │      │                            │           :H/A:N 
│                        │      │                            ╰ V3Score : 8.1 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65153             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65886             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56858        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2480756                          
│                        │      │                  https://bugzilla.redhat.com/2484204                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32280
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32281
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33811
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:65886                
│                        │      │                  https://go.dev/cl/807100                                     
│                        │      │                  https://go.dev/issue/80435                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56858.html             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66364             
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56858              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6091                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56858              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.207Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [22] ╭ VulnerabilityID : CVE-2026-56859 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6088
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:10e81bdfe13f70976df422ddf50daeeb34f1c9d114cf60d50c04
│                        │      │                   30c6c3795c7b 
│                        │      ├ Title           : encoding/xml: golang: Go: Denial of Service via XML
│                        │      │                   decoding recursion depth issue 
│                        │      ├ Description     : Previously, DecodeElement would reset the depth counter
│                        │      │                   causing it to never fire; this could lead to stack
│                        │      │                   exhaustion. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-770
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65153             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65886             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56859        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2480756                          
│                        │      │                  https://bugzilla.redhat.com/2484204                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456333          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456339          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32280
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-32281
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33811
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:65886                
│                        │      │                  https://go.dev/cl/803320                                     
│                        │      │                  https://go.dev/issue/80481                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-65895-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56859              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6088                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56859              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.32Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [23] ╭ VulnerabilityID : CVE-2026-56860 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6218
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:13e8bef6ba37fb05c957040ff2d311db32e7d2457c239c99456d
│                        │      │                   b4170405e6ad 
│                        │      ├ Title           : net/url: golang: golang net/url: Denial of Service from
│                        │      │                   quadratic complexity in path resolution 
│                        │      ├ Description     : Previously, resolving relative paths containing parent
│                        │      │                   directory ('..') segments performed string conversions and
│                        │      │                   buffer rewrites on each step, resulting in quadratic time
│                        │      │                   complexity and high memory allocation overhead. Now, path
│                        │      │                   resolution operates on a byte buffer using index-based
│                        │      │                   backtracking for '..' segments, eliminating the quadratic
│                        │      │                   time complexity and significantly reducing memory
│                        │      │                   allocations. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-407
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 5.9 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66364             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56860        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-66364.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:66364                
│                        │      │                  https://go.dev/cl/803681                                     
│                        │      │                  https://go.dev/issue/80494                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56860.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-67161-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56860              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6218                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56860              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.44Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [24] ╭ VulnerabilityID : CVE-2026-56862 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6090
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:314fafa5b159f8e6ce689eddd55dc095185770e0b4a08000247e
│                        │      │                   91c73bd17ab3 
│                        │      ├ Title           : crypto/tls: golang: Golang crypto/tls: Denial of Service
│                        │      │                   via indefinite KeyUpdate messages 
│                        │      ├ Description     : Handshake messages, such as KeyUpdate, are always
│                        │      │                   considered as state-advancing, regardless of whether a
│                        │      │                   handshake has been completed or not. As a result, a
│                        │      │                   malicious client can keep sending KeyUpdate messages to
│                        │      │                   force the server to keep performing key derivation
│                        │      │                   operations indefinitely. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-770
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:66364             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56862        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-66364.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:66364                
│                        │      │                  https://go.dev/cl/804261                                     
│                        │      │                  https://go.dev/issue/80528                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56862.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-67161-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56862              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6090                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56862              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.55Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [25] ╭ VulnerabilityID : CVE-2026-42505 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5856
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                        │      │                  │         46f08562480eae743d4d8 
│                        │      │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                        │      │                            05c4003a8b390d4d4b2c2 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:29809514d55dbe7309642e948613f2cffd50c114898a783409f7
│                        │      │                   9755819fd8d3 
│                        │      ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure
│                        │      │                   in Encrypted Client Hello 
│                        │      ├ Description     : Handshakes which used Encrypted Client Hello could be
│                        │      │                   de-anonymized by a passive network observer due to a
│                        │      │                   disclosure of pre-shared key identities in the unencrypted
│                        │      │                   client hello. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-201
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma   : 3 
│                        │      │                  ├ amazon : 2 
│                        │      │                  ├ azure  : 2 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ├ photon : 2 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                  │         │           :N/A:N 
│                        │      │                  │         ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:37435         
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-42505    
│                        │      │                  https://bugzilla.redhat.com/2480756                      
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-37435.html      
│                        │      │                  https://go.dev/cl/775960                                 
│                        │      │                  https://go.dev/issue/79282                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/OrmQE_Yp5Sc
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-42505          
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5856                     
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-42505          
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-08T17:17:21.497Z 
│                        │      ╰ LastModifiedDate: 2026-07-13T17:05:36.303Z 
│                        ╰ [26] ╭ VulnerabilityID : CVE-2026-42507 
│                               ├ VendorIDs                    
│                               │                  ────────────
│                               │                  GO-2026-5039
│                               │                  
│                               ├ PkgID           : stdlib@v1.26.3 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                               │                  ╰ UID : 3dcf59cf5482f2c5 
│                               ├ InstalledVersion: v1.26.3 
│                               ├ FixedVersion    : 1.25.11, 1.26.4 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:4454357af1ce155a05d5035f543ec7c71916f762847
│                               │                  │         46f08562480eae743d4d8 
│                               │                  ╰ DiffID: sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b45
│                               │                            05c4003a8b390d4d4b2c2 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:f8ae5a0db31ddbf817ea90cc92b96185e85d01623cb6f17b59de
│                               │                   330e3338a689 
│                               ├ Title           : net/textproto: golang: Golang net/textproto: Misleading
│                               │                   error messages via input injection 
│                               ├ Description     : When returning errors, functions in the net/textproto
│                               │                   package would include its input as part of the error. This
│                               │                   might allow an attacker to inject misleading content to
│                               │                   errors that are printed or logged. 
│                               ├ Severity        : MEDIUM 
│                               ├ VendorSeverity   ╭ alma       : 2 
│                               │                  ├ amazon     : 2 
│                               │                  ├ azure      : 2 
│                               │                  ├ bitnami    : 2 
│                               │                  ├ oracle-oval: 2 
│                               │                  ├ photon     : 2 
│                               │                  ├ redhat     : 2 
│                               │                  ╰ rocky      : 2 
│                               ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                               │                  │         │           :L/A:N 
│                               │                  │         ╰ V3Score : 5.3 
│                               │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                               │                            │           :L/A:N 
│                               │                            ╰ V3Score : 5.3 
│                               ├ References                                                                    
│                               │                  ─────────────────────────────────────────────────────────────
│                               │                  https://access.redhat.com/errata/RHSA-2026:29981             
│                               │                  https://access.redhat.com/security/cve/CVE-2026-42507        
│                               │                  https://bugzilla.redhat.com/2484205                          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484205          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484207          
│                               │                  https://creativecommons.org/licenses/by/4.0/                 
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-27145
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42507
│                               │                  https://errata.almalinux.org/9/ALSA-2026-29981.html          
│                               │                  https://errata.rockylinux.org/RLSA-2026:29981                
│                               │                  https://go.dev/cl/777060                                     
│                               │                  https://go.dev/issue/79346                                   
│                               │                  https://groups.google.com/g/golang-announce/c/tKs3rmcBcKw    
│                               │                  https://linux.oracle.com/cve/CVE-2026-42507.html             
│                               │                  https://linux.oracle.com/errata/ELSA-2026-29981.html         
│                               │                  https://nvd.nist.gov/vuln/detail/CVE-2026-42507              
│                               │                  https://pkg.go.dev/vuln/GO-2026-5039                         
│                               │                  https://www.cve.org/CVERecord?id=CVE-2026-42507              
│                               │                  
│                               ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
│                               ╰ LastModifiedDate: 2026-07-22T19:10:00.12Z 
├ [14] ╭ Target : /etc/ssh/ssh_host_ecdsa_key 
│      ├ Class  : secret 
│      ╰ Secrets ─ [0] ╭ RuleID   : private-key 
│                      ├ Category : AsymmetricPrivateKey 
│                      ├ Severity : HIGH 
│                      ├ Title    : Asymmetric Private Key 
│                      ├ StartLine: 2 
│                      ├ EndLine  : 8 
│                      ├ Code      ─ Lines Number│Content│IsCause│Annotation│Truncated│Highlighted│FirstCause│...
│                      │                   ──────┼───────┼───────┼──────────┼─────────┼───────────┼──────────┼...
│                      │                   1     │-----BE│false  │          │false    │-----BEGIN │false     │...
│                      │                         │GIN    │       │          │         │OPENSSH    │          │...
│                      │                         │OPENSSH│       │          │         │PRIVATE    │          │...
│                      │                         │PRIVATE│       │          │         │KEY-----   │          │...
│                      │                         │KEY----│       │          │         │           │          │...
│                      │                         │-      │       │          │         │           │          │...
│                      │                   2     │*******│true   │          │false    │***********│true      │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │****       │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                   3     │*******│true   │          │false    │***********│false     │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │****       │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                   4     │*******│true   │          │false    │***********│false     │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │****       │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                   5     │*******│true   │          │false    │***********│false     │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │****       │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                   6     │*******│true   │          │false    │***********│false     │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │****       │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                   7     │*******│true   │          │false    │***********│false     │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │****       │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                   8     │*******│true   │          │false    │***********│false     │...
│                      │                         │*******│       │          │         │*****      │          │...
│                      │                         │**     │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                   9     │-----EN│false  │          │false    │-----END   │false     │...
│                      │                         │D      │       │          │         │OPENSSH    │          │...
│                      │                         │OPENSSH│       │          │         │PRIVATE    │          │...
│                      │                         │PRIVATE│       │          │         │KEY-----   │          │...
│                      │                         │KEY----│       │          │         │           │          │...
│                      │                         │-      │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                   
│                      ├ Match    : ********************************************************************** 
│                      ├ Layer     ╭ Digest   : sha256:4454357af1ce155a05d5035f543ec7c71916f76284746f08562480ea
│                      │           │            e743d4d8 
│                      │           ├ DiffID   : sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b4505c4003a8b390
│                      │           │            d4d4b2c2 
│                      │           ╰ CreatedBy: COPY / / # buildkit 
│                      ╰ Offset   : 36 
├ [15] ╭ Target : /etc/ssh/ssh_host_ed25519_key 
│      ├ Class  : secret 
│      ╰ Secrets ─ [0] ╭ RuleID   : private-key 
│                      ├ Category : AsymmetricPrivateKey 
│                      ├ Severity : HIGH 
│                      ├ Title    : Asymmetric Private Key 
│                      ├ StartLine: 2 
│                      ├ EndLine  : 6 
│                      ├ Code      ─ Lines Number│Content│IsCause│Annotation│Truncated│Highlighted│FirstCause│...
│                      │                   ──────┼───────┼───────┼──────────┼─────────┼───────────┼──────────┼...
│                      │                   1     │-----BE│false  │          │false    │-----BEGIN │false     │...
│                      │                         │GIN    │       │          │         │OPENSSH    │          │...
│                      │                         │OPENSSH│       │          │         │PRIVATE    │          │...
│                      │                         │PRIVATE│       │          │         │KEY-----   │          │...
│                      │                         │KEY----│       │          │         │           │          │...
│                      │                         │-      │       │          │         │           │          │...
│                      │                   2     │*******│true   │          │false    │***********│true      │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │****       │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                   3     │*******│true   │          │false    │***********│false     │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │****       │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                   4     │*******│true   │          │false    │***********│false     │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │****       │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                   5     │*******│true   │          │false    │***********│false     │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │****       │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                   6     │*******│true   │          │false    │***********│false     │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │***********│          │...
│                      │                         │*******│       │          │         │*          │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │*******│       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                   7     │-----EN│false  │          │false    │-----END   │false     │...
│                      │                         │D      │       │          │         │OPENSSH    │          │...
│                      │                         │OPENSSH│       │          │         │PRIVATE    │          │...
│                      │                         │PRIVATE│       │          │         │KEY-----   │          │...
│                      │                         │KEY----│       │          │         │           │          │...
│                      │                         │-      │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                         │       │       │          │         │           │          │...
│                      │                   
│                      ├ Match    : ********************************************************************** 
│                      ├ Layer     ╭ Digest   : sha256:4454357af1ce155a05d5035f543ec7c71916f76284746f08562480ea
│                      │           │            e743d4d8 
│                      │           ├ DiffID   : sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b4505c4003a8b390
│                      │           │            d4d4b2c2 
│                      │           ╰ CreatedBy: COPY / / # buildkit 
│                      ╰ Offset   : 36 
╰ [16] ╭ Target : /etc/ssh/ssh_host_rsa_key 
       ├ Class  : secret 
       ╰ Secrets ─ [0] ╭ RuleID   : private-key 
                       ├ Category : AsymmetricPrivateKey 
                       ├ Severity : HIGH 
                       ├ Title    : Asymmetric Private Key 
                       ├ StartLine: 2 
                       ├ EndLine  : 37 
                       ├ Code      ─ Lines Number│Content│IsCause│Annotation│Truncated│Highlighted│FirstCause│...
                       │                   ──────┼───────┼───────┼──────────┼─────────┼───────────┼──────────┼...
                       │                   1     │-----BE│false  │          │false    │-----BEGIN │false     │...
                       │                         │GIN    │       │          │         │OPENSSH    │          │...
                       │                         │OPENSSH│       │          │         │PRIVATE    │          │...
                       │                         │PRIVATE│       │          │         │KEY-----   │          │...
                       │                         │KEY----│       │          │         │           │          │...
                       │                         │-      │       │          │         │           │          │...
                       │                   2     │*******│true   │          │false    │***********│true      │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   3     │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   4     │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   5     │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   6     │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   7     │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   8     │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   9     │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   10    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   11    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   12    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   13    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   14    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   15    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   16    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   17    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   18    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   19    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   20    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   21    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   22    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   23    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   24    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   25    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   26    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   27    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   28    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   29    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   30    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   31    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   32    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   33    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   34    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   35    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   36    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │****       │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                   37    │*******│true   │          │false    │***********│false     │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │***********│          │...
                       │                         │*******│       │          │         │********** │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*******│       │          │         │           │          │...
                       │                         │*****  │       │          │         │           │          │...
                       │                         │       │       │          │         │           │          │...
                       │                         │       │       │          │         │           │          │...
                       │                   38    │-----EN│false  │          │false    │-----END   │false     │...
                       │                         │D      │       │          │         │OPENSSH    │          │...
                       │                         │OPENSSH│       │          │         │PRIVATE    │          │...
                       │                         │PRIVATE│       │          │         │KEY-----   │          │...
                       │                         │KEY----│       │          │         │           │          │...
                       │                         │-      │       │          │         │           │          │...
                       │                         │       │       │          │         │           │          │...
                       │                         │       │       │          │         │           │          │...
                       │                         │       │       │          │         │           │          │...
                       │                         │       │       │          │         │           │          │...
                       │                   
                       ├ Match    : ********************************************************************** 
                       ├ Layer     ╭ Digest   : sha256:4454357af1ce155a05d5035f543ec7c71916f76284746f08562480ea
                       │           │            e743d4d8 
                       │           ├ DiffID   : sha256:5cde1715935e095932b5f5c6239d2d1807fc3432b4505c4003a8b390
                       │           │            d4d4b2c2 
                       │           ╰ CreatedBy: COPY / / # buildkit 
                       ╰ Offset   : 36 
```
