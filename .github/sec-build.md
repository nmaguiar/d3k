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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-10722 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d24636ce52dfc5f135f7d25fb4b7c54197679a8bf4c64300d9f56
│                        │     │                   cedea159cf0 
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
│                        │     ├ VendorSeverity   ╭ ghsa  : 1 
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
│                        ╰ [1] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.56.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.56.0 
│                              │                  ╰ UID : b3156ebc9dec5b51 
│                              ├ InstalledVersion: v0.56.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                              │                  │         5767e0abc0debaf70a2f 
│                              │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                              │                            41e9eda6a88f9b950554 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:2914fa6e1d28333c62e13d869e917903aff5b55a1b821ef8c7ee7
│                              │                   491c504f019 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56854 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:3432e0a8350ca3518dad85844e2f3a73e26fcce74b105d943db1
│                        │      │                   aeeb2e9cd58e 
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
│                        │      ├ Severity        : CRITICAL 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-863
│                        │      │                  
│                        │      ├ VendorSeverity   ─ redhat: 4 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 9.1 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4f405f1802bd534e8ff62a748b74e5ddc96a8b7f5f2fea3c8bd1
│                        │      │                   19ee2108d301 
│                        │      ├ Title           : Previously, after a channel has been established, a
│                        │      │                   malicious peer cou ... 
│                        │      ├ Description     : Previously, after a channel has been established, a
│                        │      │                   malicious peer could send crafted messages that would
│                        │      │                   deadlock the entire connection. Now, we handle all RFC 4254
│                        │      │                    channel messages; global requests are handled explicitly.
│                        │      │                   Then, treat all other messages as a protocol error and tear
│                        │      │                    the connection down instead of buffering and blocking. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-770
│                        │      │                  
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://go.dev/cl/826524                                 
│                        │      │                  https://go.dev/issue/81317                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6355                     
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:b911b2a31159ed2183d0608ec0bed7039bc673edf17c4f4e18f2
│                        │      │                   2b927319e1ab 
│                        │      ├ Title           : Previously, a channel registered in the mux's chanList is
│                        │      │                   not usable u ... 
│                        │      ├ Description     : Previously, a channel registered in the mux's chanList is
│                        │      │                   not usable until it is established. A malicious peer was
│                        │      │                   able flood the channel's incomingRequests, deadlocking the
│                        │      │                   entire connection. Now, we add an atomic established state,
│                        │      │                    set when a channel becomes usable. Until such a time,
│                        │      │                   handlePacket drops every packet other than the open
│                        │      │                   confirmation/failure, without blocking and without tearing
│                        │      │                   down the connection. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-770
│                        │      │                  
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://go.dev/cl/826504                                 
│                        │      │                  https://go.dev/issue/81316                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6354                     
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:3197c79be5427edcc1a3f80d52cf4ebe26823c17d90128258e3f
│                        │      │                   1bbaec0a2341 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-50163 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:542bb15947c05e97555c4caf592f361458718c0bdc4e780ac65c
│                        │      │                   458167c6d119 
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
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-33818 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4787d93f78c7a793079a0ee8e2727955e7466ffa838266745c5e
│                        │      │                   58b5ea989f58 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-33818        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │      │                  https://go.dev/cl/814980                                     
│                        │      │                  https://go.dev/issue/80405                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-33818.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-33818              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5972                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-33818              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:19.84Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-39821 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:bffc0673ab1fb60025698c3a34370a044bb8171b82f1e378cbe8
│                        │      │                   ee545cbeb2ea 
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
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-39821       
│                        │      │                  https://bugzilla.redhat.com/2480756                         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2498152         
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  2                                                           
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-37435.html         
│                        │      │                                                                              
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:37435               
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
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-46395.html        
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
│                        │      ╰ LastModifiedDate: 2026-08-31T13:18:06.777Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-46600 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4676f31c1a374fd1dc45f925f2eaeedce3920ccc81e5535d8928
│                        │      │                   fb596bc1e419 
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
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-56853 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:ad924c8350bb678e5f2f3972db80fc3f4fdf9ba738150b90e062
│                        │      │                   f4aa05d153bf 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56853        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:62406                
│                        │      │                  https://go.dev/cl/795540                                     
│                        │      │                  https://go.dev/issue/80205                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56853.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56853              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6089                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56853              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.093Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-56858 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:1fed0149950316e19c7904c61cd5f5adf8aa4517c6ec8a6c83c5
│                        │      │                   96ec888ccbf6 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56858        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │      │                  https://go.dev/cl/807100                                     
│                        │      │                  https://go.dev/issue/80435                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56858.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56858              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6091                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56858              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.207Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-56859 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:352290c1c8ccecc0aed51f773a3495e7833653ca7f6e07eb352b
│                        │      │                   5dafd5437bc1 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56859        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:62406                
│                        │      │                  https://go.dev/cl/803320                                     
│                        │      │                  https://go.dev/issue/80481                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63163-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56859              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6088                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56859              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.32Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-56860 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:5b3121ab24042badb21851b5e402072d853e226d5fd6d1ffc474
│                        │      │                   7b058e6d5186 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56860        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │      │                  https://go.dev/cl/803681                                     
│                        │      │                  https://go.dev/issue/80494                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56860.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56860              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6218                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56860              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.44Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ╰ [12] ╭ VulnerabilityID : CVE-2026-56862 
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
│                               ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                               │                  │         c5767e0abc0debaf70a2f 
│                               │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                               │                            341e9eda6a88f9b950554 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:034ce15aff26750ac8f7810f1711e494e460717ef2a2cd87cdf7
│                               │                   218afafe0aad 
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
│                               │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                               │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                               │                  https://access.redhat.com/security/cve/CVE-2026-56862        
│                               │                  https://bugzilla.redhat.com/2467809                          
│                               │                  https://bugzilla.redhat.com/2467820                          
│                               │                  https://bugzilla.redhat.com/2515815                          
│                               │                  https://bugzilla.redhat.com/2515820                          
│                               │                  https://bugzilla.redhat.com/2515827                          
│                               │                  https://bugzilla.redhat.com/2515838                          
│                               │                  https://bugzilla.redhat.com/2515839                          
│                               │                  https://bugzilla.redhat.com/2515840                          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                               │                  https://creativecommons.org/licenses/by/4.0/                 
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                               │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                               │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                               │                  https://go.dev/cl/804261                                     
│                               │                  https://go.dev/issue/80528                                   
│                               │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                               │                  https://linux.oracle.com/cve/CVE-2026-56862.html             
│                               │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:e7e19eac7ab57b082dcb8b6e84edaa32d6b0d05bab520f577fb0f
│                        │     │                   aae9566e0a5 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-33818        
│                        │     │                  https://bugzilla.redhat.com/2467809                          
│                        │     │                  https://bugzilla.redhat.com/2467820                          
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │     │                  https://go.dev/cl/814980                                     
│                        │     │                  https://go.dev/issue/80405                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-33818.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:d7ae6fc9de56ae0d43e0c8528960fa76be1e6b134ef9886ff501c
│                        │     │                   11365dd3ef3 
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
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-39821        
│                        │     │                  https://bugzilla.redhat.com/2480756                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2498152          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39821
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39822
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-37435.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:37435                
│                        │     │                  https://github.com/golang/go/issues/78760                    
│                        │     │                  https://go.dev/cl/767220                                     
│                        │     │                  https://go.dev/issue/78760                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://groups.google.com/g/golang-announce/c/iI-mYSI0lu8    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-39821.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-46395.html         
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
│                        │     ╰ LastModifiedDate: 2026-08-31T13:18:06.777Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:88cfd1d1b30d2f3d964a22f69039871288d81bca1bf4a9f1d0639
│                        │     │                   c23da90e97b 
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:c76a810e00969a522324afce26e091d70a58cc63ed21f899ef284
│                        │     │                   c0fe6cd8d5e 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56853        
│                        │     │                  https://bugzilla.redhat.com/2467809                          
│                        │     │                  https://bugzilla.redhat.com/2467820                          
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:62406                
│                        │     │                  https://go.dev/cl/795540                                     
│                        │     │                  https://go.dev/issue/80205                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56853.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:802d0fdcd9be9aba29ee66bbd4978402a0e853bb0378e76c0c8b6
│                        │     │                   89b712d0417 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56858        
│                        │     │                  https://bugzilla.redhat.com/2467809                          
│                        │     │                  https://bugzilla.redhat.com/2467820                          
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │     │                  https://go.dev/cl/807100                                     
│                        │     │                  https://go.dev/issue/80435                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56858.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:44affa732a1d32479afc09d45b3fd43986ef99c4231f34801c2c2
│                        │     │                   d55fafa1f5d 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56859        
│                        │     │                  https://bugzilla.redhat.com/2467809                          
│                        │     │                  https://bugzilla.redhat.com/2467820                          
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://go.dev/cl/803320                                     
│                        │     │                  https://go.dev/issue/80481                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-63163-0.html       
│                        │     │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56859              
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:57518d13a427c40398cc524105a79c160aa18bc4e2ef0a7584280
│                        │     │                   93800c67e7f 
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
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │     │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │     │                  https://access.redhat.com/security/cve/CVE-2026-56860        
│                        │     │                  https://bugzilla.redhat.com/2467809                          
│                        │     │                  https://bugzilla.redhat.com/2467820                          
│                        │     │                  https://bugzilla.redhat.com/2515815                          
│                        │     │                  https://bugzilla.redhat.com/2515820                          
│                        │     │                  https://bugzilla.redhat.com/2515827                          
│                        │     │                  https://bugzilla.redhat.com/2515838                          
│                        │     │                  https://bugzilla.redhat.com/2515839                          
│                        │     │                  https://bugzilla.redhat.com/2515840                          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │     │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │     │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │     │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │     │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │     │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │     │                  https://go.dev/cl/803681                                     
│                        │     │                  https://go.dev/issue/80494                                   
│                        │     │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │     │                  https://linux.oracle.com/cve/CVE-2026-56860.html             
│                        │     │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
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
│                              ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                              │                  │         5767e0abc0debaf70a2f 
│                              │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                              │                            41e9eda6a88f9b950554 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:77fa69272340ed4705e59ea9caf8a4a21237d25e7f02236ee46d0
│                              │                   04ee43f06a2 
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
│                              │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                              │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                              │                  https://access.redhat.com/security/cve/CVE-2026-56862        
│                              │                  https://bugzilla.redhat.com/2467809                          
│                              │                  https://bugzilla.redhat.com/2467820                          
│                              │                  https://bugzilla.redhat.com/2515815                          
│                              │                  https://bugzilla.redhat.com/2515820                          
│                              │                  https://bugzilla.redhat.com/2515827                          
│                              │                  https://bugzilla.redhat.com/2515838                          
│                              │                  https://bugzilla.redhat.com/2515839                          
│                              │                  https://bugzilla.redhat.com/2515840                          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                              │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                              │                  https://creativecommons.org/licenses/by/4.0/                 
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                              │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                              │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                              │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                              │                  https://go.dev/cl/804261                                     
│                              │                  https://go.dev/issue/80528                                   
│                              │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                              │                  https://linux.oracle.com/cve/CVE-2026-56862.html             
│                              │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
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
│                        │     │                  ───────────────────
│                        │     │                  GHSA-p436-gjf2-799p
│                        │     │                  
│                        │     ├ PkgID           : golang.org/x/crypto@v0.52.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.52.0 
│                        │     │                  ╰ UID : c6746a665642ce00 
│                        │     ├ InstalledVersion: v0.52.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56854 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:4bf91e0ac262970111bd2a3af8baf108b6d037cd3220fb6300cef
│                        │     │                   e9e953414d1 
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
│                        │     ├ Severity        : CRITICAL 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-863
│                        │     │                  
│                        │     ├ VendorSeverity   ─ redhat: 4 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 9.1 
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:c43de0bfd0a3d3fae80f7acd12184d61c3ace20f05fc9beea4937
│                        │     │                   8b7ce9f8dbc 
│                        │     ├ Title           : Previously, after a channel has been established, a
│                        │     │                   malicious peer cou ... 
│                        │     ├ Description     : Previously, after a channel has been established, a
│                        │     │                   malicious peer could send crafted messages that would
│                        │     │                   deadlock the entire connection. Now, we handle all RFC 4254
│                        │     │                   channel messages; global requests are handled explicitly.
│                        │     │                   Then, treat all other messages as a protocol error and tear
│                        │     │                   the connection down instead of buffering and blocking. 
│                        │     ├ Severity        : UNKNOWN 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ References                                                                
│                        │     │                  ─────────────────────────────────────────────────────────
│                        │     │                  https://go.dev/cl/826524                                 
│                        │     │                  https://go.dev/issue/81317                               
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6355                     
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:880793174a17b8bb4a3873784d5b4baa546276579d7a64698094e
│                        │     │                   a0643feb8af 
│                        │     ├ Title           : Previously, a channel registered in the mux's chanList is
│                        │     │                   not usable u ... 
│                        │     ├ Description     : Previously, a channel registered in the mux's chanList is
│                        │     │                   not usable until it is established. A malicious peer was
│                        │     │                   able flood the channel's incomingRequests, deadlocking the
│                        │     │                   entire connection. Now, we add an atomic established state,
│                        │     │                   set when a channel becomes usable. Until such a time,
│                        │     │                   handlePacket drops every packet other than the open
│                        │     │                   confirmation/failure, without blocking and without tearing
│                        │     │                   down the connection. 
│                        │     ├ Severity        : UNKNOWN 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ References                                                                
│                        │     │                  ─────────────────────────────────────────────────────────
│                        │     │                  https://go.dev/cl/826504                                 
│                        │     │                  https://go.dev/issue/81316                               
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6354                     
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:b3e6219bb17f90c5c36bf91bac342bb609cc4e3434da5a49ec54b
│                        │     │                   a10f535ec3c 
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
│                              ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                              │                  │         5767e0abc0debaf70a2f 
│                              │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                              │                            41e9eda6a88f9b950554 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:59e87dfa15b4db7244de2f6a0d6bc0c21af96938f3560c32d4106
│                              │                   1e4e4a9ee5d 
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
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-41567 
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:33d823d57819d0fa16d0ff97d5440a1f8031c27c26260ff0bc038
│                        │     │                   61ff6c71644 
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
│                        │     ╰ LastModifiedDate: 2026-09-04T13:19:41.81Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-42306 
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:b29f77e7e2ffd7cc456a0739a6c19aade7732cba811a56bffeac4
│                        │     │                   34d8cc4c1c4 
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
│                        │     │                  ─────────────────────────────────────────────────────
│                        │     │                  CWE-61                                               
│                        │     │                  https://sourceware.org/bugzilla/show_bug.cgi?id=34574
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
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-33997 
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:1806a9ecd5dc32d05196a26358aee8954814875ea0ae67ab46d08
│                        │     │                   8c7d26b19db 
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
│                        │     ╰ LastModifiedDate: 2026-08-24T13:18:17.587Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-41568 
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:14152a8f1147bc711f071104ebe408be3e8c02ef6e3c91ed075cd
│                        │     │                   e992ffb1325 
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
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-17106 
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-17106 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:3345599ab74d030ede231413022ac0a1215f332cc09863a07af9c
│                        │     │                   dcb94a863ca 
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
│                        │     ├ VendorSeverity   ╭ bitnami: 3 
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
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-56855 
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:1b8df79abd3a826ad2d7db95a806423a976b532c9f03835dbc073
│                        │     │                   9f35e9f8713 
│                        │     ├ Title           : Previously, after a channel has been established, a
│                        │     │                   malicious peer cou ... 
│                        │     ├ Description     : Previously, after a channel has been established, a
│                        │     │                   malicious peer could send crafted messages that would
│                        │     │                   deadlock the entire connection. Now, we handle all RFC 4254
│                        │     │                   channel messages; global requests are handled explicitly.
│                        │     │                   Then, treat all other messages as a protocol error and tear
│                        │     │                   the connection down instead of buffering and blocking. 
│                        │     ├ Severity        : UNKNOWN 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ References                                                                
│                        │     │                  ─────────────────────────────────────────────────────────
│                        │     │                  https://go.dev/cl/826524                                 
│                        │     │                  https://go.dev/issue/81317                               
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6355                     
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-02T20:17:36.397Z 
│                        │     ╰ LastModifiedDate: 2026-09-04T16:34:56.823Z 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-78662 
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
│                        │     ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                        │     │                  │         5767e0abc0debaf70a2f 
│                        │     │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                        │     │                            41e9eda6a88f9b950554 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:e435972155f1fb9a496beaf502bfccfc0437c308c0f0b0aeddfd7
│                        │     │                   422fffbb71b 
│                        │     ├ Title           : Previously, a channel registered in the mux's chanList is
│                        │     │                   not usable u ... 
│                        │     ├ Description     : Previously, a channel registered in the mux's chanList is
│                        │     │                   not usable until it is established. A malicious peer was
│                        │     │                   able flood the channel's incomingRequests, deadlocking the
│                        │     │                   entire connection. Now, we add an atomic established state,
│                        │     │                   set when a channel becomes usable. Until such a time,
│                        │     │                   handlePacket drops every packet other than the open
│                        │     │                   confirmation/failure, without blocking and without tearing
│                        │     │                   down the connection. 
│                        │     ├ Severity        : UNKNOWN 
│                        │     ├ CweIDs                  
│                        │     │                  ───────
│                        │     │                  CWE-770
│                        │     │                  
│                        │     ├ References                                                                
│                        │     │                  ─────────────────────────────────────────────────────────
│                        │     │                  https://go.dev/cl/826504                                 
│                        │     │                  https://go.dev/issue/81316                               
│                        │     │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │     │                  https://pkg.go.dev/vuln/GO-2026-6354                     
│                        │     │                  
│                        │     ├ PublishedDate   : 2026-09-02T20:17:37.167Z 
│                        │     ╰ LastModifiedDate: 2026-09-04T16:33:34.057Z 
│                        ╰ [7] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.55.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.55.0 
│                              │                  ╰ UID : 25359bce0c42962b 
│                              ├ InstalledVersion: v0.55.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                              │                  │         5767e0abc0debaf70a2f 
│                              │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                              │                            41e9eda6a88f9b950554 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:69dadc69977c2ff7fe78753ded85b17ecd899eebbecd2f5dcd37a
│                              │                   56dd55b05c7 
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
│      ╰ Vulnerabilities ─ [0] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.56.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.56.0 
│                              │                  ╰ UID : 8db81c6138f552c6 
│                              ├ InstalledVersion: v0.56.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c
│                              │                  │         5767e0abc0debaf70a2f 
│                              │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b3
│                              │                            41e9eda6a88f9b950554 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:b4f5b6b956e00c2f1bc7545da0a9020177ef47ffcda03603ff8c4
│                              │                   3cbe333f77e 
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
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-56854 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56854 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4e0b461b2c24d4d77a1ec0fe87112560af9e29e8a202fcd3025d
│                        │      │                   d4f71f4b638a 
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
│                        │      ├ Severity        : CRITICAL 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-863
│                        │      │                  
│                        │      ├ VendorSeverity   ─ redhat: 4 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 9.1 
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
│                        │      ├ PkgID           : golang.org/x/crypto@v0.53.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.53.0 
│                        │      │                  ╰ UID : 4a75460d65c046ad 
│                        │      ├ InstalledVersion: v0.53.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56855 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:cff38f88193c71ef0c81afa9ba36ae1f512d41886726834e311b
│                        │      │                   446c2e48a264 
│                        │      ├ Title           : Previously, after a channel has been established, a
│                        │      │                   malicious peer cou ... 
│                        │      ├ Description     : Previously, after a channel has been established, a
│                        │      │                   malicious peer could send crafted messages that would
│                        │      │                   deadlock the entire connection. Now, we handle all RFC 4254
│                        │      │                    channel messages; global requests are handled explicitly.
│                        │      │                   Then, treat all other messages as a protocol error and tear
│                        │      │                    the connection down instead of buffering and blocking. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-770
│                        │      │                  
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://go.dev/cl/826524                                 
│                        │      │                  https://go.dev/issue/81317                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6355                     
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-02T20:17:36.397Z 
│                        │      ╰ LastModifiedDate: 2026-09-04T16:34:56.823Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-78662 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-78662 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:48880dc74491991145f7a13f57e91f6423dafa656e04891457c1
│                        │      │                   56b14caace6f 
│                        │      ├ Title           : Previously, a channel registered in the mux's chanList is
│                        │      │                   not usable u ... 
│                        │      ├ Description     : Previously, a channel registered in the mux's chanList is
│                        │      │                   not usable until it is established. A malicious peer was
│                        │      │                   able flood the channel's incomingRequests, deadlocking the
│                        │      │                   entire connection. Now, we add an atomic established state,
│                        │      │                    set when a channel becomes usable. Until such a time,
│                        │      │                   handlePacket drops every packet other than the open
│                        │      │                   confirmation/failure, without blocking and without tearing
│                        │      │                   down the connection. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ├ CweIDs                  
│                        │      │                  ───────
│                        │      │                  CWE-770
│                        │      │                  
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://go.dev/cl/826504                                 
│                        │      │                  https://go.dev/issue/81316                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/1y3fb2np35U
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6354                     
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-09-02T20:17:37.167Z 
│                        │      ╰ LastModifiedDate: 2026-09-04T16:33:34.057Z 
│                        ├ [3]  ╭ VulnerabilityID : GO-2026-5932 
│                        │      ├ PkgID           : golang.org/x/crypto@v0.53.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.53.0 
│                        │      │                  ╰ UID : 4a75460d65c046ad 
│                        │      ├ InstalledVersion: v0.53.0 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:52b6078ab2d2b2e8716edcfc8c966ba9898e75e264168395a1f2
│                        │      │                   7b156b2fbb5b 
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
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-46600 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:e1c9ace0d3737bcb054dbfb12a4aa07115adaf7d41a266a6b108
│                        │      │                   b944c61fffdd 
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
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-56852 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:3bc4953a037c6aa96638f12e3ff0d036f8e4c73c28a6a33f9dc4
│                        │      │                   a7b2318487d9 
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
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-84304 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84304 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:51ef255237973e5755f3843bd3a22e12d808aa41aa814520b43d
│                        │      │                   27068fd7ccab 
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
│                        │      ╰ LastModifiedDate: 2026-09-01T20:17:24.507Z 
│                        ├ [7]  ╭ VulnerabilityID : GHSA-hrxh-6v49-42gf 
│                        │      ├ PkgID           : google.golang.org/grpc@v1.79.3 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.79.3 
│                        │      │                  ╰ UID : 2977bc5805b7c756 
│                        │      ├ InstalledVersion: v1.79.3 
│                        │      ├ FixedVersion    : 1.82.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:1e9ca03803bf8f75ea4f7e1abafd303cf12b0a1973838d312ac1
│                        │      │                   a8749d75c67d 
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
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-33818 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0010ee31e8683c2492c4ecaa0d87c4550b07d9be10c74444db6b
│                        │      │                   13690c7fff44 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-33818        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │      │                  https://go.dev/cl/814980                                     
│                        │      │                  https://go.dev/issue/80405                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-33818.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-33818              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5972                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-33818              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:19.84Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-39821 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:11a6369e1dc6dcabddc8ff6ca1cd4ca49a9e7dddf4f8aba52427
│                        │      │                   6e6fe8155e31 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33163            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42644            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42796            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:42852            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:43038            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:33183            
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:35826            
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:36796            
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
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-39821       
│                        │      │                  https://bugzilla.redhat.com/2480756                         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2498152         
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  2                                                           
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-37435.html         
│                        │      │                                                                              
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:37435               
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
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-46395.html        
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
│                        │      ╰ LastModifiedDate: 2026-08-31T13:18:06.777Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-56853 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:58041fda7c9602d38c9d19cf0b4827d6d8267600803ae5eb84a7
│                        │      │                   cbf83dc723cc 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56853        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:62406                
│                        │      │                  https://go.dev/cl/795540                                     
│                        │      │                  https://go.dev/issue/80205                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56853.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
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
│                        │      ├ PkgID           : stdlib@v1.25.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                        │      │                  ╰ UID : 81d0a980aae4af20 
│                        │      ├ InstalledVersion: v1.25.12 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:2e64089f0bc115484e9699958c368fdc7ab5de0a7775bfceb5de
│                        │      │                   85cd8ff6da7d 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56858        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │      │                  https://go.dev/cl/807100                                     
│                        │      │                  https://go.dev/issue/80435                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56858.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
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
│                        │      ├ PkgID           : stdlib@v1.25.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                        │      │                  ╰ UID : 81d0a980aae4af20 
│                        │      ├ InstalledVersion: v1.25.12 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:1db344bc918decb3c4b458ee4193923a664ff3aa75084de85ad6
│                        │      │                   2b998923c5ac 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56859        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:62406                
│                        │      │                  CWE-125                                                      
│                        │      │                  https://go.dev/issue/80481                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63163-0.html       
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
│                        │      ├ PkgID           : stdlib@v1.25.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                        │      │                  ╰ UID : 81d0a980aae4af20 
│                        │      ├ InstalledVersion: v1.25.12 
│                        │      ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:af982de829e11f238ff49577d826186a8ff09dc3264d0aa0818f
│                        │      │                   b9fe57900e84 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56860        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │      │                  https://go.dev/cl/803681                                     
│                        │      │                  https://go.dev/issue/80494                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56860.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
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
│                               ├ PkgID           : stdlib@v1.25.12 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.12 
│                               │                  ╰ UID : 81d0a980aae4af20 
│                               ├ InstalledVersion: v1.25.12 
│                               ├ FixedVersion    : 1.25.13, 1.26.6, 1.27.0-rc.3 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                               │                  │         c5767e0abc0debaf70a2f 
│                               │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                               │                            341e9eda6a88f9b950554 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:f78c1336af53337f47b58cead22cc5f8f8b2a71a9c593a3a5a66
│                               │                   2336390066ca 
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
│                               │                  ────────────
│                               │                  GO-2026-6088
│                               │                  
│                               ├ VendorSeverity   ╭ alma       : 3 
│                               │                  ├ amazon     : 3 
│                               │                  ├ bitnami    : 3 
│                               │                  ├ oracle-oval: 3 
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
│                               │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                               │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                               │                  https://access.redhat.com/security/cve/CVE-2026-56862        
│                               │                  https://bugzilla.redhat.com/2467809                          
│                               │                  https://bugzilla.redhat.com/2467820                          
│                               │                  https://bugzilla.redhat.com/2515815                          
│                               │                  https://bugzilla.redhat.com/2515820                          
│                               │                  https://bugzilla.redhat.com/2515827                          
│                               │                  https://bugzilla.redhat.com/2515838                          
│                               │                  https://bugzilla.redhat.com/2515839                          
│                               │                  https://bugzilla.redhat.com/2515840                          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                               │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                               │                  https://creativecommons.org/licenses/by/4.0/                 
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                               │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                               │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                               │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                               │                  https://go.dev/cl/804261                                     
│                               │                  https://go.dev/issue/80528                                   
│                               │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                               │                  https://linux.oracle.com/cve/CVE-2026-56862.html             
│                               │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-15558 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:91e9f5ceff1323e019ea4b5cf2b07796cedc9ccd28a143330a53
│                        │      │                   70cbd6b69950 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:0f8fb71ece598ce8a06d0fe0e96f4d49302d72dbbfbdf68e2d5f
│                        │      │                   ce1088db1e3c 
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
│                        │      ╰ LastModifiedDate: 2026-09-04T13:19:41.81Z 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:6586b1f3e331950981bc841aec77668c74098a5f245501e03aa5
│                        │      │                   a72fa920f23b 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:954cd7f7021cf6e500a59893c8af568cb0052a522df123a2d00e
│                        │      │                   dbd66e15044e 
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
│                        │      ╰ LastModifiedDate: 2026-08-24T13:18:17.587Z 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:a8adb2c2f528a02276999cd6a29adc12be84ac0509c1501e4d76
│                        │      │                   cd933414120d 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-17106 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:42083be6617a13c5fc2c01202d17ad3977634abc605f0dd4bd0e
│                        │      │                   6cbedb9f7d07 
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
│                        │      ├ VendorSeverity   ╭ bitnami: 3 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56864 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:65c3ca0bb1ef5386f60efcc01d1f3add81fc39379accfc279045
│                        │      │                   1ad8b17b05fd 
│                        │      ├ Title           : A malicious GOSUMDB was capable of serving arbitrary module
│                        │      │                    content no ... 
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
│                        │      │                  ╰ bitnami: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References                                                                
│                        │      │                  ─────────────────────────────────────────────────────────
│                        │      │                  https://go.dev/cl/815000                                 
│                        │      │                  https://go.dev/cl/815020                                 
│                        │      │                  https://go.dev/issue/80745                               
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56864          
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6180                     
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56865 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f8479eb3e2c7f80158b47b092359a38636114ce69a14cd9199d9
│                        │      │                   742334f41780 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:36c1d1d47144f1032cfb4c6b6544a00e9990a30ba0532faba21b
│                        │      │                   25accebe7583 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:fcf54d4b28fe554f8f2c1bb1003273f5da8baf02d1f94f484854
│                        │      │                   a405f79f2026 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-84304 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:90a8582de5b107255b2a2dc8f1e80c4c83a375858a14eadfdd4f
│                        │      │                   d567a59a3bc4 
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
│                        │      ╰ LastModifiedDate: 2026-09-01T20:17:24.507Z 
│                        ├ [11] ╭ VulnerabilityID : GHSA-hrxh-6v49-42gf 
│                        │      ├ PkgID           : google.golang.org/grpc@v1.81.1 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.81.1 
│                        │      │                  ╰ UID : 53f12763215d3977 
│                        │      ├ InstalledVersion: v1.81.1 
│                        │      ├ FixedVersion    : 1.82.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:3504dacae3931306a0bb86855d728166bc53bd37d1e4afe896b4
│                        │      │                   8c2f57f433c7 
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
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-27145 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:c0adcabb8d27a0e256570fb855fb3f07d94b8f3446921b193ba8
│                        │      │                   bf1fc59d0b2b 
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
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :L/A:H 
│                        │      │                  │         ╰ V3Score : 6.5 
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
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56853.html            
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
│                        │      │                  https://github.com/grpc/grpc-go/security/advisories/GHSA-vp5
│                        │      │                  2-pcj8-j9qc                                                 
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:57649            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59556            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59557            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59558            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59559            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59579            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59593            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60025            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60315            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60354            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60386            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60387            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60388            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60390            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:60391            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:61253            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:61314            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63016            
│                        │      │                                                                              
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-27145       
│                        │      │                                                                              
│                        │      │                  https://bugzilla.redhat.com/2445356                         
│                        │      │                                                                              
│                        │      │                  https://bugzilla.redhat.com/2484207                         
│                        │      │                                                                              
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2445356         
│                        │      │                                                                              
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484207         
│                        │      │                                                                              
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                                                                              
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
│                        │      ╰ LastModifiedDate: 2026-09-04T13:18:37.147Z 
│                        ├ [13] ╭ VulnerabilityID : CVE-2026-33818 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33818 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0ba74b575b2a04c1fff910d4c27ccd4532e07c32c0463959689d
│                        │      │                   2e3cd5737dce 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-33818        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │      │                  https://go.dev/cl/814980                                     
│                        │      │                  https://go.dev/issue/80405                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-33818.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-33818              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5972                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-33818              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:19.84Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [14] ╭ VulnerabilityID : CVE-2026-39821 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:663634117968610e29eab1cfc427a4e23c0cdc1aa81dac3600cb
│                        │      │                   2de4c358560f 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54285            
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:54286            
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:59562            
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
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-39821       
│                        │      │                  https://bugzilla.redhat.com/2480756                         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2480756         
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2498152         
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  1                                                           
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-3982
│                        │      │                  2                                                           
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-37435.html         
│                        │      │                                                                              
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:37435               
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
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-46395.html        
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
│                        │      ╰ LastModifiedDate: 2026-08-31T13:18:06.777Z 
│                        ├ [15] ╭ VulnerabilityID : CVE-2026-39822 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:8a80b94f8395a1988ebc339d4c6778ef016e4a03759b25fa4d33
│                        │      │                   2b66432963bf 
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
│                        ├ [16] ╭ VulnerabilityID : CVE-2026-42504 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:b30c4c8bf856c07ec89706fa6d8cf887a5d5a40b845093a40872
│                        │      │                   5e971b07cfc8 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63124             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-42504        
│                        │      │                  https://bugzilla.redhat.com/2484204                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2484204          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42504
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/8/ALSA-2026-63124.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:63124                
│                        │      │                  https://go.dev/cl/774481                                     
│                        │      │                  https://go.dev/issue/79217                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/tKs3rmcBcKw    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-42504.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63124-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-42504              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-5038                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-42504              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │      ╰ LastModifiedDate: 2026-07-22T19:10:00.12Z 
│                        ├ [17] ╭ VulnerabilityID : CVE-2026-46600 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:3af600cfa4d55fb69a81d9ba40f8d4b4f3b83ba85ae4c404799b
│                        │      │                   d9044a165e70 
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
│                        ├ [18] ╭ VulnerabilityID : CVE-2026-56853 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56853 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:68811a8097633c47c525e56613e1cfae1ba836ed07441d54e8e6
│                        │      │                   fd1c440db782 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56853        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467809          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2467820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515840          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:62406                
│                        │      │                  https://go.dev/cl/795540                                     
│                        │      │                  https://go.dev/issue/80205                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56853.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56853              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6089                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56853              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.093Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [19] ╭ VulnerabilityID : CVE-2026-56858 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56858 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:b6f012ecedd33fc02da73e6322c31c783434ffeb72cca576d3c5
│                        │      │                   6a15b8ae3611 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56858        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │      │                  https://go.dev/cl/807100                                     
│                        │      │                  https://go.dev/issue/80435                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56858.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56858              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6091                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56858              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.207Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [20] ╭ VulnerabilityID : CVE-2026-56859 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56859 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:ae9577506249d238570d1f5141abbad7b4d3d0aa7d7d79004b71
│                        │      │                   7fb6f396f7b6 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56859        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515827          
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63163-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56859              
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-39820
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-42499
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56853
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56859
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:62406                
│                        │      │                  https://go.dev/cl/803320                                     
│                        │      │                  https://go.dev/issue/80481                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56859.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63163-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56859              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6088                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56859              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.32Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [21] ╭ VulnerabilityID : CVE-2026-56860 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56860 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:147f1513fe590a1393e013da91b7f7c58d05e274de52056d8f44
│                        │      │                   c9614cc1c035 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56860        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │      │                  https://go.dev/cl/803681                                     
│                        │      │                  https://go.dev/issue/80494                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56860.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56860              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6218                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56860              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.44Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [22] ╭ VulnerabilityID : CVE-2026-56862 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56862 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0823eabb12e86b4f5149501a4ba9c84367eacdc540f7e4fafbf8
│                        │      │                   a6afaac3f98a 
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
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:62406             
│                        │      │                  https://access.redhat.com/errata/RHSA-2026:63136             
│                        │      │                  https://access.redhat.com/security/cve/CVE-2026-56862        
│                        │      │                  https://bugzilla.redhat.com/2467809                          
│                        │      │                  https://bugzilla.redhat.com/2467820                          
│                        │      │                  https://bugzilla.redhat.com/2515815                          
│                        │      │                  https://bugzilla.redhat.com/2515820                          
│                        │      │                  https://bugzilla.redhat.com/2515827                          
│                        │      │                  https://bugzilla.redhat.com/2515838                          
│                        │      │                  https://bugzilla.redhat.com/2515839                          
│                        │      │                  https://bugzilla.redhat.com/2515840                          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515815          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515820          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515838          
│                        │      │                  https://bugzilla.redhat.com/show_bug.cgi?id=2515839          
│                        │      │                  https://creativecommons.org/licenses/by/4.0/                 
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-33818
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56858
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56860
│                        │      │                  https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-56862
│                        │      │                  https://errata.almalinux.org/9/ALSA-2026-62406.html          
│                        │      │                  https://errata.rockylinux.org/RLSA-2026:63136                
│                        │      │                  https://go.dev/cl/804261                                     
│                        │      │                  https://go.dev/issue/80528                                   
│                        │      │                  https://groups.google.com/g/golang-announce/c/94pEornpRlI    
│                        │      │                  https://linux.oracle.com/cve/CVE-2026-56862.html             
│                        │      │                  https://linux.oracle.com/errata/ELSA-2026-63332-0.html       
│                        │      │                  https://nvd.nist.gov/vuln/detail/CVE-2026-56862              
│                        │      │                  https://pkg.go.dev/vuln/GO-2026-6090                         
│                        │      │                  https://www.cve.org/CVERecord?id=CVE-2026-56862              
│                        │      │                  
│                        │      ├ PublishedDate   : 2026-08-13T22:17:22.55Z 
│                        │      ╰ LastModifiedDate: 2026-09-03T16:37:52.17Z 
│                        ├ [23] ╭ VulnerabilityID : CVE-2026-42505 
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
│                        │      ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                        │      │                  │         c5767e0abc0debaf70a2f 
│                        │      │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                        │      │                            341e9eda6a88f9b950554 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:101d1229a564d01a07d09591fc48106a18ab9bc83bd9673d4381
│                        │      │                   c14371c36094 
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
│                        ╰ [24] ╭ VulnerabilityID : CVE-2026-42507 
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
│                               ├ Layer            ╭ Digest: sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9
│                               │                  │         c5767e0abc0debaf70a2f 
│                               │                  ╰ DiffID: sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b
│                               │                            341e9eda6a88f9b950554 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:5739b54bbd308ecd0fecb818f88cafcd06a64da826d3fbdadb64
│                               │                   854a3e3c0dd3 
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
│                      ├ Layer     ╭ Digest   : sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c5767e0abc0de
│                      │           │            baf70a2f 
│                      │           ├ DiffID   : sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b341e9eda6a88f
│                      │           │            9b950554 
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
│                      ├ Layer     ╭ Digest   : sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c5767e0abc0de
│                      │           │            baf70a2f 
│                      │           ├ DiffID   : sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b341e9eda6a88f
│                      │           │            9b950554 
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
                       ├ Layer     ╭ Digest   : sha256:acb8d2490c3cd6fd428ca8d8731e4c6c14dbc9886d9c5767e0abc0de
                       │           │            baf70a2f 
                       │           ├ DiffID   : sha256:ccebc839c465eaa03eee34dead428c4accb086d3d4b341e9eda6a88f
                       │           │            9b950554 
                       │           ╰ CreatedBy: COPY / / # buildkit 
                       ╰ Offset   : 36 
```
