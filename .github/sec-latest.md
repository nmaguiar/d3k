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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-10722 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:7f45522904edc936599082dbda3d92dfa4349b20698fb97b1aeb2
│                        │     │                   fda2e9f93aa 
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
│                        │     ├ VendorSeverity   ╭ amazon: 3 
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
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-53493 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-pg57-6jwg-q645
│                        │     │                  
│                        │     ├ PkgID           : github.com/containerd/containerd/v2@v2.3.4 
│                        │     ├ PkgName         : github.com/containerd/containerd/v2 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.3.4 
│                        │     │                  ╰ UID : 663099d219e73748 
│                        │     ├ InstalledVersion: v2.3.4 
│                        │     ├ FixedVersion    : 2.0.13, 2.2.9, 2.3.6, 2.4.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53493 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:9264f6df26b7459f88b64d9b277f4f5a5a496498bedf95ed38da3
│                        │     │                   8a575a0786c 
│                        │     ├ Title           : containerd is an open-source container runtime. Prior to
│                        │     │                   versions 1.7. ... 
│                        │     ├ Description     : containerd is an open-source container runtime. Prior to
│                        │     │                   versions 1.7.36, 2.0.13, 2.2.9, 2.3.6, and 2.4.1, a crafted
│                        │     │                   OCI index graph can force very high CPU/memory usage during
│                        │     │                   PullImage (before container start), causing long
│                        │     │                   ContainerCreating stalls and, at larger sizes, node/runtime
│                        │     │                   instability. Versions 1.7.36, 2.0.13, 2.2.9, 2.3.6, and
│                        │     │                   2.4.1 fix the issue. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-400
│                        │     │                  CWE-770
│                        │     │                  CWE-834
│                        │     │                  
│                        │     ├ VendorSeverity   ─ ghsa: 2 
│                        │     ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI
│                        │     │                         │            :N/VA:L/SC:N/SI:N/SA:N 
│                        │     │                         ╰ V40Score : 6.9 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://github.com/containerd/containerd                     
│                        │     │                  https://github.com/containerd/containerd/commit/4f5f32636d47f
│                        │     │                  051751065cf824a10da70c619fe                                  
│                        │     │                  https://github.com/containerd/containerd/commit/94e83c14c8aac
│                        │     │                  963e24e28105dab9c9af812a2a8                                  
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v1.7.36
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.0.13
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.2.9 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.3.6 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.4.1 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/security/advisories/
│                        │     │                  GHSA-pg57-6jwg-q645                                          
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-53493              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-25T01:16:48.227Z 
│                        │     ╰ LastModifiedDate: 2026-09-28T15:17:17.9Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-53495 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53495 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:e8279ea0e8a9891e9d07e2b115d70d990657e7ef548b86062c770
│                        │     │                   88902e737fb 
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
│                        │     ├ VendorSeverity   ╭ bottlerocket: 2 
│                        │     │                  ├ ghsa        : 2 
│                        │     │                  ╰ redhat      : 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:N/
│                        │     │                  │        │            VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │     │                  │        ╰ V40Score : 6.8 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 5.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-53495 
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-53495        
│                        │     │                  https://github.com/bottlerocket-os/bottlerocket-core-kit/blob
│                        │     │                  /develop/advisories/17.0.0/BRSA-huruhtrkrtoi.toml            
│                        │     │                  https://github.com/containerd/containerd                     
│                        │     │                                                                               
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
│                        │     ╰ LastModifiedDate: 2026-09-25T14:10:13.927Z 
│                        ╰ [3] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.56.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.56.0 
│                              │                  ╰ UID : b3156ebc9dec5b51 
│                              ├ InstalledVersion: v0.56.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                              │                  │         b3e6bf484fead2c604d6 
│                              │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                              │                            1805c0077fc9f6189fb0 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:87c2d030b82b8ab8c2a70c49a7bc50a728acd2af7a9f627ee48ca
│                              │                   f76a4c5ad52 
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
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-56854 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6303
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/crypto@v0.54.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.54.0 
│                        │      │                  ╰ UID : c527a3567c036841 
│                        │      ├ InstalledVersion: v0.54.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56854 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:87941bf7ee75c8dcaabdd1dbabb05d0bcaaf593bffd4f5bc5b87
│                        │      │                   e19e4e570ee9 
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
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ╰ redhat: 3 
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
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-56855 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6355
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/crypto@v0.54.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.54.0 
│                        │      │                  ╰ UID : c527a3567c036841 
│                        │      ├ InstalledVersion: v0.54.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:c8c4452391d189951266422957da14402bc7f6003de858917318
│                        │      │                   20f15eb0d607 
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
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70640             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56855        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2402034          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2503742          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2528050          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2025-11395
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-15789
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56855
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70640.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70640                
│                        │      │                  https://go.dev/cl/826524                                     
│                        │      │                  https://go.dev/issue/81317                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56855.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70640.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56855              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6355                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56855              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-02T20:17:36.397Z 
│                        │      ╰ LastModifiedDate: 2026-09-04T16:34:56.823Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-78662 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6354
│                        │      │                  
│                        │      ├ PkgID           : golang.org/x/crypto@v0.54.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.54.0 
│                        │      │                  ╰ UID : c527a3567c036841 
│                        │      ├ InstalledVersion: v0.54.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:1b0221577566940d11da972553bbacf1c8c7326c15d3870989ca
│                        │      │                   2eb07c3d75dc 
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
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 2 
│                        │      │                  ╰ redhat: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-78662    
│                        │      │                  https://go.dev/cl/826504                                 
│                        │      │                  https://go.dev/issue/81316                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-78662          
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6354                     
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-78662          
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-02T20:17:37.167Z 
│                        │      ╰ LastModifiedDate: 2026-09-04T16:33:34.057Z 
│                        ├ [3]  ╭ VulnerabilityID : GO-2026-5932 
│                        │      ├ PkgID           : golang.org/x/crypto@v0.54.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.54.0 
│                        │      │                  ╰ UID : c527a3567c036841 
│                        │      ├ InstalledVersion: v0.54.0 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:b1b819b9560127252e1926c652948752ca3dad512f8d53878d21
│                        │      │                   b99c7daed068 
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
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-50163 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-fxhp-mv3v-67qp
│                        │      │                  
│                        │      ├ PkgID           : oras.land/oras-go/v2@v2.6.1 
│                        │      ├ PkgName         : oras.land/oras-go/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/oras.land/oras-go/v2@v2.6.1 
│                        │      │                  ╰ UID : 2d707a2bb38acc69 
│                        │      ├ InstalledVersion: v2.6.1 
│                        │      ├ FixedVersion    : 2.6.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-50163 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:99ff4d3228af572dcbeeb644e3ae91294b049b842e5ac8daef61
│                        │      │                   554b0f4b09b3 
│                        │      ├ Title           : oras-go: Oras-go: Information disclosure and arbitrary file
│                        │      │                    access via crafted tarball hardlinks 
│                        │      ├ Description     : oras-go is a Go library for managing OCI artifacts. Prior
│                        │      │                   to 2.6.2, ensureLinkPath in content/file/utils.go:262-275
│                        │      │                   validates a hardlink target relative to the extract base
│                        │      │                   but returns the unresolved target, causing
│                        │      │                   os.Link("victim.secret",
│                        │      │                   "<extract_base>/payload.tar.gz/evil_cwd_link") to resolve
│                        │      │                   header.Linkname against the process current working
│                        │      │                   directory for a Typeflag=TypeLink entry such as
│                        │      │                   Name=payload.tar.gz/evil_cwd_link and
│                        │      │                   Linkname="victim.secret" with io.deis.oras.content.unpack:
│                        │      │                   "true", which can expose or tamper with files such as .env,
│                        │      │                    .git/config, .aws/credentials, and ~/.ssh/config. This
│                        │      │                   issue is fixed in version 2.6.2. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                 
│                        │      │                  ──────
│                        │      │                  CWE-22
│                        │      │                  CWE-59
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ ghsa  : 3 
│                        │      │                  ╰ redhat: 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 7.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 5.9 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-50163       
│                        │      │                  https://github.com/oras-project/oras-go                     
│                        │      │                  https://github.com/oras-project/oras-go/commit/b11f777f8d405
│                        │      │                  c5023c4b307cfdc5068dfc3d406                                 
│                        │      │                  https://github.com/oras-project/oras-go/commit/c463c654ab3ef
│                        │      │                  34422c1764cd619806cebf20451                                 
│                        │      │                  https://github.com/oras-project/oras-go/pull/1232           
│                        │      │                                                                              
│                        │      │                  https://github.com/oras-project/oras-go/releases/tag/v2.6.2 
│                        │      │                                                                              
│                        │      │                  https://github.com/oras-project/oras-go/security/advisories/
│                        │      │                  GHSA-fxhp-mv3v-67qp                                         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-50163             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-50163             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-17T20:17:23.943Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T18:02:00.793Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-85731 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-m37j-52j7-pjw7
│                        │      │                  
│                        │      ├ PkgID           : oras.land/oras-go/v2@v2.6.1 
│                        │      ├ PkgName         : oras.land/oras-go/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/oras.land/oras-go/v2@v2.6.1 
│                        │      │                  ╰ UID : 2d707a2bb38acc69 
│                        │      ├ InstalledVersion: v2.6.1 
│                        │      ├ FixedVersion    : 2.6.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-85731 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:52735700ed0471c1c3460cb231a380e9bc184149ebb3e366239d
│                        │      │                   34f1c82d399d 
│                        │      ├ Title           : oras-go is a Go library for managing OCI artifacts. Prior
│                        │      │                   to 2.6.2, co ... 
│                        │      ├ Description     : oras-go is a Go library for managing OCI artifacts. Prior
│                        │      │                   to 2.6.2, content/file.Store extraction of OCI layers
│                        │      │                   marked with io.deis.oras.content.unpack=true can write
│                        │      │                   outside the store working directory. The pushDir path
│                        │      │                   through extractTarDirectory and ensureLinkPath validates
│                        │      │                   symlink targets lexically, resolveRelToBase skips its
│                        │      │                   parent-symlink walk for root-level entries, and writeFile
│                        │      │                   follows a terminal symlink when opening a regular file. A
│                        │      │                   malicious archive can therefore create a symlink chain
│                        │      │                   whose lexical target remains inside the extraction root but
│                        │      │                    whose resolved target is an attacker-selected absolute
│                        │      │                   path, then overwrite that target with a same-named
│                        │      │                   regular-file entry even when AllowPathTraversalOnWrite is
│                        │      │                   false. Pulling an attacker-controlled artifact can create
│                        │      │                   or overwrite any file writable by the process and may lead
│                        │      │                   to code execution. This issue is fixed in version 2.6.2. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                 
│                        │      │                  ──────
│                        │      │                  CWE-22
│                        │      │                  CWE-59
│                        │      │                  
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 8.8 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://github.com/oras-project/oras-go                     
│                        │      │                  https://github.com/oras-project/oras-go/commit/adab2f25ea95e
│                        │      │                  f4e6e41f50db9266a6701399422                                 
│                        │      │                  https://github.com/oras-project/oras-go/releases/tag/v2.6.2 
│                        │      │                                                                              
│                        │      │                  https://github.com/oras-project/oras-go/security/advisories/
│                        │      │                  GHSA-m37j-52j7-pjw7                                         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-85731             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-16T17:18:15.833Z 
│                        │      ╰ LastModifiedDate: 2026-09-16T18:17:17.963Z 
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-85732 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-h7vf-4x9w-h99v
│                        │      │                  
│                        │      ├ PkgID           : oras.land/oras-go/v2@v2.6.1 
│                        │      ├ PkgName         : oras.land/oras-go/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/oras.land/oras-go/v2@v2.6.1 
│                        │      │                  ╰ UID : 2d707a2bb38acc69 
│                        │      ├ InstalledVersion: v2.6.1 
│                        │      ├ FixedVersion    : 2.6.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-85732 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:7aab43a4c27d25886d7ca90fc2a812194af31e666a0cc43c7f02
│                        │      │                   d79b9e1f5d50 
│                        │      ├ Title           : oras-go is a Go library for managing OCI artifacts. Prior
│                        │      │                   to 2.6.2, th ... 
│                        │      ├ Description     : oras-go is a Go library for managing OCI artifacts. Prior
│                        │      │                   to 2.6.2, the parseLink function in
│                        │      │                   registry/remote/utils.go accepts an absolute URL from a
│                        │      │                   registry-controlled Link response header without validating
│                        │      │                    its scheme, host, or port. Tags, Referrers, and
│                        │      │                   Repositories pagination operations then issue a GET request
│                        │      │                    to the attacker-selected URL from the victim's network,
│                        │      │                   allowing blind server-side request forgery against internal
│                        │      │                    services. The response body is not returned to the
│                        │      │                   attacker, but timing and error differences can reveal
│                        │      │                   service reachability, and credentials may be attached when
│                        │      │                   the credential store has an entry for the target host.
│                        │      │                   Exploitation requires a victim to perform a
│                        │      │                   pagination-based listing operation against a malicious
│                        │      │                   registry. The maintainer identifies this report as a
│                        │      │                   duplicate of GHSA-3hr5-mjrr-hfjh and states that
│                        │      │                   remediation is consolidated in that earlier advisory. The
│                        │      │                   consolidated issue is fixed in version 2.6.2. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-918
│                        │      │                  
│                        │      ├ VendorSeverity   ─ ghsa: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:N/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 4.7 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://github.com/oras-project/oras-go                     
│                        │      │                  https://github.com/oras-project/oras-go/commit/31da1963f8c32
│                        │      │                  7dd089cd29faeae95cf0fc50842                                 
│                        │      │                  https://github.com/oras-project/oras-go/releases/tag/v2.6.2 
│                        │      │                                                                              
│                        │      │                  https://github.com/oras-project/oras-go/security/advisories/
│                        │      │                  GHSA-h7vf-4x9w-h99v                                         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-85732             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-16T17:18:16Z 
│                        │      ╰ LastModifiedDate: 2026-09-16T18:17:18.07Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-33818 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5972
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.5 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │      │                  ╰ UID : 791524e4b7f3e864 
│                        │      ├ InstalledVersion: v1.26.5 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:e697406e928c2e93d016f36d6f41200106ad42e41c688eacc5e1
│                        │      │                   75f11dda1343 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-33818        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/814980                                     
│                        │      │                  https://go.dev/issue/80405                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-33818.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-33818              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5972                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-33818              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:19.84Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-39821 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5026
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.5 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │      │                  ╰ UID : 791524e4b7f3e864 
│                        │      ├ InstalledVersion: v1.26.5 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:cd45b5d98891913862cf0249091c49143664102070fc50608bd9
│                        │      │                   d103e60889f7 
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
│                        │      │                  ╰ ubuntu     : 3 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65851            
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:68504            
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
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480757         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480761         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480762         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484830         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2493622         
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-2568
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-2713
│                        │      │                  6                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-4117
│                        │      │                  8                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-4250
│                        │      │                  2                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5567
│                        │      │                  7                                                           
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html         
│                        │      │                                                                              
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:66432               
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
│                        │      ╰ LastModifiedDate: 2026-09-17T12:18:05.767Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-46600 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-5942
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.5 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │      │                  ╰ UID : 791524e4b7f3e864 
│                        │      ├ InstalledVersion: v1.26.5 
│                        │      ├ FixedVersion    : 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:387f2582794d7a145a803ad93e9e48bfcfb7a285f12cc455b10a
│                        │      │                   e038bacd88c9 
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
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-56853 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6089
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.5 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │      │                  ╰ UID : 791524e4b7f3e864 
│                        │      ├ InstalledVersion: v1.26.5 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:5e62bcc8d114ab4143f7068d83f115e2f9abeb8b5f4ad0438afc
│                        │      │                   3761310c68f9 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56853        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/795540                                     
│                        │      │                  https://go.dev/issue/80205                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56853.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56853              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6089                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56853              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.093Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-56858 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6091
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.5 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │      │                  ╰ UID : 791524e4b7f3e864 
│                        │      ├ InstalledVersion: v1.26.5 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:58864592aca15da7acb7a45aae9fbea40447440565c3eabadfac
│                        │      │                   2f5b718d13aa 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56858        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/807100                                     
│                        │      │                  https://go.dev/issue/80435                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56858.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56858              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6091                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56858              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.207Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-56859 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6088
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.5 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │      │                  ╰ UID : 791524e4b7f3e864 
│                        │      ├ InstalledVersion: v1.26.5 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4468885ef724ceb718ac9042ecd2c8f508c7cb6ca6926f20bde4
│                        │      │                   268493b51b8b 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:69961             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56859        
│                        │      │                  https://bugzilla.redhat.com/2480684                          
│                        │      │                  https://bugzilla.redhat.com/2508234                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-69961.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/803320                                     
│                        │      │                  https://go.dev/issue/80481                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70201.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56859              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6088                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56859              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.32Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [13] ╭ VulnerabilityID : CVE-2026-56860 
│                        │      ├ VendorIDs                    
│                        │      │                  ────────────
│                        │      │                  GO-2026-6218
│                        │      │                  
│                        │      ├ PkgID           : stdlib@v1.26.5 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                        │      │                  ╰ UID : 791524e4b7f3e864 
│                        │      ├ InstalledVersion: v1.26.5 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f3bf7852445ec9b512e44f67bab91e2aaec3617b65f320b44d47
│                        │      │                   375820db976e 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56860        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/803681                                     
│                        │      │                  https://go.dev/issue/80494                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56860.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56860              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6218                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56860              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.44Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ╰ [14] ╭ VulnerabilityID : CVE-2026-56862 
│                               ├ VendorIDs                    
│                               │                  ────────────
│                               │                  GO-2026-6090
│                               │                  
│                               ├ PkgID           : stdlib@v1.26.5 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.5 
│                               │                  ╰ UID : 791524e4b7f3e864 
│                               ├ InstalledVersion: v1.26.5 
│                               ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                               │                  │         db3e6bf484fead2c604d6 
│                               │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                               │                            11805c0077fc9f6189fb0 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:53af59a5e5a28beeb93d3ddf5aa3a4aec049e19c39cdf4a2de2c
│                               │                   1bd8c4bff4ab 
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
│                               │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                               │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                               │                  https://access.redhat.com/security/cve/CVE-2026-56862        
│                               │                  https://bugzilla.redhat.com/2515815                          
│                               │                  https://bugzilla.redhat.com/2515820                          
│                               │                  https://bugzilla.redhat.com/2515827                          
│                               │                  https://bugzilla.redhat.com/2515838                          
│                               │                  https://bugzilla.redhat.com/2515839                          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                               │                  https://creativecommons.org/licenses/by/4.0/                 
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                               │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                               │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                               │                  https://go.dev/cl/804261                                     
│                               │                  https://go.dev/issue/80528                                   
│                               │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                               │                  https://linux.oracle.com/cve/CVE-2026-56862.html             
│                               │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                               │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56862              
│                               │                  https://pkg.go.dev/vuln/GO-2026-6090                         
│                               │                  https://www.cve.org/CVERecord?id=CVE-2026-56862              
│                               │                  
│                               ├ PublishedDate   : 2026-08-13T22:17:22.55Z 
│                               ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:a50646b514ef505acec2db28af61f4b6b982c9f4b1c83afced45b
│                        │     │                   59e1df89b39 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-33818        
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │     │                  https://go.dev/cl/814980                                     
│                        │     │                  https://go.dev/issue/80405                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-33818.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:8c19c906594aed5c1a070e3c4f540e1377790c6c49f7ba7169efa
│                        │     │                   8eb17297343 
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
│                        │     │                  ╰ ubuntu     : 3 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:65851             
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:68504             
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
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480757          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480761          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480762          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484830          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2493622          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-25681
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-27136
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-41178
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42502
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-55677
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:66432                
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
│                        │     ╰ LastModifiedDate: 2026-09-17T12:18:05.767Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:7aa4707b7cddb217b0896ba0248ab25801018b9626d45456b8981
│                        │     │                   fff355bffba 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:956f6717b520bfa643e8cece88a460a88083c1339c55e695cc58f
│                        │     │                   c2c3b0e6776 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56853        
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │     │                  https://go.dev/cl/795540                                     
│                        │     │                  https://go.dev/issue/80205                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56853.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:5086610c33c9ced3da4e996ecb3a3c5ba290766604e857e644ea4
│                        │     │                   f310c917457 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56858        
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │     │                  https://go.dev/cl/807100                                     
│                        │     │                  https://go.dev/issue/80435                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56858.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:f058b22c441bd953f59412270385035729bc46719996cb5d17179
│                        │     │                   4389c074355 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:69961             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56859        
│                        │     │                  https://bugzilla.redhat.com/2480684                          
│                        │     │                  https://bugzilla.redhat.com/2508234                          
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-69961.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │     │                  https://go.dev/cl/803320                                     
│                        │     │                  https://go.dev/issue/80481                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-70201.html         
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:067f6da798a997d1121d2d81259065a9ea017810d565eebfc040c
│                        │     │                   37e08129802 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56860        
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │     │                  https://go.dev/cl/803681                                     
│                        │     │                  https://go.dev/issue/80494                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56860.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
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
│                              ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                              │                  │         b3e6bf484fead2c604d6 
│                              │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                              │                            1805c0077fc9f6189fb0 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:190421937aee85b9577ac2165792b7ce401e68b9aea5368c8bd3c
│                              │                   d3936797ceb 
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
│                              │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                              │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                              │                  https://access.redhat.com/security/cve/CVE-2026-56862        
│                              │                  https://bugzilla.redhat.com/2515815                          
│                              │                  https://bugzilla.redhat.com/2515820                          
│                              │                  https://bugzilla.redhat.com/2515827                          
│                              │                  https://bugzilla.redhat.com/2515838                          
│                              │                  https://bugzilla.redhat.com/2515839                          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                              │                  https://creativecommons.org/licenses/by/4.0/                 
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                              │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                              │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                              │                  https://go.dev/cl/804261                                     
│                              │                  https://go.dev/issue/80528                                   
│                              │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                              │                  https://linux.oracle.com/cve/CVE-2026-56862.html             
│                              │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56854 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:09aa959ab1bfec41ee2219e15b2f1fa8bc3443b8db3ba1c4e9fde
│                        │     │                   a6fa6b815f3 
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
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ╰ redhat: 3 
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
│                        │     │                  ───────────────────────────────────────
│                        │     │                  https://github.com/docker/cli/pull/6713
│                        │     │                  
│                        │     ├ PkgID           : golang.org/x/crypto@v0.52.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.52.0 
│                        │     │                  ╰ UID : c6746a665642ce00 
│                        │     ├ InstalledVersion: v0.52.0 
│                        │     ├ FixedVersion    : 0.56.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:0356506e7729c4a42f3adb56bff8f5da761e5a2759876dd3e079f
│                        │     │                   d7e4d25ce04 
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
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 3 
│                        │     │                  ├ azure      : 2 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ redhat     : 2 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70640             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56855        
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2402034          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2503742          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2528050          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2025-11395
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-15789
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56855
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-70640.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:70640                
│                        │     │                  https://go.dev/cl/826524                                     
│                        │     │                  https://go.dev/issue/81317                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56855.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-70640.html         
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:7c2b314f7fa8224bd0950be42d30af38f424ae836401f05817390
│                        │     │                   52bc774b3ff 
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
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ azure : 2 
│                        │     │                  ╰ redhat: 2 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:e24479e048ead84900737b77280ce034ba8f1cc40f8855bb50fc5
│                        │     │                   f70d5fd5695 
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
│                              ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                              │                  │         b3e6bf484fead2c604d6 
│                              │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                              │                            1805c0077fc9f6189fb0 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:6243929ba71c93c33e2840508f6a12206b1d3ecd48fd4fe887541
│                              │                   fe84271cbfa 
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
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-53493 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-pg57-6jwg-q645
│                        │     │                  
│                        │     ├ PkgID           : github.com/containerd/containerd/v2@v2.3.4 
│                        │     ├ PkgName         : github.com/containerd/containerd/v2 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.3.4 
│                        │     │                  ╰ UID : 11eee4b4e346979a 
│                        │     ├ InstalledVersion: v2.3.4 
│                        │     ├ FixedVersion    : 2.0.13, 2.2.9, 2.3.6, 2.4.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53493 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:dc00ae603640e2c4b933c1691041d505cf1f6d9e4e8e831da6b1a
│                        │     │                   a4ab43e70e8 
│                        │     ├ Title           : containerd is an open-source container runtime. Prior to
│                        │     │                   versions 1.7. ... 
│                        │     ├ Description     : containerd is an open-source container runtime. Prior to
│                        │     │                   versions 1.7.36, 2.0.13, 2.2.9, 2.3.6, and 2.4.1, a crafted
│                        │     │                   OCI index graph can force very high CPU/memory usage during
│                        │     │                   PullImage (before container start), causing long
│                        │     │                   ContainerCreating stalls and, at larger sizes, node/runtime
│                        │     │                   instability. Versions 1.7.36, 2.0.13, 2.2.9, 2.3.6, and
│                        │     │                   2.4.1 fix the issue. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-400
│                        │     │                  CWE-770
│                        │     │                  CWE-834
│                        │     │                  
│                        │     ├ VendorSeverity   ─ ghsa: 2 
│                        │     ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI
│                        │     │                         │            :N/VA:L/SC:N/SI:N/SA:N 
│                        │     │                         ╰ V40Score : 6.9 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://github.com/containerd/containerd                     
│                        │     │                  https://github.com/containerd/containerd/commit/4f5f32636d47f
│                        │     │                  051751065cf824a10da70c619fe                                  
│                        │     │                  https://github.com/containerd/containerd/commit/94e83c14c8aac
│                        │     │                  963e24e28105dab9c9af812a2a8                                  
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v1.7.36
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.0.13
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.2.9 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.3.6 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.4.1 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/security/advisories/
│                        │     │                  GHSA-pg57-6jwg-q645                                          
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-53493              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-25T01:16:48.227Z 
│                        │     ╰ LastModifiedDate: 2026-09-28T15:17:17.9Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-53495 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53495 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:dae443c3a5a37d5fc34203dd9b7835dead7623d1bd3d11d7f5f83
│                        │     │                   e1daae57bfe 
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
│                        │     ├ VendorSeverity   ╭ bottlerocket: 2 
│                        │     │                  ├ ghsa        : 2 
│                        │     │                  ╰ redhat      : 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:N/
│                        │     │                  │        │            VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │     │                  │        ╰ V40Score : 6.8 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 5.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-53495 
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-53495        
│                        │     │                  https://github.com/bottlerocket-os/bottlerocket-core-kit/blob
│                        │     │                  /develop/advisories/17.0.0/BRSA-huruhtrkrtoi.toml            
│                        │     │                  https://github.com/containerd/containerd                     
│                        │     │                                                                               
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
│                        │     ╰ LastModifiedDate: 2026-09-25T14:10:13.927Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-41567 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d508e6b5ab9a61631999296dbd0c3ce1ba69996289a5ba37f9bd7
│                        │     │                   548300af97b 
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
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-42306 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:c0892bd9896335e971d9e5b4d1c339d4566a139725b72a05ab388
│                        │     │                   7884375227d 
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
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-33997 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d201f4e82b06049d8299a1fcde97ed10697b2d6fa511dbac25f36
│                        │     │                   b72497ef83d 
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
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-41568 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:74e1c69f61723b48bb952999f7a4da26dea75357b9b92a8b9cc9b
│                        │     │                   256578b04f8 
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
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-17106 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-17106 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:6051be95f676306863256565dfee3d8b7857d7f2fb97e923780b8
│                        │     │                   dadd002140a 
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
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 3 
│                        │     │                  ├ azure      : 3 
│                        │     │                  ├ bitnami    : 3 
│                        │     │                  ├ ghsa       : 3 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ rocky      : 3 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:69961             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-17106        
│                        │     │                  https://bugzilla.redhat.com/2480684                          
│                        │     │                  https://bugzilla.redhat.com/2508234                          
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://docs.docker.com/desktop/release-notes/#4860          
│                        │     │                  https://docs.docker.com/engine/release-notes/29/#2970        
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-69961.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:70201                
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
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-17106.html             
│                        │     │                                                                               
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-70201.html         
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
│                        ├ [7] ╭ VulnerabilityID : CVE-2026-56855 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:bc2b075a76b6d8173bdb39c210a5a8d355f6f4512edb7957b1b3e
│                        │     │                   7d836d8b63e 
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
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 3 
│                        │     │                  ├ azure      : 2 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ redhat     : 2 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:70640             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56855        
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2402034          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2503742          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2528050          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2025-11395
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-15789
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56855
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-70640.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:70640                
│                        │     │                  https://go.dev/cl/826524                                     
│                        │     │                  https://go.dev/issue/81317                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56855.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-70640.html         
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56855              
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6355                         
│                        │     │                  https://www.cve.org/CVERecord?id=CVE-2026-56855              
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-02T20:17:36.397Z 
│                        │     ╰ LastModifiedDate: 2026-09-04T16:34:56.823Z 
│                        ├ [8] ╭ VulnerabilityID : CVE-2026-78662 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:68abd5fb4b6cdc81fb1372b1bd25cdc9835d04c1578dd53dfc505
│                        │     │                   590d6c74903 
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
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ azure : 2 
│                        │     │                  ╰ redhat: 2 
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
│                        ╰ [9] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.55.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.55.0 
│                              │                  ╰ UID : 25359bce0c42962b 
│                              ├ InstalledVersion: v0.55.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                              │                  │         b3e6bf484fead2c604d6 
│                              │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                              │                            1805c0077fc9f6189fb0 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:bd4f7549b2b47ab900be2de53da9b11edbced7fc421c0198d866b
│                              │                   93b441c5671 
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
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-53493 
│                        │     ├ VendorIDs                           
│                        │     │                  ───────────────────
│                        │     │                  GHSA-pg57-6jwg-q645
│                        │     │                  
│                        │     ├ PkgID           : github.com/containerd/containerd/v2@v2.3.4 
│                        │     ├ PkgName         : github.com/containerd/containerd/v2 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.3.4 
│                        │     │                  ╰ UID : be9e50bbe437c5af 
│                        │     ├ InstalledVersion: v2.3.4 
│                        │     ├ FixedVersion    : 2.0.13, 2.2.9, 2.3.6, 2.4.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53493 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:c22b5fb47212bed5dd9ede932e0b0ed0c9e7a7d61147a6ab34549
│                        │     │                   69afc0284ad 
│                        │     ├ Title           : containerd is an open-source container runtime. Prior to
│                        │     │                   versions 1.7. ... 
│                        │     ├ Description     : containerd is an open-source container runtime. Prior to
│                        │     │                   versions 1.7.36, 2.0.13, 2.2.9, 2.3.6, and 2.4.1, a crafted
│                        │     │                   OCI index graph can force very high CPU/memory usage during
│                        │     │                   PullImage (before container start), causing long
│                        │     │                   ContainerCreating stalls and, at larger sizes, node/runtime
│                        │     │                   instability. Versions 1.7.36, 2.0.13, 2.2.9, 2.3.6, and
│                        │     │                   2.4.1 fix the issue. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-400
│                        │     │                  CWE-770
│                        │     │                  CWE-834
│                        │     │                  
│                        │     ├ VendorSeverity   ─ ghsa: 2 
│                        │     ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI
│                        │     │                         │            :N/VA:L/SC:N/SI:N/SA:N 
│                        │     │                         ╰ V40Score : 6.9 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  https://github.com/containerd/containerd                     
│                        │     │                  https://github.com/containerd/containerd/commit/4f5f32636d47f
│                        │     │                  051751065cf824a10da70c619fe                                  
│                        │     │                  https://github.com/containerd/containerd/commit/94e83c14c8aac
│                        │     │                  963e24e28105dab9c9af812a2a8                                  
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v1.7.36
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.0.13
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.2.9 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.3.6 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/releases/tag/v2.4.1 
│                        │     │                                                                               
│                        │     │                  https://github.com/containerd/containerd/security/advisories/
│                        │     │                  GHSA-pg57-6jwg-q645                                          
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-53493              
│                        │     │                                                                               
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-25T01:16:48.227Z 
│                        │     ╰ LastModifiedDate: 2026-09-28T15:17:17.9Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-53495 
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
│                        │     ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                        │     │                  │         b3e6bf484fead2c604d6 
│                        │     │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                        │     │                            1805c0077fc9f6189fb0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53495 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d28a5620d3e5f8f02fcf8f8e97e2f3e73a8855dfa31a220c79b6c
│                        │     │                   881d880911e 
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
│                        │     ├ VendorSeverity   ╭ bottlerocket: 2 
│                        │     │                  ├ ghsa        : 2 
│                        │     │                  ╰ redhat      : 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:N/
│                        │     │                  │        │            VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │     │                  │        ╰ V40Score : 6.8 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 5.5 
│                        │     ├ References                                                                    
│                        │     │                  ─────────────────────────────────────────────────────────────
│                        │     │                  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-53495 
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-53495        
│                        │     │                  https://github.com/bottlerocket-os/bottlerocket-core-kit/blob
│                        │     │                  /develop/advisories/17.0.0/BRSA-huruhtrkrtoi.toml            
│                        │     │                  https://github.com/containerd/containerd                     
│                        │     │                                                                               
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
│                        │     ╰ LastModifiedDate: 2026-09-25T14:10:13.927Z 
│                        ╰ [2] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.56.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.56.0 
│                              │                  ╰ UID : 8db81c6138f552c6 
│                              ├ InstalledVersion: v0.56.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487d
│                              │                  │         b3e6bf484fead2c604d6 
│                              │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db1
│                              │                            1805c0077fc9f6189fb0 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:c41ffde67ac38ae5f910b7db46db0ad38b63db1b5a755bcdd3d40
│                              │                   04d6cb46a3f 
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
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-53493 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-pg57-6jwg-q645
│                        │      │                  
│                        │      ├ PkgID           : github.com/containerd/containerd/v2@v2.2.5 
│                        │      ├ PkgName         : github.com/containerd/containerd/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.5 
│                        │      │                  ╰ UID : 6926cc9182afd95f 
│                        │      ├ InstalledVersion: v2.2.5 
│                        │      ├ FixedVersion    : 2.0.13, 2.2.9, 2.3.6, 2.4.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53493 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:0a744d14dea2fbaf6eaf14edb69b5c5b3cab8d6127ef08066261
│                        │      │                   c321de31e46b 
│                        │      ├ Title           : containerd is an open-source container runtime. Prior to
│                        │      │                   versions 1.7. ... 
│                        │      ├ Description     : containerd is an open-source container runtime. Prior to
│                        │      │                   versions 1.7.36, 2.0.13, 2.2.9, 2.3.6, and 2.4.1, a crafted
│                        │      │                    OCI index graph can force very high CPU/memory usage
│                        │      │                   during PullImage (before container start), causing long
│                        │      │                   ContainerCreating stalls and, at larger sizes, node/runtime
│                        │      │                    instability. Versions 1.7.36, 2.0.13, 2.2.9, 2.3.6, and
│                        │      │                   2.4.1 fix the issue. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-400
│                        │      │                  CWE-770
│                        │      │                  CWE-834
│                        │      │                  
│                        │      ├ VendorSeverity   ─ ghsa: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/V
│                        │      │                         │            I:N/VA:L/SC:N/SI:N/SA:N 
│                        │      │                         ╰ V40Score : 6.9 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://github.com/containerd/containerd                    
│                        │      │                  https://github.com/containerd/containerd/commit/4f5f32636d47
│                        │      │                  f051751065cf824a10da70c619fe                                
│                        │      │                  https://github.com/containerd/containerd/commit/94e83c14c8aa
│                        │      │                  c963e24e28105dab9c9af812a2a8                                
│                        │      │                  https://github.com/containerd/containerd/releases/tag/v1.7.3
│                        │      │                  6                                                           
│                        │      │                  https://github.com/containerd/containerd/releases/tag/v2.0.1
│                        │      │                  3                                                           
│                        │      │                  https://github.com/containerd/containerd/releases/tag/v2.2.9
│                        │      │                                                                              
│                        │      │                  https://github.com/containerd/containerd/releases/tag/v2.3.6
│                        │      │                                                                              
│                        │      │                  https://github.com/containerd/containerd/releases/tag/v2.4.1
│                        │      │                                                                              
│                        │      │                  https://github.com/containerd/containerd/security/advisories
│                        │      │                  /GHSA-pg57-6jwg-q645                                        
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-53493             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-25T01:16:48.227Z 
│                        │      ╰ LastModifiedDate: 2026-09-28T15:17:17.9Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-53495 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53495 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:6992e0c7a1f083990a319ac7147a8bcdea91ec7b6470e8309dbf
│                        │      │                   1120776a4016 
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
│                        │      ├ VendorSeverity   ╭ bottlerocket: 2 
│                        │      │                  ├ ghsa        : 2 
│                        │      │                  ╰ redhat      : 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:N/VC:N
│                        │      │                  │        │            /VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 6.8 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 5.5 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-53495
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-53495       
│                        │      │                  https://github.com/bottlerocket-os/bottlerocket-core-kit/blo
│                        │      │                  b/develop/advisories/17.0.0/BRSA-huruhtrkrtoi.toml          
│                        │      │                  https://github.com/containerd/containerd                    
│                        │      │                                                                              
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
│                        │      ╰ LastModifiedDate: 2026-09-25T14:10:13.927Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-81870 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-8wmf-6v46-5gfg
│                        │      │                  
│                        │      ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlptrace@v1.35.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlptrace 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/o
│                        │      │                  │       tlptrace@v1.35.0 
│                        │      │                  ╰ UID : a50287d86f94150 
│                        │      ├ InstalledVersion: v1.35.0 
│                        │      ├ FixedVersion    : 1.45.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-81870 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:a7751b96f08f9af43726304d563cef3d48ffd6a9ce2f87cd8d03
│                        │      │                   32b657a7e05f 
│                        │      ├ Title           : github.com/open-telemetry/opentelemetry-go:
│                        │      │                   OpenTelemetry-Go: Information disclosure via exporter
│                        │      │                   configuration logging 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    From version 1.5.0 to 1.44.0, sdk/trace.NewTracerProvider
│                        │      │                   emits a TracerProvider created internal Info-level
│                        │      │                   diagnostic event whose MarshalLog implementations
│                        │      │                   recursively include span processor, exporter, and client
│                        │      │                   configuration. Applications that call otel.SetLogger to
│                        │      │                   enable OpenTelemetry internal Info logging can therefore
│                        │      │                   record OTLP gRPC and HTTP collector endpoints, the OTLP
│                        │      │                   HTTP Insecure flag, and complete Zipkin collector URLs. A
│                        │      │                   person or system with access to those logs can learn
│                        │      │                   internal collector topology and can recover credentials or
│                        │      │                   tokens embedded in Zipkin URL user information or query
│                        │      │                   strings. The default OpenTelemetry logger does not emit the
│                        │      │                    event, and this path does not log OTLP authentication
│                        │      │                   headers, TLS key material, or span payloads. This issue is
│                        │      │                   fixed in version 1.45.0. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-200
│                        │      │                  CWE-532
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ ghsa  : 1 
│                        │      │                  ╰ redhat: 1 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:N/VC:L
│                        │      │                  │        │            /VI:N/VA:N/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 2 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-81870       
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go          
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/commit/3a
│                        │      │                  1412d2b3bc4e4231fbeac2ed42117ae541bb38                      
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/pull/8438
│                        │      │                                                                              
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/exporters/zipkin/v1.45.0                                
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/sdk/v1.45.0                                             
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/security/
│                        │      │                  advisories/GHSA-8wmf-6v46-5gfg                              
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-16T20:17:32.733Z 
│                        │      ╰ LastModifiedDate: 2026-09-30T17:51:56.193Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-81870 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-8wmf-6v46-5gfg
│                        │      │                  
│                        │      ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptrace
│                        │      │                   grpc@v1.35.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptrace
│                        │      │                   grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/o
│                        │      │                  │       tlptrace/otlptracegrpc@v1.35.0 
│                        │      │                  ╰ UID : 959830f35d853eb8 
│                        │      ├ InstalledVersion: v1.35.0 
│                        │      ├ FixedVersion    : 1.45.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-81870 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:5d4f6463859e26f0bc8c786d2f6889820098bdffc66eb99c3df0
│                        │      │                   8dad97af1fa4 
│                        │      ├ Title           : github.com/open-telemetry/opentelemetry-go:
│                        │      │                   OpenTelemetry-Go: Information disclosure via exporter
│                        │      │                   configuration logging 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    From version 1.5.0 to 1.44.0, sdk/trace.NewTracerProvider
│                        │      │                   emits a TracerProvider created internal Info-level
│                        │      │                   diagnostic event whose MarshalLog implementations
│                        │      │                   recursively include span processor, exporter, and client
│                        │      │                   configuration. Applications that call otel.SetLogger to
│                        │      │                   enable OpenTelemetry internal Info logging can therefore
│                        │      │                   record OTLP gRPC and HTTP collector endpoints, the OTLP
│                        │      │                   HTTP Insecure flag, and complete Zipkin collector URLs. A
│                        │      │                   person or system with access to those logs can learn
│                        │      │                   internal collector topology and can recover credentials or
│                        │      │                   tokens embedded in Zipkin URL user information or query
│                        │      │                   strings. The default OpenTelemetry logger does not emit the
│                        │      │                    event, and this path does not log OTLP authentication
│                        │      │                   headers, TLS key material, or span payloads. This issue is
│                        │      │                   fixed in version 1.45.0. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-200
│                        │      │                  CWE-532
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ ghsa  : 1 
│                        │      │                  ╰ redhat: 1 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:N/VC:L
│                        │      │                  │        │            /VI:N/VA:N/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 2 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-81870       
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go          
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/commit/3a
│                        │      │                  1412d2b3bc4e4231fbeac2ed42117ae541bb38                      
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/pull/8438
│                        │      │                                                                              
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/exporters/zipkin/v1.45.0                                
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/sdk/v1.45.0                                             
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/security/
│                        │      │                  advisories/GHSA-8wmf-6v46-5gfg                              
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-16T20:17:32.733Z 
│                        │      ╰ LastModifiedDate: 2026-09-30T17:51:56.193Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-81870 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-8wmf-6v46-5gfg
│                        │      │                  
│                        │      ├ PkgID           : go.opentelemetry.io/otel/sdk@v1.43.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/sdk 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/sdk@v1.43.0 
│                        │      │                  ╰ UID : ab8c3f69d152712b 
│                        │      ├ InstalledVersion: v1.43.0 
│                        │      ├ FixedVersion    : 1.45.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-81870 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:bb66cd47543e8a10b9ce58a5f28809ab099e66052918863e86aa
│                        │      │                   64dff5f26983 
│                        │      ├ Title           : github.com/open-telemetry/opentelemetry-go:
│                        │      │                   OpenTelemetry-Go: Information disclosure via exporter
│                        │      │                   configuration logging 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    From version 1.5.0 to 1.44.0, sdk/trace.NewTracerProvider
│                        │      │                   emits a TracerProvider created internal Info-level
│                        │      │                   diagnostic event whose MarshalLog implementations
│                        │      │                   recursively include span processor, exporter, and client
│                        │      │                   configuration. Applications that call otel.SetLogger to
│                        │      │                   enable OpenTelemetry internal Info logging can therefore
│                        │      │                   record OTLP gRPC and HTTP collector endpoints, the OTLP
│                        │      │                   HTTP Insecure flag, and complete Zipkin collector URLs. A
│                        │      │                   person or system with access to those logs can learn
│                        │      │                   internal collector topology and can recover credentials or
│                        │      │                   tokens embedded in Zipkin URL user information or query
│                        │      │                   strings. The default OpenTelemetry logger does not emit the
│                        │      │                    event, and this path does not log OTLP authentication
│                        │      │                   headers, TLS key material, or span payloads. This issue is
│                        │      │                   fixed in version 1.45.0. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-200
│                        │      │                  CWE-532
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ ghsa  : 1 
│                        │      │                  ╰ redhat: 1 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:N/VC:L
│                        │      │                  │        │            /VI:N/VA:N/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 2 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-81870       
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go          
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/commit/3a
│                        │      │                  1412d2b3bc4e4231fbeac2ed42117ae541bb38                      
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/pull/8438
│                        │      │                                                                              
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/exporters/zipkin/v1.45.0                                
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/sdk/v1.45.0                                             
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/security/
│                        │      │                  advisories/GHSA-8wmf-6v46-5gfg                              
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-16T20:17:32.733Z 
│                        │      ╰ LastModifiedDate: 2026-09-30T17:51:56.193Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-56854 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56854 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:b2e0d5169b1713498a8a45fbe3b6445eb725134792323a72e9b3
│                        │      │                   4a8e4ecd1798 
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
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ╰ redhat: 3 
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
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-56855 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:e0327e8efb47a5d095f3d91a66e873b7ad8e900cb1f41a31c76f
│                        │      │                   97d1c8e17c10 
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
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70640             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56855        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2402034          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2503742          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2528050          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2025-11395
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-15789
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56855
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70640.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70640                
│                        │      │                  https://go.dev/cl/826524                                     
│                        │      │                  https://go.dev/issue/81317                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56855.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70640.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56855              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6355                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56855              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-02T20:17:36.397Z 
│                        │      ╰ LastModifiedDate: 2026-09-04T16:34:56.823Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-78662 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4e26ec2098db046bd13c27724a2602b5641af37be45f92c863bc
│                        │      │                   05e1f0855f76 
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
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 2 
│                        │      │                  ╰ redhat: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-78662    
│                        │      │                  https://go.dev/cl/826504                                 
│                        │      │                  https://go.dev/issue/81316                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-78662          
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6354                     
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-78662          
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-02T20:17:37.167Z 
│                        │      ╰ LastModifiedDate: 2026-09-04T16:33:34.057Z 
│                        ├ [8]  ╭ VulnerabilityID : GO-2026-5932 
│                        │      ├ PkgID           : golang.org/x/crypto@v0.53.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.53.0 
│                        │      │                  ╰ UID : 4a75460d65c046ad 
│                        │      ├ InstalledVersion: v0.53.0 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:e46438e87d5bf133bb6ebb66dd443bfe9a67777f10a6e478b151
│                        │      │                   e4ee721b2309 
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
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-46600 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:6b66ce929ae3d9e561840a8e131acf566b2ac8f9ae9d1f00b9f7
│                        │      │                   bbbe4164675b 
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
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-56852 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:8a5a245ee69d11af531b305111e44e39fe1d20935cb319557f9f
│                        │      │                   90e0163e7807 
│                        │      ├ Title           : golang.org/x/text: golang.org/x/text: Denial of Service via
│                        │      │                    invalid UTF-8 input 
│                        │      ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │      │                   containing invalid UTF-8 bytes. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-835
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56852        
│                        │      │                  https://bugzilla.redhat.com/2456335                          
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2504233                          
│                        │      │                  https://bugzilla.redhat.com/2508234                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/10/ALSA-2026-70201.html         
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/794100                                     
│                        │      │                  https://go.dev/issue/80142                                   
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56852.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70201.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56852              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5970                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56852              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-21T20:17:02.867Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-84304 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84304 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:f31c32401c71d2938cf7986fcc9e2908b331760567ef4cf89fc2
│                        │      │                   a7ed5606486c 
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
│                        │      ├ VendorSeverity   ╭ azure: 3 
│                        │      │                  ╰ ghsa : 3 
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
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-84445 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-2v4p-qf9q-27wj
│                        │      │                  
│                        │      ├ PkgID           : google.golang.org/grpc@v1.79.3 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.79.3 
│                        │      │                  ╰ UID : 2977bc5805b7c756 
│                        │      ├ InstalledVersion: v1.79.3 
│                        │      ├ FixedVersion    : 1.82.2, 1.83.2, 1.84.0-dev.0.20260825144003-d5a41119e0e3,
│                        │      │                   1.85.0-dev.0.20260825072537-93e31b48545e 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84445 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:890912bec6804394f6a173d4508acf5c38b624aa4d9eae542eb8
│                        │      │                   59afe8ab5641 
│                        │      ├ Title           : google.golang.org/grpc: gRPC-Go: Denial of Service via
│                        │      │                   malformed RPC requests 
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
│                        │      ├ VendorSeverity   ╭ azure : 3 
│                        │      │                  ├ ghsa  : 3 
│                        │      │                  ╰ redhat: 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N
│                        │      │                  │        │            /VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 8.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 7.5 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-84445       
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
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-84445             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-84445             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-14T17:17:51.743Z 
│                        │      ╰ LastModifiedDate: 2026-09-25T14:10:13.927Z 
│                        ├ [13] ╭ VulnerabilityID : GHSA-hrxh-6v49-42gf 
│                        │      ├ PkgID           : google.golang.org/grpc@v1.79.3 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.79.3 
│                        │      │                  ╰ UID : 2977bc5805b7c756 
│                        │      ├ InstalledVersion: v1.79.3 
│                        │      ├ FixedVersion    : 1.82.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:72e3f3bf0750d839be226a8ddf401129077684d78ddddbb3fcfd
│                        │      │                   97971ea511f7 
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
│                        ├ [14] ╭ VulnerabilityID : CVE-2026-84303 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84303 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:e7f3378181e1062a86edb932f4babe5a68b153f03be3b3b31386
│                        │      │                   b83752f84ef7 
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
│                        ├ [15] ╭ VulnerabilityID : CVE-2026-33818 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:1efda98d611424e2d56f7aa5d8b733cdb02fbe1f53a527195b69
│                        │      │                   c65bdde4f92b 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-33818        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/814980                                     
│                        │      │                  https://go.dev/issue/80405                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-33818.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
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
│                        │      ├ PkgID           : stdlib@v1.25.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                        │      │                  ╰ UID : 81d0a980aae4af20 
│                        │      ├ InstalledVersion: v1.25.12 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:237f32f61d52bbcd0fe994a94235e52179c7667fbcb146609c90
│                        │      │                   6ce7ac6a1f6b 
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
│                        │      │                  ╰ ubuntu     : 3 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65851            
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:68504            
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
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480757         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480761         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480762         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484830         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2493622         
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-2568
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-2713
│                        │      │                  6                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-4117
│                        │      │                  8                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-4250
│                        │      │                  2                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5567
│                        │      │                  7                                                           
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html         
│                        │      │                                                                              
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:66432               
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
│                        │      ╰ LastModifiedDate: 2026-09-17T12:18:05.767Z 
│                        ├ [17] ╭ VulnerabilityID : CVE-2026-56853 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:93181d9130f64dec4cb8e332a1ece5e29b3290539fe7b1cf4418
│                        │      │                   a2f4c9ee9f46 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56853        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/795540                                     
│                        │      │                  https://go.dev/issue/80205                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56853.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56853              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6089                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56853              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.093Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [18] ╭ VulnerabilityID : CVE-2026-56858 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:1bd72e3532fd24ade87ce6bd9bf979ca759504989a217366c404
│                        │      │                   c06f8232e3d4 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56858        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/807100                                     
│                        │      │                  https://go.dev/issue/80435                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56858.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56858              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6091                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56858              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.207Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [19] ╭ VulnerabilityID : CVE-2026-56859 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f1ae925855106713a879684417d81a6d11df0c93996148171c53
│                        │      │                   b169866b90db 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:69961             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56859        
│                        │      │                  https://bugzilla.redhat.com/2480684                          
│                        │      │                  https://bugzilla.redhat.com/2508234                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-69961.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/803320                                     
│                        │      │                  https://go.dev/issue/80481                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70201.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56859              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6088                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56859              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.32Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [20] ╭ VulnerabilityID : CVE-2026-56860 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:baf7c5206e23a00c1c8ec8c90b4d07d595e7c65c054c95ed139e
│                        │      │                   29d4a8a4c494 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56860        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/803681                                     
│                        │      │                  https://go.dev/issue/80494                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56860.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56860              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6218                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56860              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.44Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ╰ [21] ╭ VulnerabilityID : CVE-2026-56862 
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
│                               ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                               │                  │         db3e6bf484fead2c604d6 
│                               │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                               │                            11805c0077fc9f6189fb0 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:6a458787e945c2aef21f1a7430539d3174fed7d8a3e250d69e65
│                               │                   40bd024e2a69 
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
│                               │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                               │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                               │                  https://access.redhat.com/security/cve/CVE-2026-56862        
│                               │                  https://bugzilla.redhat.com/2515815                          
│                               │                  https://bugzilla.redhat.com/2515820                          
│                               │                  https://bugzilla.redhat.com/2515827                          
│                               │                  https://bugzilla.redhat.com/2515838                          
│                               │                  https://bugzilla.redhat.com/2515839                          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                               │                  https://creativecommons.org/licenses/by/4.0/                 
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                               │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                               │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                               │                  https://go.dev/cl/804261                                     
│                               │                  https://go.dev/issue/80528                                   
│                               │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                               │                  https://linux.oracle.com/cve/CVE-2026-56862.html             
│                               │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-15558 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:3379925ccf11b197a13b182d8f8e8e5ff40a4f1ad9484b4d4789
│                        │      │                   106ebf1412db 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:9cc24479256dbad1942946cfb421edb9678184badefb55c1a0e4
│                        │      │                   07495ce34d1d 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:73077de399006bf20cf0b0d11c8af7973d52dbdf332c34e0c5cd
│                        │      │                   0389626d49fb 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:b1b6b541f1c222fda673005eaa0617dd6bf443db1d02b5986f65
│                        │      │                   2f2631a59069 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:a96536d0f3b3ece87c52b891ae34574ff027fa717250cd225e1e
│                        │      │                   73454462b704 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-17106 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:43fda06934a3b0514ca7a9600f105838315882db6519266a4cc6
│                        │      │                   677f4869ad2c 
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
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ ghsa       : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:69961            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201            
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-17106       
│                        │      │                  https://bugzilla.redhat.com/2480684                         
│                        │      │                  https://bugzilla.redhat.com/2508234                         
│                        │      │                  https://bugzilla.redhat.com/2515815                         
│                        │      │                  https://bugzilla.redhat.com/2515820                         
│                        │      │                  https://bugzilla.redhat.com/2515827                         
│                        │      │                  https://bugzilla.redhat.com/2515838                         
│                        │      │                  https://bugzilla.redhat.com/2515839                         
│                        │      │                  https://bugzilla.redhat.com/2515840                         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147         
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-1710
│                        │      │                  6                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-1973
│                        │      │                  0                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3381
│                        │      │                  0                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3381
│                        │      │                  8                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-4249
│                        │      │                  9                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5685
│                        │      │                  2                                                           
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
│                        │      │                  https://docs.docker.com/desktop/release-notes/#4860         
│                        │      │                                                                              
│                        │      │                  https://docs.docker.com/engine/release-notes/29/#2970       
│                        │      │                                                                              
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-69961.html         
│                        │      │                                                                              
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201               
│                        │      │                                                                              
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
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-17106.html            
│                        │      │                                                                              
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70201.html        
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
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-81870 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-8wmf-6v46-5gfg
│                        │      │                  
│                        │      ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlptrace@v1.44.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlptrace 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/o
│                        │      │                  │       tlptrace@v1.44.0 
│                        │      │                  ╰ UID : 5e328b57c5bbf2fb 
│                        │      ├ InstalledVersion: v1.44.0 
│                        │      ├ FixedVersion    : 1.45.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-81870 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:29f86e967b8f8ea7ac1d127d3c85eca10dfc878745d1a371d38e
│                        │      │                   ef8c785fd492 
│                        │      ├ Title           : github.com/open-telemetry/opentelemetry-go:
│                        │      │                   OpenTelemetry-Go: Information disclosure via exporter
│                        │      │                   configuration logging 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    From version 1.5.0 to 1.44.0, sdk/trace.NewTracerProvider
│                        │      │                   emits a TracerProvider created internal Info-level
│                        │      │                   diagnostic event whose MarshalLog implementations
│                        │      │                   recursively include span processor, exporter, and client
│                        │      │                   configuration. Applications that call otel.SetLogger to
│                        │      │                   enable OpenTelemetry internal Info logging can therefore
│                        │      │                   record OTLP gRPC and HTTP collector endpoints, the OTLP
│                        │      │                   HTTP Insecure flag, and complete Zipkin collector URLs. A
│                        │      │                   person or system with access to those logs can learn
│                        │      │                   internal collector topology and can recover credentials or
│                        │      │                   tokens embedded in Zipkin URL user information or query
│                        │      │                   strings. The default OpenTelemetry logger does not emit the
│                        │      │                    event, and this path does not log OTLP authentication
│                        │      │                   headers, TLS key material, or span payloads. This issue is
│                        │      │                   fixed in version 1.45.0. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-200
│                        │      │                  CWE-532
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ ghsa  : 1 
│                        │      │                  ╰ redhat: 1 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:N/VC:L
│                        │      │                  │        │            /VI:N/VA:N/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 2 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-81870       
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go          
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/commit/3a
│                        │      │                  1412d2b3bc4e4231fbeac2ed42117ae541bb38                      
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/pull/8438
│                        │      │                                                                              
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/exporters/zipkin/v1.45.0                                
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/sdk/v1.45.0                                             
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/security/
│                        │      │                  advisories/GHSA-8wmf-6v46-5gfg                              
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-16T20:17:32.733Z 
│                        │      ╰ LastModifiedDate: 2026-09-30T17:51:56.193Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-81870 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-8wmf-6v46-5gfg
│                        │      │                  
│                        │      ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptrace
│                        │      │                   grpc@v1.44.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptrace
│                        │      │                   grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/o
│                        │      │                  │       tlptrace/otlptracegrpc@v1.44.0 
│                        │      │                  ╰ UID : 41e1d3f02add52ee 
│                        │      ├ InstalledVersion: v1.44.0 
│                        │      ├ FixedVersion    : 1.45.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-81870 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:0b14d6958063d29a7aa69956b45fa619efe2f66de90fb14feb52
│                        │      │                   9f06bc0a8dc5 
│                        │      ├ Title           : github.com/open-telemetry/opentelemetry-go:
│                        │      │                   OpenTelemetry-Go: Information disclosure via exporter
│                        │      │                   configuration logging 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    From version 1.5.0 to 1.44.0, sdk/trace.NewTracerProvider
│                        │      │                   emits a TracerProvider created internal Info-level
│                        │      │                   diagnostic event whose MarshalLog implementations
│                        │      │                   recursively include span processor, exporter, and client
│                        │      │                   configuration. Applications that call otel.SetLogger to
│                        │      │                   enable OpenTelemetry internal Info logging can therefore
│                        │      │                   record OTLP gRPC and HTTP collector endpoints, the OTLP
│                        │      │                   HTTP Insecure flag, and complete Zipkin collector URLs. A
│                        │      │                   person or system with access to those logs can learn
│                        │      │                   internal collector topology and can recover credentials or
│                        │      │                   tokens embedded in Zipkin URL user information or query
│                        │      │                   strings. The default OpenTelemetry logger does not emit the
│                        │      │                    event, and this path does not log OTLP authentication
│                        │      │                   headers, TLS key material, or span payloads. This issue is
│                        │      │                   fixed in version 1.45.0. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-200
│                        │      │                  CWE-532
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ ghsa  : 1 
│                        │      │                  ╰ redhat: 1 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:N/VC:L
│                        │      │                  │        │            /VI:N/VA:N/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 2 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-81870       
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go          
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/commit/3a
│                        │      │                  1412d2b3bc4e4231fbeac2ed42117ae541bb38                      
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/pull/8438
│                        │      │                                                                              
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/exporters/zipkin/v1.45.0                                
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/sdk/v1.45.0                                             
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/security/
│                        │      │                  advisories/GHSA-8wmf-6v46-5gfg                              
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-16T20:17:32.733Z 
│                        │      ╰ LastModifiedDate: 2026-09-30T17:51:56.193Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-81870 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-8wmf-6v46-5gfg
│                        │      │                  
│                        │      ├ PkgID           : go.opentelemetry.io/otel/sdk@v1.44.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/sdk 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/sdk@v1.44.0 
│                        │      │                  ╰ UID : 6c9c64d16836432a 
│                        │      ├ InstalledVersion: v1.44.0 
│                        │      ├ FixedVersion    : 1.45.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-81870 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:4ce15c63dfb05341dfdf5d4b5615ed27a5a58705438abac4b4a3
│                        │      │                   71d7346a56ba 
│                        │      ├ Title           : github.com/open-telemetry/opentelemetry-go:
│                        │      │                   OpenTelemetry-Go: Information disclosure via exporter
│                        │      │                   configuration logging 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    From version 1.5.0 to 1.44.0, sdk/trace.NewTracerProvider
│                        │      │                   emits a TracerProvider created internal Info-level
│                        │      │                   diagnostic event whose MarshalLog implementations
│                        │      │                   recursively include span processor, exporter, and client
│                        │      │                   configuration. Applications that call otel.SetLogger to
│                        │      │                   enable OpenTelemetry internal Info logging can therefore
│                        │      │                   record OTLP gRPC and HTTP collector endpoints, the OTLP
│                        │      │                   HTTP Insecure flag, and complete Zipkin collector URLs. A
│                        │      │                   person or system with access to those logs can learn
│                        │      │                   internal collector topology and can recover credentials or
│                        │      │                   tokens embedded in Zipkin URL user information or query
│                        │      │                   strings. The default OpenTelemetry logger does not emit the
│                        │      │                    event, and this path does not log OTLP authentication
│                        │      │                   headers, TLS key material, or span payloads. This issue is
│                        │      │                   fixed in version 1.45.0. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-200
│                        │      │                  CWE-532
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ ghsa  : 1 
│                        │      │                  ╰ redhat: 1 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:L/UI:N/VC:L
│                        │      │                  │        │            /VI:N/VA:N/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 2 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-81870       
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go          
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/commit/3a
│                        │      │                  1412d2b3bc4e4231fbeac2ed42117ae541bb38                      
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/pull/8438
│                        │      │                                                                              
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/exporters/zipkin/v1.45.0                                
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/releases/
│                        │      │                  tag/sdk/v1.45.0                                             
│                        │      │                  https://github.com/open-telemetry/opentelemetry-go/security/
│                        │      │                  advisories/GHSA-8wmf-6v46-5gfg                              
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-81870             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-16T20:17:32.733Z 
│                        │      ╰ LastModifiedDate: 2026-09-30T17:51:56.193Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-56864 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56864 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:05368f618a2bb9ebb249637945a60aba7f834b4ae771b5ef1b97
│                        │      │                   8bb33d29f61d 
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
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-56865 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56865 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f3c1dfbce3b69ed440916c0e30232b914280750155700c0f2029
│                        │      │                   0b0decd418ba 
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
│                        │      │                  ├ azure  : 3 
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
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-46600 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:00543ec969a1182841b38cfc0e59d2873dfe2824dae550dbf12c
│                        │      │                   f5531c67f687 
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
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-56852 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:3dc7f3e9e07cfc31813dc013630ca42d984421fcacb1ab4ab4cd
│                        │      │                   469294833c38 
│                        │      ├ Title           : golang.org/x/text: golang.org/x/text: Denial of Service via
│                        │      │                    invalid UTF-8 input 
│                        │      ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │      │                   containing invalid UTF-8 bytes. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-835
│                        │      │                  
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 7.5 
│                        │      ├ References                                                                    
│                        │      │                  ─────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56852        
│                        │      │                  https://bugzilla.redhat.com/2456335                          
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2504233                          
│                        │      │                  https://bugzilla.redhat.com/2508234                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/10/ALSA-2026-70201.html         
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/794100                                     
│                        │      │                  https://go.dev/issue/80142                                   
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56852.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70201.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56852              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5970                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56852              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-07-21T20:17:02.867Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [13] ╭ VulnerabilityID : CVE-2026-84304 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84304 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:dc630fefdbfe5dfcf2876485dc55a64b06ac7577213555f2b99a
│                        │      │                   9225caac8cc5 
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
│                        │      ├ VendorSeverity   ╭ azure: 3 
│                        │      │                  ╰ ghsa : 3 
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
│                        ├ [14] ╭ VulnerabilityID : CVE-2026-84445 
│                        │      ├ VendorIDs                           
│                        │      │                  ───────────────────
│                        │      │                  GHSA-2v4p-qf9q-27wj
│                        │      │                  
│                        │      ├ PkgID           : google.golang.org/grpc@v1.81.1 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.81.1 
│                        │      │                  ╰ UID : 53f12763215d3977 
│                        │      ├ InstalledVersion: v1.81.1 
│                        │      ├ FixedVersion    : 1.82.2, 1.83.2, 1.84.0-dev.0.20260825144003-d5a41119e0e3,
│                        │      │                   1.85.0-dev.0.20260825072537-93e31b48545e 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84445 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:ef5adf1ac7f0ecea2a1bd5f453ec0a2165d6c07b4cb3a4d94661
│                        │      │                   104a234ba11c 
│                        │      ├ Title           : google.golang.org/grpc: gRPC-Go: Denial of Service via
│                        │      │                   malformed RPC requests 
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
│                        │      ├ VendorSeverity   ╭ azure : 3 
│                        │      │                  ├ ghsa  : 3 
│                        │      │                  ╰ redhat: 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N
│                        │      │                  │        │            /VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 8.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 7.5 
│                        │      ├ References                                                                   
│                        │      │                  ────────────────────────────────────────────────────────────
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-84445       
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
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-84445             
│                        │      │                                                                              
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-84445             
│                        │      │                                                                              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-14T17:17:51.743Z 
│                        │      ╰ LastModifiedDate: 2026-09-25T14:10:13.927Z 
│                        ├ [15] ╭ VulnerabilityID : GHSA-hrxh-6v49-42gf 
│                        │      ├ PkgID           : google.golang.org/grpc@v1.81.1 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.81.1 
│                        │      │                  ╰ UID : 53f12763215d3977 
│                        │      ├ InstalledVersion: v1.81.1 
│                        │      ├ FixedVersion    : 1.82.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:9b3e3842d9d478ac93a346cc2717ba1d9ee031e35a74b0bd8061
│                        │      │                   a916e786e81a 
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
│                        ├ [16] ╭ VulnerabilityID : CVE-2026-84303 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84303 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:113a3e82b5f6bb4353a2fc43e41a9ae5b10ec90b30c6dfc08844
│                        │      │                   cc9d6f2384f8 
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
│                        ├ [17] ╭ VulnerabilityID : CVE-2026-27145 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:ce983daa8e7d1df294535911fe953f31fdbc27bdef06c67fdb5f
│                        │      │                   e7215bb19135 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42644            
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:68334            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:68335            
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-27145       
│                        │      │                  https://bugzilla.redhat.com/2445356                         
│                        │      │                  https://bugzilla.redhat.com/2484207                         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467822         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484207         
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-2714
│                        │      │                  5                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3381
│                        │      │                  1                                                           
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-36317.html         
│                        │      │                                                                              
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:35832               
│                        │      │                                                                              
│                        │      │                  https://go.dev/cl/783621                                    
│                        │      │                                                                              
│                        │      │                  https://go.dev/issue/79694                                  
│                        │      │                                                                              
│                        │      │                  https://groups.google.com/g/golang-announce/c/tKs3rmcBcKw   
│                        │      │                                                                              
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-27145.html            
│                        │      │                                                                              
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-53416.html        
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
│                        │      ╰ LastModifiedDate: 2026-09-18T13:17:43.283Z 
│                        ├ [18] ╭ VulnerabilityID : CVE-2026-33818 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:b231068fc44b59de24a058da10aed002b24fba6a89715b1401ee
│                        │      │                   2d8163a0a6a4 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-33818        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/814980                                     
│                        │      │                  https://go.dev/issue/80405                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-33818.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-33818              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5972                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-33818              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:19.84Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [19] ╭ VulnerabilityID : CVE-2026-39821 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:8f4730545d08c2235dce22569cdcff11cd5b25dc487003f18206
│                        │      │                   32ab15b6ea60 
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
│                        │      │                  ╰ ubuntu     : 3 
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
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147         
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:65851            
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:68504            
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
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480757         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480761         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480762         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484830         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2493622         
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-2568
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-2713
│                        │      │                  6                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-4117
│                        │      │                  8                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-4250
│                        │      │                  2                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-5567
│                        │      │                  7                                                           
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html         
│                        │      │                                                                              
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:66432               
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
│                        │      ╰ LastModifiedDate: 2026-09-17T12:18:05.767Z 
│                        ├ [20] ╭ VulnerabilityID : CVE-2026-39822 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:8d6f1075be710155708dc9ebb58cdaabe780cf28180757a3b8e7
│                        │      │                   017b8f601719 
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
│                        │      │                  ├ amazon     : 3 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:38495             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:38878             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-39822        
│                        │      │                  https://bugzilla.redhat.com/2498152                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2498152          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39822
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-38878.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:38495                
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
│                        │      ╰ LastModifiedDate: 2026-09-17T17:10:20.047Z 
│                        ├ [21] ╭ VulnerabilityID : CVE-2026-42504 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:407c370177a099ba7eb675d3bbff94e43addfaa051a156ea16ab
│                        │      │                   4e3e8f3ecabf 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:69308             
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
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-65153.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:69308                
│                        │      │                  https://go.dev/cl/774481                                     
│                        │      │                  https://go.dev/issue/79217                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/tKs3rmcBcKw    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-42504.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-69308.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-42504              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5038                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-42504              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │      ╰ LastModifiedDate: 2026-07-22T19:10:00.12Z 
│                        ├ [22] ╭ VulnerabilityID : CVE-2026-46600 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:5145933e8a27deb49897dfc6da85a5b230046e12809021ae9ff9
│                        │      │                   1465dc40df55 
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
│                        ├ [23] ╭ VulnerabilityID : CVE-2026-56853 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:a24d5121be428ce411e4a34daecbcc5432a211d4ef87451a2806
│                        │      │                   4916572c774e 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56853        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/795540                                     
│                        │      │                  https://go.dev/issue/80205                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56853.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56853              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6089                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56853              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.093Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [24] ╭ VulnerabilityID : CVE-2026-56858 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4e7b58a8838eef16afe743da6bd061fde1301036320910dab2cc
│                        │      │                   3efe90de6600 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56858        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/807100                                     
│                        │      │                  https://go.dev/issue/80435                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56858.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56858              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6091                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56858              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.207Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [25] ╭ VulnerabilityID : CVE-2026-56859 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:c4586905c467c195f8482398902686d6fb18568af34f45682dcb
│                        │      │                   1c97d589091e 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:69961             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56859        
│                        │      │                  https://bugzilla.redhat.com/2480684                          
│                        │      │                  https://bugzilla.redhat.com/2508234                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-69961.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/803320                                     
│                        │      │                  https://go.dev/issue/80481                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70201.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56859              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6088                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56859              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.32Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [26] ╭ VulnerabilityID : CVE-2026-56860 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:acdd1b34fc191eed734a870539b40e341dbb7c3db1095e3a2248
│                        │      │                   12e976850816 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56860        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/803681                                     
│                        │      │                  https://go.dev/issue/80494                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56860.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56860              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6218                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56860              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.44Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [27] ╭ VulnerabilityID : CVE-2026-56862 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:8ed606ad4e4046a1520550940325c2b20f6569d00479cfdd8088
│                        │      │                   958e1bc51d32 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70201             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:70641             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56862        
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2456335          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2504233          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2508234          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2518147          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-17106
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-19730
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33810
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56852
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-70641.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:70201                
│                        │      │                  https://go.dev/cl/804261                                     
│                        │      │                  https://go.dev/issue/80528                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56862.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-70641.html         
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56862              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6090                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56862              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.55Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [28] ╭ VulnerabilityID : CVE-2026-42505 
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
│                        │      ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                        │      │                  │         db3e6bf484fead2c604d6 
│                        │      │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                        │      │                            11805c0077fc9f6189fb0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:48a8facc9d791a03f21683ef716738cb397cafe1874166be4ad6
│                        │      │                   e5ced76fda99 
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
│                        │      │                  ├ amazon : 3 
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
│                        │      ╰ LastModifiedDate: 2026-09-16T20:14:44.473Z 
│                        ╰ [29] ╭ VulnerabilityID : CVE-2026-42507 
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
│                               ├ Layer            ╭ Digest: sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487
│                               │                  │         db3e6bf484fead2c604d6 
│                               │                  ╰ DiffID: sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db
│                               │                            11805c0077fc9f6189fb0 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:984ed619a8d7fdaf6e7548da471bcb4bdd50fd422ab095260050
│                               │                   93a3d601c806 
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
│                               │                  https://access.redhat.com/errata/RHSA-2026:29980             
│                               │                  https://access.redhat.com/errata/RHSA-2026:29981             
│                               │                  https://access.redhat.com/security/cve/CVE-2026-42507        
│                               │                  https://bugzilla.redhat.com/2484205                          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484205          
│                               │                  https://creativecommons.org/licenses/by/4.0/                 
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42507
│                               │                  https://errata.almalinux.org/9/ALSA-2026-29981.html          
│                               │                  https://errata.rockylinux.org/RLSA-2026:29980                
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
│                      ├ Layer     ╭ Digest   : sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487db3e6bf484fea
│                      │           │            d2c604d6 
│                      │           ├ DiffID   : sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db11805c0077fc9
│                      │           │            f6189fb0 
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
│                      ├ Layer     ╭ Digest   : sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487db3e6bf484fea
│                      │           │            d2c604d6 
│                      │           ├ DiffID   : sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db11805c0077fc9
│                      │           │            f6189fb0 
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
                       ├ Layer     ╭ Digest   : sha256:e773d3e19fa734b1b427f77cf364d57a7503c6aa487db3e6bf484fea
                       │           │            d2c604d6 
                       │           ├ DiffID   : sha256:583cb57a7a8d865ac0dedb2159cd48593b02804d9db11805c0077fc9
                       │           │            f6189fb0 
                       │           ╰ CreatedBy: COPY / / # buildkit 
                       ╰ Offset   : 36 
```
