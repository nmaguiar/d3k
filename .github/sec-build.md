```yaml
╭ [0]  ╭ Target         : nmaguiar/d3k:build (ubuntu 26.04) 
│      ├ Class          : os-pkgs 
│      ├ Type           : ubuntu 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                        │      ├ PkgName         : bsdutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : fce02d7573b26c2e 
│                        │      ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a958dc152feff2309a56e0c205fae03b6e9c1adbd616f7ff8846
│                        │      │                   a9363717a38c 
│                        │      ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │      │                   loop devices 
│                        │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                        │      │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                        │      │                   vulnerability has been identified in the SUID binary
│                        │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                        │      │                   setting up loop devices, validates the source file path
│                        │      │                   with user privileges via fork() + setuid() + realpath(),
│                        │      │                   but subsequently re-canonicalizes and opens it with root
│                        │      │                   privileges (euid=0) without verifying that the path has not
│                        │      │                    been replaced between both operations. Neither O_NOFOLLOW,
│                        │      │                    nor inode comparison, nor post-open fstat() are employed.
│                        │      │                   This allows a local unprivileged user to replace the source
│                        │      │                    file with a symlink pointing to any root-owned file or
│                        │      │                   device during the race window, causing the SUID binary to
│                        │      │                   open and mount it as root. Exploitation requires an
│                        │      │                   /etc/fstab entry with user,loop options whose path points
│                        │      │                   to a directory where the attacker has write permission, and
│                        │      │                    that /usr/bin/mount has the SUID bit set (the default
│                        │      │                   configuration on virtually all Linux distributions). The
│                        │      │                   impact is unauthorized read access to root-protected files
│                        │      │                   and block devices, including backup images, disk volumes,
│                        │      │                   and any file containing a valid filesystem. This issue has
│                        │      │                   been patched in version 2.41.4. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-59 
│                        │      │                  ├ [1]: CWE-269 
│                        │      │                  ╰ [2]: CWE-367 
│                        │      ├ VendorSeverity   ╭ azure       : 2 
│                        │      │                  ├ bottlerocket: 2 
│                        │      │                  ├ julia       : 2 
│                        │      │                  ├ redhat      : 2 
│                        │      │                  ╰ ubuntu      : 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-27456 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                        │      ├ PkgName         : bsdutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : fce02d7573b26c2e 
│                        │      ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3090d1e4def9214a3cb3da181436a7277343f626ed1fa37a863c
│                        │      │                   298c009c2031 
│                        │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │      │                   improper hostname canonicalization 
│                        │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │      │                   canonicalization in the `login(1)` utility, when invoked
│                        │      │                   with the `-h` option, can modify the supplied remote
│                        │      │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │      │                   could exploit this by providing a specially crafted
│                        │      │                   hostname, potentially bypassing host-based Pluggable
│                        │      │                   Authentication Modules (PAM) access control rules that rely
│                        │      │                    on fully qualified domain names. This could lead to
│                        │      │                   unauthorized access. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-289 
│                        │      ├ VendorSeverity   ╭ azure : 1 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2024-52005 
│                        │      ├ PkgID           : git@1:2.53.0-1ubuntu1 
│                        │      ├ PkgName         : git 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.53.0-1ubuntu1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 52058baed6a8c082 
│                        │      ├ InstalledVersion: 1:2.53.0-1ubuntu1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b074eebe2844ca14a6c60909b0f8112c814d4e8b607892fae017
│                        │      │                   a8d6ba617c1c 
│                        │      ├ Title           : git: The sideband payload is passed unfiltered to the
│                        │      │                   terminal in git 
│                        │      ├ Description     : Git is a source code management tool. When cloning from a
│                        │      │                   server (or fetching, or pushing), informational or error
│                        │      │                   messages are transported from the remote Git process to the
│                        │      │                    client via the so-called "sideband channel". These
│                        │      │                   messages will be prefixed with "remote:" and printed
│                        │      │                   directly to the standard error output. Typically, this
│                        │      │                   standard error output is connected to a terminal that
│                        │      │                   understands ANSI escape sequences, which Git did not
│                        │      │                   protect against. Most modern terminals support control
│                        │      │                   sequences that can be used by a malicious actor to hide and
│                        │      │                    misrepresent information, or to mislead the user into
│                        │      │                   executing untrusted scripts. As requested on the
│                        │      │                   git-security mailing list, the patches are under discussion
│                        │      │                    on the public mailing list. Users are advised to update as
│                        │      │                    soon as possible. Users unable to upgrade should avoid
│                        │      │                   recursive clones unless they are from trusted sources. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-116 
│                        │      │                  ╰ [1]: CWE-150 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:N/PR:N/UI:A/VC:
│                        │      │                  │         │            H/VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │         ╰ V40Score : 7.5 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │      │                  │         │           :H/A:H 
│                        │      │                  │         ╰ V3Score : 8.8 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I
│                        │      │                            │           :H/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7409 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-52005 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2338289 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2338289 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-52005 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-7409.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:7409 
│                        │      │                  ├ [7] : https://github.com/git/git/security/advisories/GHSA-
│                        │      │                  │       7jjc-gg6m-3329 
│                        │      │                  ├ [8] : https://linux.oracle.com/cve/CVE-2024-52005.html 
│                        │      │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2025-8414.html 
│                        │      │                  ├ [10]: https://lore.kernel.org/git/1M9FnZ-1taoNo1wwh-00ESSd
│                        │      │                  │       @mail.gmx.net 
│                        │      │                  ├ [11]: https://lore.kernel.org/git/8570a129-d66a-465a-905e-
│                        │      │                  │       0a077c69c409@gmail.com/T/#t 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-52005 
│                        │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-52005 
│                        │      ├ PublishedDate   : 2025-01-15T18:15:24.13Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T08:06:47.217Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2024-52005 
│                        │      ├ PkgID           : git-man@1:2.53.0-1ubuntu1 
│                        │      ├ PkgName         : git-man 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.53.0-1ubuntu1?arch=all&dist
│                        │      │                  │       ro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : a19d1931460c0147 
│                        │      ├ InstalledVersion: 1:2.53.0-1ubuntu1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ea0723fac6b0c9aaff0c8e8a7e19b696b72e13016a42f8c4fed9
│                        │      │                   b5c823100f99 
│                        │      ├ Title           : git: The sideband payload is passed unfiltered to the
│                        │      │                   terminal in git 
│                        │      ├ Description     : Git is a source code management tool. When cloning from a
│                        │      │                   server (or fetching, or pushing), informational or error
│                        │      │                   messages are transported from the remote Git process to the
│                        │      │                    client via the so-called "sideband channel". These
│                        │      │                   messages will be prefixed with "remote:" and printed
│                        │      │                   directly to the standard error output. Typically, this
│                        │      │                   standard error output is connected to a terminal that
│                        │      │                   understands ANSI escape sequences, which Git did not
│                        │      │                   protect against. Most modern terminals support control
│                        │      │                   sequences that can be used by a malicious actor to hide and
│                        │      │                    misrepresent information, or to mislead the user into
│                        │      │                   executing untrusted scripts. As requested on the
│                        │      │                   git-security mailing list, the patches are under discussion
│                        │      │                    on the public mailing list. Users are advised to update as
│                        │      │                    soon as possible. Users unable to upgrade should avoid
│                        │      │                   recursive clones unless they are from trusted sources. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-116 
│                        │      │                  ╰ [1]: CWE-150 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:N/PR:N/UI:A/VC:
│                        │      │                  │         │            H/VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │         ╰ V40Score : 7.5 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │      │                  │         │           :H/A:H 
│                        │      │                  │         ╰ V3Score : 8.8 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I
│                        │      │                            │           :H/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7409 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-52005 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2338289 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2338289 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-52005 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-7409.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:7409 
│                        │      │                  ├ [7] : https://github.com/git/git/security/advisories/GHSA-
│                        │      │                  │       7jjc-gg6m-3329 
│                        │      │                  ├ [8] : https://linux.oracle.com/cve/CVE-2024-52005.html 
│                        │      │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2025-8414.html 
│                        │      │                  ├ [10]: https://lore.kernel.org/git/1M9FnZ-1taoNo1wwh-00ESSd
│                        │      │                  │       @mail.gmx.net 
│                        │      │                  ├ [11]: https://lore.kernel.org/git/8570a129-d66a-465a-905e-
│                        │      │                  │       0a077c69c409@gmail.com/T/#t 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-52005 
│                        │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-52005 
│                        │      ├ PublishedDate   : 2025-01-15T18:15:24.13Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T08:06:47.217Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libblkid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : cfada1ce2d53117c 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f3cfdca06fc10f7711aad5d0c62e203f6b878e1f47e976bbaa1d
│                        │      │                   b94f9c406509 
│                        │      ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │      │                   loop devices 
│                        │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                        │      │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                        │      │                   vulnerability has been identified in the SUID binary
│                        │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                        │      │                   setting up loop devices, validates the source file path
│                        │      │                   with user privileges via fork() + setuid() + realpath(),
│                        │      │                   but subsequently re-canonicalizes and opens it with root
│                        │      │                   privileges (euid=0) without verifying that the path has not
│                        │      │                    been replaced between both operations. Neither O_NOFOLLOW,
│                        │      │                    nor inode comparison, nor post-open fstat() are employed.
│                        │      │                   This allows a local unprivileged user to replace the source
│                        │      │                    file with a symlink pointing to any root-owned file or
│                        │      │                   device during the race window, causing the SUID binary to
│                        │      │                   open and mount it as root. Exploitation requires an
│                        │      │                   /etc/fstab entry with user,loop options whose path points
│                        │      │                   to a directory where the attacker has write permission, and
│                        │      │                    that /usr/bin/mount has the SUID bit set (the default
│                        │      │                   configuration on virtually all Linux distributions). The
│                        │      │                   impact is unauthorized read access to root-protected files
│                        │      │                   and block devices, including backup images, disk volumes,
│                        │      │                   and any file containing a valid filesystem. This issue has
│                        │      │                   been patched in version 2.41.4. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-59 
│                        │      │                  ├ [1]: CWE-269 
│                        │      │                  ╰ [2]: CWE-367 
│                        │      ├ VendorSeverity   ╭ azure       : 2 
│                        │      │                  ├ bottlerocket: 2 
│                        │      │                  ├ julia       : 2 
│                        │      │                  ├ redhat      : 2 
│                        │      │                  ╰ ubuntu      : 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-27456 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libblkid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : cfada1ce2d53117c 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:70c4a580142a95068a227ea30ce6b82e66de0bf515ffc9709497
│                        │      │                   d2f452a9b726 
│                        │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │      │                   improper hostname canonicalization 
│                        │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │      │                   canonicalization in the `login(1)` utility, when invoked
│                        │      │                   with the `-h` option, can modify the supplied remote
│                        │      │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │      │                   could exploit this by providing a specially crafted
│                        │      │                   hostname, potentially bypassing host-based Pluggable
│                        │      │                   Authentication Modules (PAM) access control rules that rely
│                        │      │                    on fully qualified domain names. This could lead to
│                        │      │                   unauthorized access. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-289 
│                        │      ├ VendorSeverity   ╭ azure : 1 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [6]  ╭ VulnerabilityID : CVE-2025-1352 
│                        │      ├ PkgID           : libelf1t64@0.194-4 
│                        │      ├ PkgName         : libelf1t64 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro=
│                        │      │                  │       ubuntu-26.04 
│                        │      │                  ╰ UID : 90e8b887354154e4 
│                        │      ├ InstalledVersion: 0.194-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ef7fd41874e1e647f2353e295c425b6623143865f354c8345c4b
│                        │      │                   299b62f92c28 
│                        │      ├ Title           : elfutils: GNU elfutils eu-readelf libdw_alloc.c
│                        │      │                   __libdw_thread_tail memory corruption 
│                        │      ├ Description     : A vulnerability has been found in GNU elfutils 0.192 and
│                        │      │                   classified as critical. This vulnerability affects the
│                        │      │                   function __libdw_thread_tail in the library libdw_alloc.c
│                        │      │                   of the component eu-readelf. The manipulation of the
│                        │      │                   argument w leads to memory corruption. The attack can be
│                        │      │                   initiated remotely. The complexity of an attack is rather
│                        │      │                   high. The exploitation appears to be difficult. The exploit
│                        │      │                    has been disclosed to the public and may be used. The name
│                        │      │                    of the patch is 2636426a091bd6c6f7f02e49ab20d4cdc6bfc753.
│                        │      │                   It is recommended to apply a patch to fix this issue. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-119 
│                        │      ├ VendorSeverity   ╭ amazon: 2 
│                        │      │                  ├ azure : 1 
│                        │      │                  ├ nvd   : 3 
│                        │      │                  ├ photon: 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1352 
│                        │      │                  ├ [1] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -253495.html 
│                        │      │                  ├ [2] : https://nvd.nist.gov/vuln/detail/CVE-2025-1352 
│                        │      │                  ├ [3] : https://sourceware.org/bugzilla/attachment.cgi?id=15
│                        │      │                  │       923 
│                        │      │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=32650 
│                        │      │                  ├ [5] : https://sourceware.org/bugzilla/show_bug.cgi?id=3265
│                        │      │                  │       0#c2 
│                        │      │                  ├ [6] : https://vuldb.com/?ctiid.295960 
│                        │      │                  ├ [7] : https://vuldb.com/?id.295960 
│                        │      │                  ├ [8] : https://vuldb.com/?submit.495965 
│                        │      │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-1352 
│                        │      │                  ╰ [10]: https://www.gnu.org/ 
│                        │      ├ PublishedDate   : 2025-02-16T15:15:09.133Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T08:38:57.857Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2025-1376 
│                        │      ├ PkgID           : libelf1t64@0.194-4 
│                        │      ├ PkgName         : libelf1t64 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro=
│                        │      │                  │       ubuntu-26.04 
│                        │      │                  ╰ UID : 90e8b887354154e4 
│                        │      ├ InstalledVersion: 0.194-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1376 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b0e835c8744fcec43ff186e3a6b801ebf7cfa11d0c34746966b9
│                        │      │                   3a17ef3e7f36 
│                        │      ├ Title           : elfutils: GNU elfutils eu-strip elf_strptr.c elf_strptr
│                        │      │                   denial of service 
│                        │      ├ Description     : A vulnerability classified as problematic was found in GNU
│                        │      │                   elfutils 0.192. This vulnerability affects the function
│                        │      │                   elf_strptr in the library /libelf/elf_strptr.c of the
│                        │      │                   component eu-strip. The manipulation leads to denial of
│                        │      │                   service. It is possible to launch the attack on the local
│                        │      │                   host. The complexity of an attack is rather high. The
│                        │      │                   exploitation appears to be difficult. The exploit has been
│                        │      │                   disclosed to the public and may be used. The name of the
│                        │      │                   patch is b16f441cca0a4841050e3215a9f120a6d8aea918. It is
│                        │      │                   recommended to apply a patch to fix this issue. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-404 
│                        │      ├ VendorSeverity   ╭ azure : 1 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 2.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1376 
│                        │      │                  ├ [1] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -253495.html 
│                        │      │                  ├ [2] : https://nvd.nist.gov/vuln/detail/CVE-2025-1376 
│                        │      │                  ├ [3] : https://sourceware.org/bugzilla/attachment.cgi?id=15
│                        │      │                  │       940 
│                        │      │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=32672 
│                        │      │                  ├ [5] : https://sourceware.org/bugzilla/show_bug.cgi?id=3267
│                        │      │                  │       2#c3 
│                        │      │                  ├ [6] : https://vuldb.com/?ctiid.295984 
│                        │      │                  ├ [7] : https://vuldb.com/?id.295984 
│                        │      │                  ├ [8] : https://vuldb.com/?submit.497538 
│                        │      │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-1376 
│                        │      │                  ╰ [10]: https://www.gnu.org/ 
│                        │      ├ PublishedDate   : 2025-02-17T05:15:09.807Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T08:39:00.957Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2025-66382 
│                        │      ├ PkgID           : libexpat1@2.7.4-1 
│                        │      ├ PkgName         : libexpat1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : c17b9d4b5a8b1286 
│                        │      ├ InstalledVersion: 2.7.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:43678d9c8ffa225eff9351a2ac46025dafaafbe9f27c7ff06f03
│                        │      │                   a5a8067321ff 
│                        │      ├ Title           : libexpat: libexpat: Denial of service via crafted file
│                        │      │                   processing 
│                        │      ├ Description     : In libexpat through 2.7.3, a crafted file with an
│                        │      │                   approximate size of 2 MiB can lead to dozens of seconds of
│                        │      │                   processing time. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-407 
│                        │      ├ VendorSeverity   ╭ azure : 1 
│                        │      │                  ├ julia : 2 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 5.5 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 5.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 2.9 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/12/02/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-66382 
│                        │      │                  ├ [2]: https://cert-portal.siemens.com/productcert/html/ssa-
│                        │      │                  │      082556.html 
│                        │      │                  ├ [3]: https://cert-portal.siemens.com/productcert/html/ssa-
│                        │      │                  │      253495.html 
│                        │      │                  ├ [4]: https://github.com/libexpat/libexpat/issues/1076 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-66382 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-66382 
│                        │      ├ PublishedDate   : 2025-11-28T07:15:57.9Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T09:56:45.24Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2024-2236 
│                        │      ├ PkgID           : libgcrypt20@1.12.0-2ubuntu1 
│                        │      ├ PkgName         : libgcrypt20 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2ubuntu1?arch=amd6
│                        │      │                  │       4&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 45e5e1ad6adb0acd 
│                        │      ├ InstalledVersion: 1.12.0-2ubuntu1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a62c047844ce73835b883612de196b1626d239674b3452ca761f
│                        │      │                   7f95e60d50d3 
│                        │      ├ Title           : libgcrypt: vulnerable to Marvin Attack 
│                        │      ├ Description     : A timing-based side-channel flaw was found in libgcrypt's
│                        │      │                   RSA implementation. This issue may allow a remote attacker
│                        │      │                   to initiate a Bleichenbacher-style attack, which can lead
│                        │      │                   to the decryption of RSA ciphertexts. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-385 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 5.9 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9404 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:3530 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:3534 
│                        │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2024-2236 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2245218 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2245218 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2268268 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-2236 
│                        │      │                  ├ [8] : https://dev.gnupg.org/T7136 
│                        │      │                  ├ [9] : https://errata.almalinux.org/9/ALSA-2024-9404.html 
│                        │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2024:9404 
│                        │      │                  ├ [11]: https://github.com/tomato42/marvin-toolkit/tree/mast
│                        │      │                  │       er/example/libgcrypt 
│                        │      │                  ├ [12]: https://gitlab.com/redhat-crypto/libgcrypt/libgcrypt
│                        │      │                  │       -mirror/-/merge_requests/17 
│                        │      │                  ├ [13]: https://linux.oracle.com/cve/CVE-2024-2236.html 
│                        │      │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2024-9404.html 
│                        │      │                  ├ [15]: https://lists.gnupg.org/pipermail/gcrypt-devel/2024-
│                        │      │                  │       March/005607.html 
│                        │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2024-2236 
│                        │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2024-2236 
│                        │      ├ PublishedDate   : 2024-03-06T22:15:57.977Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T07:24:06.083Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-22185 
│                        │      ├ PkgID           : liblmdb0@0.9.31-1build2 
│                        │      ├ PkgName         : liblmdb0 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/liblmdb0@0.9.31-1build2?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04 
│                        │      │                  ╰ UID : a4418a4b692862c1 
│                        │      ├ InstalledVersion: 0.9.31-1build2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-22185 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2882426b3d9f86837c253e56587ad1ad4b25fa2b69f6199f7e4e
│                        │      │                   bcb90fad8df3 
│                        │      ├ Title           : OpenLDAP: OpenLDAP LMDB: Denial of Service and Information
│                        │      │                   Disclosure via Heap Buffer Underflow 
│                        │      ├ Description     : OpenLDAP Lightning Memory-Mapped Database (LMDB) versions
│                        │      │                   up to and including 0.9.14, prior to commit 8e1fda8,
│                        │      │                   contain a heap buffer underflow in the readline() function
│                        │      │                   of mdb_load. When processing malformed input containing an
│                        │      │                   embedded NUL byte, an unsigned offset calculation can
│                        │      │                   underflow and cause an out-of-bounds read of one byte
│                        │      │                   before the allocated heap buffer. This can cause mdb_load
│                        │      │                   to crash, leading to a limited denial-of-service
│                        │      │                   condition. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-125 
│                        │      │                  ╰ [1]: CWE-191 
│                        │      ├ VendorSeverity   ╭ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 6.8 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-22185 
│                        │      │                  ├ [1]: https://bugs.openldap.org/show_bug.cgi?id=10421 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-22185 
│                        │      │                  ├ [3]: https://seclists.org/fulldisclosure/2026/Jan/5 
│                        │      │                  ├ [4]: https://seclists.org/fulldisclosure/2026/Jan/8 
│                        │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2026-22185 
│                        │      │                  ├ [6]: https://www.openldap.org/ 
│                        │      │                  ╰ [7]: https://www.vulncheck.com/advisories/openldap-lmdb-md
│                        │      │                         b-load-heap-buffer-underflow-in-readline 
│                        │      ├ PublishedDate   : 2026-01-07T21:16:01.733Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:19:30.257Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libmount1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ec572950b070797 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3adb1198fc62f7c1f0a9d6774adefce286da7c515371c1647642
│                        │      │                   6753bcdbfc48 
│                        │      ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │      │                   loop devices 
│                        │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                        │      │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                        │      │                   vulnerability has been identified in the SUID binary
│                        │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                        │      │                   setting up loop devices, validates the source file path
│                        │      │                   with user privileges via fork() + setuid() + realpath(),
│                        │      │                   but subsequently re-canonicalizes and opens it with root
│                        │      │                   privileges (euid=0) without verifying that the path has not
│                        │      │                    been replaced between both operations. Neither O_NOFOLLOW,
│                        │      │                    nor inode comparison, nor post-open fstat() are employed.
│                        │      │                   This allows a local unprivileged user to replace the source
│                        │      │                    file with a symlink pointing to any root-owned file or
│                        │      │                   device during the race window, causing the SUID binary to
│                        │      │                   open and mount it as root. Exploitation requires an
│                        │      │                   /etc/fstab entry with user,loop options whose path points
│                        │      │                   to a directory where the attacker has write permission, and
│                        │      │                    that /usr/bin/mount has the SUID bit set (the default
│                        │      │                   configuration on virtually all Linux distributions). The
│                        │      │                   impact is unauthorized read access to root-protected files
│                        │      │                   and block devices, including backup images, disk volumes,
│                        │      │                   and any file containing a valid filesystem. This issue has
│                        │      │                   been patched in version 2.41.4. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-59 
│                        │      │                  ├ [1]: CWE-269 
│                        │      │                  ╰ [2]: CWE-367 
│                        │      ├ VendorSeverity   ╭ azure       : 2 
│                        │      │                  ├ bottlerocket: 2 
│                        │      │                  ├ julia       : 2 
│                        │      │                  ├ redhat      : 2 
│                        │      │                  ╰ ubuntu      : 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-27456 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libmount1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ec572950b070797 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:eb5fc0602b30b13ea4686fe3238827775d5dad11ce55fad33deb
│                        │      │                   a4b442d6d33d 
│                        │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │      │                   improper hostname canonicalization 
│                        │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │      │                   canonicalization in the `login(1)` utility, when invoked
│                        │      │                   with the `-h` option, can modify the supplied remote
│                        │      │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │      │                   could exploit this by providing a specially crafted
│                        │      │                   hostname, potentially bypassing host-based Pluggable
│                        │      │                   Authentication Modules (PAM) access control rules that rely
│                        │      │                    on fully qualified domain names. This could lead to
│                        │      │                   unauthorized access. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-289 
│                        │      ├ VendorSeverity   ╭ azure : 1 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [13] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libnss-systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : libnss-systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libnss-systemd@259.5-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : d4ebaf7681a4eff9 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:acf362e2974924a0e9970ebd0dc16b0851ffe23744ad4bff3466
│                        │      │                   fdebbea43288 
│                        │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │      │                   terminals via logger command 
│                        │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │      │                   sequences to the terminals of arbitrary users when a
│                        │      │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                        │      │                    is set. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-669 
│                        │      ├ VendorSeverity   ╭ nvd   : 1 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 3.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 2.9 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                        │      │                         8/1 
│                        │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [14] ╭ VulnerabilityID : CVE-2026-13757 
│                        │      ├ PkgID           : libp11-kit0@0.26.2-2 
│                        │      ├ PkgName         : libp11-kit0 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libp11-kit0@0.26.2-2?arch=amd64&distr
│                        │      │                  │       o=ubuntu-26.04 
│                        │      │                  ╰ UID : 38d0559292d79a63 
│                        │      ├ InstalledVersion: 0.26.2-2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13757 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:305d2012c387c74966b02915854adb05d9c69383b777ac87af17
│                        │      │                   24b116e7e68f 
│                        │      ├ Title           : p11-kit: Stack exhaustion via unbounded recursion in RPC
│                        │      │                   attribute parsing 
│                        │      ├ Description     : A flaw was found in p11-kit. The RPC message attribute
│                        │      │                   parsing functions p11_rpc_message_get_attribute() and
│                        │      │                   p11_rpc_message_get_attribute_array_value() form a
│                        │      │                   mutually-recursive call chain with no recursion depth limit
│                        │      │                    when processing nested CKA_WRAP_TEMPLATE,
│                        │      │                   CKA_UNWRAP_TEMPLATE, and CKA_DERIVE_TEMPLATE attributes. An
│                        │      │                    unauthenticated attacker with local access to the p11-kit
│                        │      │                   RPC Unix domain socket can send a specially crafted request
│                        │      │                    with deeply nested template attributes, causing stack
│                        │      │                   exhaustion and crashing the p11-kit server process and its
│                        │      │                   dependent services. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-674 
│                        │      ├ VendorSeverity   ╭ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 6.2 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:37469 
│                        │      │                  ├ [1]: https://access.redhat.com/errata/RHSA-2026:38342 
│                        │      │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2026-13757 
│                        │      │                  ├ [3]: https://bugzilla.redhat.com/show_bug.cgi?id=2494556 
│                        │      │                  ├ [4]: https://github.com/advisories/GHSA-p2wm-69qx-x25w 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-13757 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-13757 
│                        │      ├ PublishedDate   : 2026-06-29T19:16:40.907Z 
│                        │      ╰ LastModifiedDate: 2026-07-13T06:16:24.863Z 
│                        ├ [15] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libpam-systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : libpam-systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-systemd@259.5-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 753ea59af5449781 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f0d7b223036315473c786decb69e06291493d6666b7d7b75d1fa
│                        │      │                   30ca44ca865e 
│                        │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │      │                   terminals via logger command 
│                        │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │      │                   sequences to the terminals of arbitrary users when a
│                        │      │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                        │      │                    is set. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-669 
│                        │      ├ VendorSeverity   ╭ nvd   : 1 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 3.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 2.9 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                        │      │                         8/1 
│                        │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [16] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : eb8f24163bcc7b6b 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4eba4ad7cdcae8901a601591f51e18ee100a8d01b19049bfc4ef
│                        │      │                   64cee8fa9321 
│                        │      ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │      │                   loop devices 
│                        │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                        │      │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                        │      │                   vulnerability has been identified in the SUID binary
│                        │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                        │      │                   setting up loop devices, validates the source file path
│                        │      │                   with user privileges via fork() + setuid() + realpath(),
│                        │      │                   but subsequently re-canonicalizes and opens it with root
│                        │      │                   privileges (euid=0) without verifying that the path has not
│                        │      │                    been replaced between both operations. Neither O_NOFOLLOW,
│                        │      │                    nor inode comparison, nor post-open fstat() are employed.
│                        │      │                   This allows a local unprivileged user to replace the source
│                        │      │                    file with a symlink pointing to any root-owned file or
│                        │      │                   device during the race window, causing the SUID binary to
│                        │      │                   open and mount it as root. Exploitation requires an
│                        │      │                   /etc/fstab entry with user,loop options whose path points
│                        │      │                   to a directory where the attacker has write permission, and
│                        │      │                    that /usr/bin/mount has the SUID bit set (the default
│                        │      │                   configuration on virtually all Linux distributions). The
│                        │      │                   impact is unauthorized read access to root-protected files
│                        │      │                   and block devices, including backup images, disk volumes,
│                        │      │                   and any file containing a valid filesystem. This issue has
│                        │      │                   been patched in version 2.41.4. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-59 
│                        │      │                  ├ [1]: CWE-269 
│                        │      │                  ╰ [2]: CWE-367 
│                        │      ├ VendorSeverity   ╭ azure       : 2 
│                        │      │                  ├ bottlerocket: 2 
│                        │      │                  ├ julia       : 2 
│                        │      │                  ├ redhat      : 2 
│                        │      │                  ╰ ubuntu      : 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-27456 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [17] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : eb8f24163bcc7b6b 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:69a480ac4a232dd742cdab065367e0c1e5323c4e3c471a7ba9f1
│                        │      │                   29d5247386fc 
│                        │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │      │                   improper hostname canonicalization 
│                        │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │      │                   canonicalization in the `login(1)` utility, when invoked
│                        │      │                   with the `-h` option, can modify the supplied remote
│                        │      │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │      │                   could exploit this by providing a specially crafted
│                        │      │                   hostname, potentially bypassing host-based Pluggable
│                        │      │                   Authentication Modules (PAM) access control rules that rely
│                        │      │                    on fully qualified domain names. This could lead to
│                        │      │                   unauthorized access. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-289 
│                        │      ├ VendorSeverity   ╭ azure : 1 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [18] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : libsubid5@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : libsubid5 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsubid5@4.17.4-2ubuntu3?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 5334fe1c7557bdb3 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:dc2bfc9556778be856cabced52f4894bb754735a297581fa60e3
│                        │      │                   265bc52c57bb 
│                        │      ├ Title           : shadow-utils: Default subordinate ID configuration in
│                        │      │                   /etc/login.defs could lead to compromise 
│                        │      ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │      │                   default /etc/subuid behavior (e.g., uid 100000 through
│                        │      │                   165535 for the first user account) that can realistically
│                        │      │                   conflict with the uids of users defined on locally
│                        │      │                   administered networks, potentially leading to account
│                        │      │                   takeover, e.g., by leveraging newuidmap for access to an
│                        │      │                   NFS home directory (or same-host resources in the case of
│                        │      │                   remote logins by these local network users). NOTE: it may
│                        │      │                   also be argued that system administrators should not have
│                        │      │                   assigned uids, within local networks, that are within the
│                        │      │                   range that can occur in /etc/subuid. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-1188 
│                        │      ├ VendorSeverity   ╭ alma       : 1 
│                        │      │                  ├ azure      : 1 
│                        │      │                  ├ oracle-oval: 1 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 1 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.6 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-56433 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │      │                  ├ [7] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                        │      │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                        │      │                  │       -L241 
│                        │      │                  ├ [8] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │      │                  ├ [9] : https://github.com/shadow-maint/shadow/releases/tag/
│                        │      │                  │       4.4 
│                        │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                        ├ [19] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libsystemd-shared@259.5-0ubuntu3 
│                        │      ├ PkgName         : libsystemd-shared 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd-shared@259.5-0ubuntu3?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 1fd9d74b77ae1f99 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b44e1d3ef4a9b53b1acf9b08731e3fa619289a6e85a013efbe14
│                        │      │                   0ca6c93d90d2 
│                        │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │      │                   terminals via logger command 
│                        │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │      │                   sequences to the terminals of arbitrary users when a
│                        │      │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                        │      │                    is set. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-669 
│                        │      ├ VendorSeverity   ╭ nvd   : 1 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 3.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 2.9 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                        │      │                         8/1 
│                        │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [20] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libsystemd0@259.5-0ubuntu3 
│                        │      ├ PkgName         : libsystemd0 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : c2c6a8cc93da771f 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2412d5dd0314366f514f67f802bb63dd7dffdf5b5b203cfcdb81
│                        │      │                   5910146784e5 
│                        │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │      │                   terminals via logger command 
│                        │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │      │                   sequences to the terminals of arbitrary users when a
│                        │      │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                        │      │                    is set. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-669 
│                        │      ├ VendorSeverity   ╭ nvd   : 1 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 3.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 2.9 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                        │      │                         8/1 
│                        │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [21] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libudev1@259.5-0ubuntu3 
│                        │      ├ PkgName         : libudev1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04 
│                        │      │                  ╰ UID : 2ce94cee56148901 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8cd4c7678957b87709871fc8a74294ba8cecd776aa37cec76c29
│                        │      │                   0368d6bc22b5 
│                        │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │      │                   terminals via logger command 
│                        │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │      │                   sequences to the terminals of arbitrary users when a
│                        │      │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                        │      │                    is set. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-669 
│                        │      ├ VendorSeverity   ╭ nvd   : 1 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 3.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 2.9 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                        │      │                         8/1 
│                        │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [22] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 927585f152fe989a 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8549e0ca17a145be155e0484ae1ea30bd14b791aa2db2162fc8f
│                        │      │                   b40e21591ee2 
│                        │      ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │      │                   loop devices 
│                        │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                        │      │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                        │      │                   vulnerability has been identified in the SUID binary
│                        │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                        │      │                   setting up loop devices, validates the source file path
│                        │      │                   with user privileges via fork() + setuid() + realpath(),
│                        │      │                   but subsequently re-canonicalizes and opens it with root
│                        │      │                   privileges (euid=0) without verifying that the path has not
│                        │      │                    been replaced between both operations. Neither O_NOFOLLOW,
│                        │      │                    nor inode comparison, nor post-open fstat() are employed.
│                        │      │                   This allows a local unprivileged user to replace the source
│                        │      │                    file with a symlink pointing to any root-owned file or
│                        │      │                   device during the race window, causing the SUID binary to
│                        │      │                   open and mount it as root. Exploitation requires an
│                        │      │                   /etc/fstab entry with user,loop options whose path points
│                        │      │                   to a directory where the attacker has write permission, and
│                        │      │                    that /usr/bin/mount has the SUID bit set (the default
│                        │      │                   configuration on virtually all Linux distributions). The
│                        │      │                   impact is unauthorized read access to root-protected files
│                        │      │                   and block devices, including backup images, disk volumes,
│                        │      │                   and any file containing a valid filesystem. This issue has
│                        │      │                   been patched in version 2.41.4. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-59 
│                        │      │                  ├ [1]: CWE-269 
│                        │      │                  ╰ [2]: CWE-367 
│                        │      ├ VendorSeverity   ╭ azure       : 2 
│                        │      │                  ├ bottlerocket: 2 
│                        │      │                  ├ julia       : 2 
│                        │      │                  ├ redhat      : 2 
│                        │      │                  ╰ ubuntu      : 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-27456 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [23] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 927585f152fe989a 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:72ca71c15233423a722dfd8f476828c5537fa0e05027b994d9ad
│                        │      │                   5ab4b5f09d3b 
│                        │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │      │                   improper hostname canonicalization 
│                        │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │      │                   canonicalization in the `login(1)` utility, when invoked
│                        │      │                   with the `-h` option, can modify the supplied remote
│                        │      │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │      │                   could exploit this by providing a specially crafted
│                        │      │                   hostname, potentially bypassing host-based Pluggable
│                        │      │                   Authentication Modules (PAM) access control rules that rely
│                        │      │                    on fully qualified domain names. This could lead to
│                        │      │                   unauthorized access. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-289 
│                        │      ├ VendorSeverity   ╭ azure : 1 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [24] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 591feb53ee99f4f9 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b26b99e99ee4527ee107295e157f5ac420808473dd8859c77d32
│                        │      │                   a4c8c3134d5b 
│                        │      ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │      │                   loop devices 
│                        │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                        │      │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                        │      │                   vulnerability has been identified in the SUID binary
│                        │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                        │      │                   setting up loop devices, validates the source file path
│                        │      │                   with user privileges via fork() + setuid() + realpath(),
│                        │      │                   but subsequently re-canonicalizes and opens it with root
│                        │      │                   privileges (euid=0) without verifying that the path has not
│                        │      │                    been replaced between both operations. Neither O_NOFOLLOW,
│                        │      │                    nor inode comparison, nor post-open fstat() are employed.
│                        │      │                   This allows a local unprivileged user to replace the source
│                        │      │                    file with a symlink pointing to any root-owned file or
│                        │      │                   device during the race window, causing the SUID binary to
│                        │      │                   open and mount it as root. Exploitation requires an
│                        │      │                   /etc/fstab entry with user,loop options whose path points
│                        │      │                   to a directory where the attacker has write permission, and
│                        │      │                    that /usr/bin/mount has the SUID bit set (the default
│                        │      │                   configuration on virtually all Linux distributions). The
│                        │      │                   impact is unauthorized read access to root-protected files
│                        │      │                   and block devices, including backup images, disk volumes,
│                        │      │                   and any file containing a valid filesystem. This issue has
│                        │      │                   been patched in version 2.41.4. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-59 
│                        │      │                  ├ [1]: CWE-269 
│                        │      │                  ╰ [2]: CWE-367 
│                        │      ├ VendorSeverity   ╭ azure       : 2 
│                        │      │                  ├ bottlerocket: 2 
│                        │      │                  ├ julia       : 2 
│                        │      │                  ├ redhat      : 2 
│                        │      │                  ╰ ubuntu      : 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-27456 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [25] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 591feb53ee99f4f9 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:41476e0bcf83b592c2829b29fea76c79604e87e5aed885d3f95d
│                        │      │                   35da0357b8ff 
│                        │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │      │                   improper hostname canonicalization 
│                        │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │      │                   canonicalization in the `login(1)` utility, when invoked
│                        │      │                   with the `-h` option, can modify the supplied remote
│                        │      │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │      │                   could exploit this by providing a specially crafted
│                        │      │                   hostname, potentially bypassing host-based Pluggable
│                        │      │                   Authentication Modules (PAM) access control rules that rely
│                        │      │                    on fully qualified domain names. This could lead to
│                        │      │                   unauthorized access. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-289 
│                        │      ├ VendorSeverity   ╭ azure : 1 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [26] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : login.defs 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&d
│                        │      │                  │       istro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : eaf648d5e4e975f7 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d41de300b35c97b94be9bdc22eeb171d8e27f0c7a5f478f64e3f
│                        │      │                   5249de9fd38b 
│                        │      ├ Title           : shadow-utils: Default subordinate ID configuration in
│                        │      │                   /etc/login.defs could lead to compromise 
│                        │      ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │      │                   default /etc/subuid behavior (e.g., uid 100000 through
│                        │      │                   165535 for the first user account) that can realistically
│                        │      │                   conflict with the uids of users defined on locally
│                        │      │                   administered networks, potentially leading to account
│                        │      │                   takeover, e.g., by leveraging newuidmap for access to an
│                        │      │                   NFS home directory (or same-host resources in the case of
│                        │      │                   remote logins by these local network users). NOTE: it may
│                        │      │                   also be argued that system administrators should not have
│                        │      │                   assigned uids, within local networks, that are within the
│                        │      │                   range that can occur in /etc/subuid. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-1188 
│                        │      ├ VendorSeverity   ╭ alma       : 1 
│                        │      │                  ├ azure      : 1 
│                        │      │                  ├ oracle-oval: 1 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 1 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.6 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-56433 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │      │                  ├ [7] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                        │      │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                        │      │                  │       -L241 
│                        │      │                  ├ [8] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │      │                  ├ [9] : https://github.com/shadow-maint/shadow/releases/tag/
│                        │      │                  │       4.4 
│                        │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                        ├ [27] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:599d8148efdb3690ae503fb8848a5303bb65dfd7b678bc2d0ea8
│                        │      │                   a19c0f2e0d40 
│                        │      ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │      │                   loop devices 
│                        │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                        │      │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                        │      │                   vulnerability has been identified in the SUID binary
│                        │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                        │      │                   setting up loop devices, validates the source file path
│                        │      │                   with user privileges via fork() + setuid() + realpath(),
│                        │      │                   but subsequently re-canonicalizes and opens it with root
│                        │      │                   privileges (euid=0) without verifying that the path has not
│                        │      │                    been replaced between both operations. Neither O_NOFOLLOW,
│                        │      │                    nor inode comparison, nor post-open fstat() are employed.
│                        │      │                   This allows a local unprivileged user to replace the source
│                        │      │                    file with a symlink pointing to any root-owned file or
│                        │      │                   device during the race window, causing the SUID binary to
│                        │      │                   open and mount it as root. Exploitation requires an
│                        │      │                   /etc/fstab entry with user,loop options whose path points
│                        │      │                   to a directory where the attacker has write permission, and
│                        │      │                    that /usr/bin/mount has the SUID bit set (the default
│                        │      │                   configuration on virtually all Linux distributions). The
│                        │      │                   impact is unauthorized read access to root-protected files
│                        │      │                   and block devices, including backup images, disk volumes,
│                        │      │                   and any file containing a valid filesystem. This issue has
│                        │      │                   been patched in version 2.41.4. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-59 
│                        │      │                  ├ [1]: CWE-269 
│                        │      │                  ╰ [2]: CWE-367 
│                        │      ├ VendorSeverity   ╭ azure       : 2 
│                        │      │                  ├ bottlerocket: 2 
│                        │      │                  ├ julia       : 2 
│                        │      │                  ├ redhat      : 2 
│                        │      │                  ╰ ubuntu      : 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-27456 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [28] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e38d82e822a191372d6e42e9fca264d3bb3c6b34e3523d5fe902
│                        │      │                   d04fe2c9d007 
│                        │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │      │                   improper hostname canonicalization 
│                        │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │      │                   canonicalization in the `login(1)` utility, when invoked
│                        │      │                   with the `-h` option, can modify the supplied remote
│                        │      │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │      │                   could exploit this by providing a specially crafted
│                        │      │                   hostname, potentially bypassing host-based Pluggable
│                        │      │                   Authentication Modules (PAM) access control rules that rely
│                        │      │                    on fully qualified domain names. This could lead to
│                        │      │                   unauthorized access. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-289 
│                        │      ├ VendorSeverity   ╭ azure : 1 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [29] ╭ VulnerabilityID : CVE-2026-55655 
│                        │      ├ PkgID           : openssh-client@1:10.2p1-2ubuntu3.5 
│                        │      ├ PkgName         : openssh-client 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-client@10.2p1-2ubuntu3.5?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 989df0fb747990 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55655 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ef7b64be188396dd89a1df23ba388275373800af580c969f8304
│                        │      │                   1c70966c4bf7 
│                        │      ├ Title           : openssh: Local MITM of X11 forwarding via abstract UNIX
│                        │      │                   socket pre-binding in Red Hat Enterprise Linux OpenSSH
│                        │      │                   client versions 
│                        │      ├ Description     : A flaw was found in OpenSSH. A local unprivileged attacker
│                        │      │                   on a Linux client host can hijack client-side X11
│                        │      │                   forwarding connections. This is possible by pre-binding the
│                        │      │                    preferred abstract X socket name when X11 forwarding is
│                        │      │                   enabled and a local UNIX-domain X socket is used. A
│                        │      │                   successful attack can compromise the confidentiality of
│                        │      │                   forwarded X11 traffic, including sensitive window contents
│                        │      │                   and input, and may allow some manipulation of the forwarded
│                        │      │                    session. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-923 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ nvd        : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47755 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │      │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-55655 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2462250 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2462351 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2462493 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2497936 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2497944 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55653 
│                        │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55654 
│                        │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55655 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-59996 
│                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-60002 
│                        │      │                  ├ [20]: https://errata.almalinux.org/9/ALSA-2026-47756.html 
│                        │      │                  ├ [21]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │      │                  ├ [22]: https://linux.oracle.com/cve/CVE-2026-55655.html 
│                        │      │                  ├ [23]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │      │                  ├ [24]: https://nvd.nist.gov/vuln/detail/CVE-2026-55655 
│                        │      │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-55655 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.787Z 
│                        │      ╰ LastModifiedDate: 2026-07-30T09:16:35.46Z 
│                        ├ [30] ╭ VulnerabilityID : CVE-2026-55654 
│                        │      ├ PkgID           : openssh-client@1:10.2p1-2ubuntu3.5 
│                        │      ├ PkgName         : openssh-client 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-client@10.2p1-2ubuntu3.5?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 989df0fb747990 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55654 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:76453e0ffda0f5a4793860e0ad48401103929c1bbd9b4acf5575
│                        │      │                   03d0cbe6ea54 
│                        │      ├ Title           : openssh: Heap out-of-bounds read in Red Hat Enterprise
│                        │      │                   Linux versions of OpenSSH GSSAPI indicator cleanup due to
│                        │      │                   missing NULL sentinel termination 
│                        │      ├ Description     : A flaw was found in OpenSSH. This vulnerability, a heap
│                        │      │                   out-of-bounds read, occurs during the cleanup of GSSAPI
│                        │      │                   (Generic Security Service Application Programming
│                        │      │                   Interface) indicators when a trailing NULL termination is
│                        │      │                   missing in the auth-indicators array. A remote attacker,
│                        │      │                   under specific configurations involving GSSAPI
│                        │      │                   authentication and a Kerberos environment, could exploit
│                        │      │                   this to cause the SSH authentication path to crash or
│                        │      │                   abort. This leads to a denial of service (DoS), impacting
│                        │      │                   the availability of the SSH service. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-125 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-55654 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2462250 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2462351 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2462493 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2497936 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2497944 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │      │                  ├ [14]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55653 
│                        │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55654 
│                        │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55655 
│                        │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-59996 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-60002 
│                        │      │                  ├ [19]: https://errata.almalinux.org/9/ALSA-2026-47756.html 
│                        │      │                  ├ [20]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │      │                  ├ [21]: https://linux.oracle.com/cve/CVE-2026-55654.html 
│                        │      │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │      │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-55654 
│                        │      │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2026-55654 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.587Z 
│                        │      ╰ LastModifiedDate: 2026-07-30T10:16:38.547Z 
│                        ├ [31] ╭ VulnerabilityID : CVE-2026-55655 
│                        │      ├ PkgID           : openssh-server@1:10.2p1-2ubuntu3.5 
│                        │      ├ PkgName         : openssh-server 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-server@10.2p1-2ubuntu3.5?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : a426cfc048b01fc6 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55655 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:694bda0760b552b99411513ed2f25cbabee3fac4d0c51a44a11a
│                        │      │                   78c7dbc7227e 
│                        │      ├ Title           : openssh: Local MITM of X11 forwarding via abstract UNIX
│                        │      │                   socket pre-binding in Red Hat Enterprise Linux OpenSSH
│                        │      │                   client versions 
│                        │      ├ Description     : A flaw was found in OpenSSH. A local unprivileged attacker
│                        │      │                   on a Linux client host can hijack client-side X11
│                        │      │                   forwarding connections. This is possible by pre-binding the
│                        │      │                    preferred abstract X socket name when X11 forwarding is
│                        │      │                   enabled and a local UNIX-domain X socket is used. A
│                        │      │                   successful attack can compromise the confidentiality of
│                        │      │                   forwarded X11 traffic, including sensitive window contents
│                        │      │                   and input, and may allow some manipulation of the forwarded
│                        │      │                    session. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-923 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ nvd        : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47755 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │      │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-55655 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2462250 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2462351 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2462493 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2497936 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2497944 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55653 
│                        │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55654 
│                        │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55655 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-59996 
│                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-60002 
│                        │      │                  ├ [20]: https://errata.almalinux.org/9/ALSA-2026-47756.html 
│                        │      │                  ├ [21]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │      │                  ├ [22]: https://linux.oracle.com/cve/CVE-2026-55655.html 
│                        │      │                  ├ [23]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │      │                  ├ [24]: https://nvd.nist.gov/vuln/detail/CVE-2026-55655 
│                        │      │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-55655 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.787Z 
│                        │      ╰ LastModifiedDate: 2026-07-30T09:16:35.46Z 
│                        ├ [32] ╭ VulnerabilityID : CVE-2026-55654 
│                        │      ├ PkgID           : openssh-server@1:10.2p1-2ubuntu3.5 
│                        │      ├ PkgName         : openssh-server 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-server@10.2p1-2ubuntu3.5?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : a426cfc048b01fc6 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55654 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:526435bbe4163d1161d2cb4c5a8302fef1878a02b3811bed35d8
│                        │      │                   46e7fa81c0b6 
│                        │      ├ Title           : openssh: Heap out-of-bounds read in Red Hat Enterprise
│                        │      │                   Linux versions of OpenSSH GSSAPI indicator cleanup due to
│                        │      │                   missing NULL sentinel termination 
│                        │      ├ Description     : A flaw was found in OpenSSH. This vulnerability, a heap
│                        │      │                   out-of-bounds read, occurs during the cleanup of GSSAPI
│                        │      │                   (Generic Security Service Application Programming
│                        │      │                   Interface) indicators when a trailing NULL termination is
│                        │      │                   missing in the auth-indicators array. A remote attacker,
│                        │      │                   under specific configurations involving GSSAPI
│                        │      │                   authentication and a Kerberos environment, could exploit
│                        │      │                   this to cause the SSH authentication path to crash or
│                        │      │                   abort. This leads to a denial of service (DoS), impacting
│                        │      │                   the availability of the SSH service. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-125 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-55654 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2462250 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2462351 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2462493 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2497936 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2497944 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │      │                  ├ [14]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55653 
│                        │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55654 
│                        │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55655 
│                        │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-59996 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-60002 
│                        │      │                  ├ [19]: https://errata.almalinux.org/9/ALSA-2026-47756.html 
│                        │      │                  ├ [20]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │      │                  ├ [21]: https://linux.oracle.com/cve/CVE-2026-55654.html 
│                        │      │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │      │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-55654 
│                        │      │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2026-55654 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.587Z 
│                        │      ╰ LastModifiedDate: 2026-07-30T10:16:38.547Z 
│                        ├ [33] ╭ VulnerabilityID : CVE-2026-55655 
│                        │      ├ PkgID           : openssh-sftp-server@1:10.2p1-2ubuntu3.5 
│                        │      ├ PkgName         : openssh-sftp-server 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-sftp-server@10.2p1-2ubuntu3.5
│                        │      │                  │       ?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 1742a78d49e11eae 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55655 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c6f425dd77f7884149c8e8b6f215498db78ea670224efb3826d3
│                        │      │                   2b6f85d785ca 
│                        │      ├ Title           : openssh: Local MITM of X11 forwarding via abstract UNIX
│                        │      │                   socket pre-binding in Red Hat Enterprise Linux OpenSSH
│                        │      │                   client versions 
│                        │      ├ Description     : A flaw was found in OpenSSH. A local unprivileged attacker
│                        │      │                   on a Linux client host can hijack client-side X11
│                        │      │                   forwarding connections. This is possible by pre-binding the
│                        │      │                    preferred abstract X socket name when X11 forwarding is
│                        │      │                   enabled and a local UNIX-domain X socket is used. A
│                        │      │                   successful attack can compromise the confidentiality of
│                        │      │                   forwarded X11 traffic, including sensitive window contents
│                        │      │                   and input, and may allow some manipulation of the forwarded
│                        │      │                    session. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-923 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ nvd        : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47755 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │      │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-55655 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2462250 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2462351 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2462493 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2497936 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2497944 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55653 
│                        │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55654 
│                        │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55655 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-59996 
│                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-60002 
│                        │      │                  ├ [20]: https://errata.almalinux.org/9/ALSA-2026-47756.html 
│                        │      │                  ├ [21]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │      │                  ├ [22]: https://linux.oracle.com/cve/CVE-2026-55655.html 
│                        │      │                  ├ [23]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │      │                  ├ [24]: https://nvd.nist.gov/vuln/detail/CVE-2026-55655 
│                        │      │                  ╰ [25]: https://www.cve.org/CVERecord?id=CVE-2026-55655 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.787Z 
│                        │      ╰ LastModifiedDate: 2026-07-30T09:16:35.46Z 
│                        ├ [34] ╭ VulnerabilityID : CVE-2026-55654 
│                        │      ├ PkgID           : openssh-sftp-server@1:10.2p1-2ubuntu3.5 
│                        │      ├ PkgName         : openssh-sftp-server 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-sftp-server@10.2p1-2ubuntu3.5
│                        │      │                  │       ?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 1742a78d49e11eae 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55654 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:cd0e2bf1deeac53503286759e37ee25057dcc46c3e18bbefafa7
│                        │      │                   be67c9a89219 
│                        │      ├ Title           : openssh: Heap out-of-bounds read in Red Hat Enterprise
│                        │      │                   Linux versions of OpenSSH GSSAPI indicator cleanup due to
│                        │      │                   missing NULL sentinel termination 
│                        │      ├ Description     : A flaw was found in OpenSSH. This vulnerability, a heap
│                        │      │                   out-of-bounds read, occurs during the cleanup of GSSAPI
│                        │      │                   (Generic Security Service Application Programming
│                        │      │                   Interface) indicators when a trailing NULL termination is
│                        │      │                   missing in the auth-indicators array. A remote attacker,
│                        │      │                   under specific configurations involving GSSAPI
│                        │      │                   authentication and a Kerberos environment, could exploit
│                        │      │                   this to cause the SSH authentication path to crash or
│                        │      │                   abort. This leads to a denial of service (DoS), impacting
│                        │      │                   the availability of the SSH service. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-125 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-55654 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2462250 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2462351 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2462493 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2497936 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2497944 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │      │                  ├ [14]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55653 
│                        │      │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55654 
│                        │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-55655 
│                        │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-59996 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-60002 
│                        │      │                  ├ [19]: https://errata.almalinux.org/9/ALSA-2026-47756.html 
│                        │      │                  ├ [20]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │      │                  ├ [21]: https://linux.oracle.com/cve/CVE-2026-55654.html 
│                        │      │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │      │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-55654 
│                        │      │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2026-55654 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.587Z 
│                        │      ╰ LastModifiedDate: 2026-07-30T10:16:38.547Z 
│                        ├ [35] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : passwd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 6f8f43a2d44eb6a2 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e577a4a7b6608ac393d4c8cfa52d29fdb0a8764345cb89e03350
│                        │      │                   32edac94b02f 
│                        │      ├ Title           : shadow-utils: Default subordinate ID configuration in
│                        │      │                   /etc/login.defs could lead to compromise 
│                        │      ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │      │                   default /etc/subuid behavior (e.g., uid 100000 through
│                        │      │                   165535 for the first user account) that can realistically
│                        │      │                   conflict with the uids of users defined on locally
│                        │      │                   administered networks, potentially leading to account
│                        │      │                   takeover, e.g., by leveraging newuidmap for access to an
│                        │      │                   NFS home directory (or same-host resources in the case of
│                        │      │                   remote logins by these local network users). NOTE: it may
│                        │      │                   also be argued that system administrators should not have
│                        │      │                   assigned uids, within local networks, that are within the
│                        │      │                   range that can occur in /etc/subuid. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-1188 
│                        │      ├ VendorSeverity   ╭ alma       : 1 
│                        │      │                  ├ azure      : 1 
│                        │      │                  ├ oracle-oval: 1 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 1 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.6 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-56433 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │      │                  ├ [7] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                        │      │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                        │      │                  │       -L241 
│                        │      │                  ├ [8] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │      │                  ├ [9] : https://github.com/shadow-maint/shadow/releases/tag/
│                        │      │                  │       4.4 
│                        │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                        ├ [36] ╭ VulnerabilityID : CVE-2018-6952 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : 9486141e347bb260 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2018-6952 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:039eee4b1e4a0cc3cb4c545ef8e5f1a5ad1aacb6e23325d308e6
│                        │      │                   b54b755bb25d 
│                        │      ├ Title           : patch: Double free of memory in pch.c:another_hunk() causes
│                        │      │                    a crash 
│                        │      ├ Description     : A double free exists in the another_hunk function in pch.c
│                        │      │                   in GNU patch through 2.7.6. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-415 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ cbl-mariner: 3 
│                        │      │                  ├ julia      : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ oracle-oval: 1 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 7.5 
│                        │      │                  ├ nvd    ╭ V2Vector: AV:N/AC:L/Au:N/C:N/I:N/A:P 
│                        │      │                  │        ├ V3Vector: CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ├ V2Score : 5 
│                        │      │                  │        ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0]: http://www.securityfocus.com/bid/103047 
│                        │      │                  ├ [1]: https://access.redhat.com/errata/RHSA-2019:2033 
│                        │      │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2018-6952 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2018-6952.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2019-2033.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2018-6952 
│                        │      │                  ├ [6]: https://savannah.gnu.org/bugs/index.php?53133 
│                        │      │                  ├ [7]: https://security.gentoo.org/glsa/201904-17 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2018-6952 
│                        │      ├ PublishedDate   : 2018-02-13T19:29:00.573Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T02:02:30.21Z 
│                        ├ [37] ╭ VulnerabilityID : CVE-2019-20633 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : 9486141e347bb260 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2019-20633 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:08aeb05e42df22ce46fb7f5dfb11dea16fc361397f6a2c1c90c4
│                        │      │                   3c69d48aae86 
│                        │      ├ Title           : patch: double free in another_hunk function in pch.c 
│                        │      ├ Description     : GNU patch through 2.7.6 contains a free(p_line[p_end])
│                        │      │                   Double Free vulnerability in the function another_hunk in
│                        │      │                   pch.c that can cause a denial of service via a crafted
│                        │      │                   patch file. NOTE: this issue exists because of an
│                        │      │                   incomplete fix for CVE-2018-6952. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-415 
│                        │      ├ VendorSeverity   ╭ cbl-mariner: 2 
│                        │      │                  ├ julia      : 2 
│                        │      │                  ├ nvd        : 2 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 5.5 
│                        │      │                  ├ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:N/I:N/A:P 
│                        │      │                  │        ├ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ├ V2Score : 4.3 
│                        │      │                  │        ╰ V3Score : 5.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2019-20633 
│                        │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2019-20633 
│                        │      │                  ├ [2]: https://savannah.gnu.org/bugs/index.php?56683 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2019-20633 
│                        │      ├ PublishedDate   : 2020-03-25T17:15:14.013Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T02:30:50.59Z 
│                        ├ [38] ╭ VulnerabilityID : CVE-2021-45261 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : 9486141e347bb260 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-45261 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:79306ce1518b5a686bfd227c201ea5db986caa05e63e6cf338f2
│                        │      │                   523fc68418e2 
│                        │      ├ Title           : patch: Invalid Pointer via another_hunk function 
│                        │      ├ Description     : An Invalid Pointer vulnerability exists in GNU patch 2.7
│                        │      │                   via the another_hunk function, which causes a Denial of
│                        │      │                   Service. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-763 
│                        │      ├ VendorSeverity   ╭ nvd   : 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:N/I:N/A:P 
│                        │      │                  │        ├ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ├ V2Score : 4.3 
│                        │      │                  │        ╰ V3Score : 5.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 5.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2021-45261 
│                        │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2021-45261 
│                        │      │                  ├ [2]: https://savannah.gnu.org/bugs/?61685 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2021-45261 
│                        │      ├ PublishedDate   : 2021-12-22T18:15:08.1Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T04:13:14.107Z 
│                        ├ [39] ╭ VulnerabilityID : CVE-2026-35341 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d2c42113b2e9d4a782faa9bcc7a0684e7c3d3f4309acfff17f41
│                        │      │                   1724663c843a 
│                        │      ├ Title           : A vulnerability in uutils coreutils mkfifo allows for the
│                        │      │                   unauthorized ... 
│                        │      ├ Description     : A vulnerability in uutils coreutils mkfifo allows for the
│                        │      │                   unauthorized modification of permissions on existing files.
│                        │      │                    When mkfifo fails to create a FIFO because a file already
│                        │      │                   exists at the target path, it fails to terminate the
│                        │      │                   operation for that path and continues to execute a
│                        │      │                   follow-up set_permissions call. This results in the
│                        │      │                   existing file's permissions being changed to the default
│                        │      │                   mode (often 644 after umask), potentially exposing
│                        │      │                   sensitive files such as SSH private keys to other users on
│                        │      │                   the system. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-732 
│                        │      ├ VendorSeverity   ╭ ghsa  : 3 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 7.1 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10020 
│                        │      │                  ├ [2]: https://github.com/uutils/coreutils/pull/10376 
│                        │      │                  ├ [3]: https://github.com/uutils/coreutils/security/advisori
│                        │      │                  │      es/GHSA-pmf6-rcx4-v53v 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-35341 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-35341 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:36.06Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:25.5Z 
│                        ├ [40] ╭ VulnerabilityID : CVE-2026-35344 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9773c9d02e0632ed300424525f49b39740f2bc0aad7ed40af8e7
│                        │      │                   cd170a81254e 
│                        │      ├ Title           : The dd utility in uutils coreutils suppresses errors during
│                        │      │                    file trunc ... 
│                        │      ├ Description     : The dd utility in uutils coreutils suppresses errors during
│                        │      │                    file truncation operations by unconditionally calling
│                        │      │                   Result::ok() on truncation attempts. While intended to
│                        │      │                   mimic GNU behavior for special files like /dev/null, the
│                        │      │                   uutils implementation also hides failures on regular files
│                        │      │                   and directories caused by full disks or read-only file
│                        │      │                   systems. This can lead to silent data corruption in backup
│                        │      │                   or migration scripts, as the utility may report a
│                        │      │                   successful operation even when the destination file
│                        │      │                   contains old or garbage data. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-252 
│                        │      ├ VendorSeverity   ╭ ghsa  : 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/9745 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35344 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35344 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:36.49Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:25.833Z 
│                        ├ [41] ╭ VulnerabilityID : CVE-2026-35345 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:bf496afce16e7a20b6385fbdc84b4ecb1d9e6119d451705de4a0
│                        │      │                   4fa4316e1fb2 
│                        │      ├ Title           : A vulnerability in the tail utility of uutils coreutils
│                        │      │                   allows for the ... 
│                        │      ├ Description     : A vulnerability in the tail utility of uutils coreutils
│                        │      │                   allows for the exfiltration of sensitive file contents when
│                        │      │                    using the --follow=name option. Unlike GNU tail, the
│                        │      │                   uutils implementation continues to monitor a path after it
│                        │      │                   has been replaced by a symbolic link, subsequently
│                        │      │                   outputting the contents of the link's target. In
│                        │      │                   environments where a privileged user (e.g., root) monitors
│                        │      │                   a log directory, a local attacker with write access to that
│                        │      │                    directory can replace a log file with a symlink to a
│                        │      │                   sensitive system file (such as /etc/shadow), causing tail
│                        │      │                   to disclose the contents of the sensitive file. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-59 
│                        │      │                  ╰ [1]: CWE-367 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:L/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10328 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35345 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35345 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:36.627Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:25.943Z 
│                        ├ [42] ╭ VulnerabilityID : CVE-2026-35348 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1fd064a1053780c6161b3b2c7e45f874ca27ff5af636d46e4d61
│                        │      │                   602b64945342 
│                        │      ├ Title           : The sort utility in uutils coreutils is vulnerable to a
│                        │      │                   process panic  ... 
│                        │      ├ Description     : The sort utility in uutils coreutils is vulnerable to a
│                        │      │                   process panic when using the --files0-from option with
│                        │      │                   inputs containing non-UTF-8 filenames. The implementation
│                        │      │                   enforces UTF-8 encoding and utilizes expect(), causing an
│                        │      │                   immediate crash when encountering valid but non-UTF-8
│                        │      │                   paths. This diverges from GNU sort, which treats filenames
│                        │      │                   as raw bytes. A local attacker can exploit this to crash
│                        │      │                   the utility and disrupt automated pipelines. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-248 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 5.5 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/9696 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35348 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35348 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:37.04Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:26.27Z 
│                        ├ [43] ╭ VulnerabilityID : CVE-2026-35350 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:00e5830b86b16b334f70472d22f41d2e69858d081f3711bbf53c
│                        │      │                   f7a900317b6e 
│                        │      ├ Title           : The cp utility in uutils coreutils fails to properly handle
│                        │      │                    setuid and ... 
│                        │      ├ Description     : The cp utility in uutils coreutils fails to properly handle
│                        │      │                    setuid and setgid bits when ownership preservation fails.
│                        │      │                   When copying with the -p (preserve) flag, the utility
│                        │      │                   applies the source mode bits even if the chown operation is
│                        │      │                    unsuccessful. This can result in a user-owned copy
│                        │      │                   retaining original privileged bits, creating unexpected
│                        │      │                   privileged executables that violate local security
│                        │      │                   policies. This differs from GNU cp, which clears these bits
│                        │      │                    when ownership cannot be preserved. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-281 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:H/
│                        │      │                         │           A:L 
│                        │      │                         ╰ V3Score : 6.6 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/9750 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35350 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35350 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:37.327Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:26.48Z 
│                        ├ [44] ╭ VulnerabilityID : CVE-2026-35351 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:53c64036d9f01f87fcd08558ae31b924688d05b7b59f1dd1ff53
│                        │      │                   ba4add274347 
│                        │      ├ Title           : The mv utility in uutils coreutils fails to preserve file
│                        │      │                   ownership du ... 
│                        │      ├ Description     : The mv utility in uutils coreutils fails to preserve file
│                        │      │                   ownership during moves across different filesystem
│                        │      │                   boundaries. The utility falls back to a copy-and-delete
│                        │      │                   routine that creates the destination file using the
│                        │      │                   caller's UID/GID rather than the source's metadata. This
│                        │      │                   flaw breaks backups and migrations, causing files moved by
│                        │      │                   a privileged user (e.g., root) to become root-owned
│                        │      │                   unexpectedly, which can lead to information disclosure or
│                        │      │                   restricted access for the intended owners. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-281 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:L/I:L/
│                        │      │                         │           A:L 
│                        │      │                         ╰ V3Score : 4.2 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/9714 
│                        │      │                  ├ [2]: https://github.com/uutils/coreutils/pull/11706 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35351 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35351 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:37.457Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:26.587Z 
│                        ├ [45] ╭ VulnerabilityID : CVE-2026-35352 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ee15d3e1950da8346aa4442524d754424efebf0727265a16d3c7
│                        │      │                   dd5a3b1e4e9c 
│                        │      ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                        │      │                   exists in the m ... 
│                        │      ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                        │      │                   exists in the mkfifo utility of uutils coreutils. The
│                        │      │                   utility creates a FIFO and then performs a path-based chmod
│                        │      │                    to set permissions. A local attacker with write access to
│                        │      │                   the parent directory can swap the newly created FIFO for a
│                        │      │                   symbolic link between these two operations. This redirects
│                        │      │                   the chmod call to an arbitrary file, potentially enabling
│                        │      │                   privilege escalation if the utility is run with elevated
│                        │      │                   privileges. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-367 
│                        │      ├ VendorSeverity   ╭ ghsa  : 3 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/04/4 
│                        │      │                  ├ [1]: http://www.openwall.com/lists/oss-security/2026/05/04/5 
│                        │      │                  ├ [2]: http://www.openwall.com/lists/oss-security/2026/05/04/6 
│                        │      │                  ├ [3]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [4]: https://github.com/uutils/coreutils/issues/10020 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-35352 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-35352 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:37.597Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:26.69Z 
│                        ├ [46] ╭ VulnerabilityID : CVE-2026-35354 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:91c3516dee3ba18d9aa4d4d7e58a5320e040fdf0da2d7432f5e0
│                        │      │                   1939e697abe8 
│                        │      ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                        │      │                   exists in the mv ... 
│                        │      ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                        │      │                   exists in the mv utility of uutils coreutils during
│                        │      │                   cross-device moves. The extended attribute (xattr)
│                        │      │                   preservation logic uses multiple path-based system calls
│                        │      │                   that perform fresh path-to-inode lookups for each
│                        │      │                   operation. A local attacker with write access to the
│                        │      │                   directory can exploit this race to swap files between
│                        │      │                   calls, causing the destination file to receive an
│                        │      │                   inconsistent mix of security xattrs, such as SELinux labels
│                        │      │                    or file capabilities. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-367 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10014 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35354 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35354 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:37.867Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:26.907Z 
│                        ├ [47] ╭ VulnerabilityID : CVE-2026-35357 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0d3e891f7030448b6eb444157422f33ad8c7d9921aa5f481b265
│                        │      │                   55f5e363e13f 
│                        │      ├ Title           : The cp utility in uutils coreutils is vulnerable to an
│                        │      │                   information dis ... 
│                        │      ├ Description     : The cp utility in uutils coreutils is vulnerable to an
│                        │      │                   information disclosure race condition. Destination files
│                        │      │                   are initially created with umask-derived permissions (e.g.,
│                        │      │                    0644) before being restricted to their final mode (e.g.,
│                        │      │                   0600) later in the process. A local attacker can race to
│                        │      │                   open the file during this window; once obtained, the file
│                        │      │                   descriptor remains valid and readable even after the
│                        │      │                   permissions are tightened, exposing sensitive or private
│                        │      │                   file contents. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-367 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10011 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35357 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35357 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:38.267Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:27.223Z 
│                        ├ [48] ╭ VulnerabilityID : CVE-2026-35359 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4733b3837e2a283b56dae9ab30ea79021e61217219cf603f2b6d
│                        │      │                   aa83a7a39548 
│                        │      ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability in
│                        │      │                   the cp utilit ... 
│                        │      ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability in
│                        │      │                   the cp utility of uutils coreutils allows an attacker to
│                        │      │                   bypass no-dereference intent. The utility checks if a
│                        │      │                   source path is a symbolic link using path-based metadata
│                        │      │                   but subsequently opens it without the O_NOFOLLOW flag. An
│                        │      │                   attacker with concurrent write access can swap a regular
│                        │      │                   file for a symbolic link during this window, causing a
│                        │      │                   privileged cp process to copy the contents of arbitrary
│                        │      │                   sensitive files into a destination controlled by the
│                        │      │                   attacker. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-59 
│                        │      │                  ╰ [1]: CWE-367 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10017 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35359 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35359 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:38.537Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:27.437Z 
│                        ├ [49] ╭ VulnerabilityID : CVE-2026-35360 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:890533a9f09503c7c4620062e5a25ae8448f9b6b9678235f0867
│                        │      │                   36f0a1c37372 
│                        │      ├ Title           : The touch utility in uutils coreutils is vulnerable to a
│                        │      │                   Time-of-Check ... 
│                        │      ├ Description     : The touch utility in uutils coreutils is vulnerable to a
│                        │      │                   Time-of-Check to Time-of-Use (TOCTOU) race condition during
│                        │      │                    file creation. When the utility identifies a missing path,
│                        │      │                    it later attempts creation using File::create(), which
│                        │      │                   internally uses O_TRUNC. An attacker can exploit this
│                        │      │                   window to create a file or swap a symlink at the target
│                        │      │                   path, causing touch to truncate an existing file and
│                        │      │                   leading to permanent data loss. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-367 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 6.3 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10019 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35360 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35360 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:38.673Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:27.543Z 
│                        ├ [50] ╭ VulnerabilityID : CVE-2026-35363 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:bc341205837a8ac8c3af7f6848d27a415bb62d466aaa090a8b2c
│                        │      │                   eb69f54f8250 
│                        │      ├ Title           : A vulnerability in the rm utility of uutils coreutils
│                        │      │                   allows the bypas ... 
│                        │      ├ Description     : A vulnerability in the rm utility of uutils coreutils
│                        │      │                   allows the bypass of safeguard mechanisms intended to
│                        │      │                   protect the current directory. While the utility correctly
│                        │      │                   refuses to delete . or .., it fails to recognize equivalent
│                        │      │                    paths with trailing slashes, such as ./ or .///. An
│                        │      │                   accidental or malicious execution of rm -rf ./ results in
│                        │      │                   the silent recursive deletion of all contents within the
│                        │      │                   current directory. The command further obscures the data
│                        │      │                   loss by reporting a misleading 'Invalid input' error, which
│                        │      │                    may cause users to miss the critical window for data
│                        │      │                   recovery. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-22 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:H/
│                        │      │                         │           A:L 
│                        │      │                         ╰ V3Score : 5.6 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/9749 
│                        │      │                  ├ [2]: https://github.com/uutils/coreutils/security/advisori
│                        │      │                  │      es/GHSA-89p7-7cq3-hhr2 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35363 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35363 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:39.12Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:27.867Z 
│                        ├ [51] ╭ VulnerabilityID : CVE-2026-35364 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2b03bf0950efa5f68a8df15deabe02587caef9ece9bba4f0863c
│                        │      │                   9856019939e7 
│                        │      ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                        │      │                   exists in the m ... 
│                        │      ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                        │      │                   exists in the mv utility of uutils coreutils during
│                        │      │                   cross-device operations. The utility removes the
│                        │      │                   destination path before recreating it through a copy
│                        │      │                   operation. A local attacker with write access to the
│                        │      │                   destination directory can exploit this window to replace
│                        │      │                   the destination with a symbolic link. The subsequent
│                        │      │                   privileged move operation will follow the symlink, allowing
│                        │      │                    the attacker to redirect the write and overwrite an
│                        │      │                   arbitrary target file with contents from the source. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-367 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 6.3 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10015 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35364 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35364 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:39.737Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:27.97Z 
│                        ├ [52] ╭ VulnerabilityID : CVE-2026-35367 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:487293c88dd5444c7751308e19ef7f89904cdf21eac19e48d317
│                        │      │                   bbacafb3d7ee 
│                        │      ├ Title           : The nohup utility in uutils coreutils creates its default
│                        │      │                   output file, ... 
│                        │      ├ Description     : The nohup utility in uutils coreutils creates its default
│                        │      │                   output file, nohup.out, without specifying explicit
│                        │      │                   restricted permissions. This causes the file to inherit
│                        │      │                   umask-based permissions, typically resulting in a
│                        │      │                   world-readable file (0644). In multi-user environments,
│                        │      │                   this allows any user on the system to read the captured
│                        │      │                   stdout/stderr output of a command, potentially exposing
│                        │      │                   sensitive information. This behavior diverges from GNU
│                        │      │                   coreutils, which creates nohup.out with owner-only (0600)
│                        │      │                   permissions. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-732 
│                        │      ├ VendorSeverity   ╭ ghsa  : 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10021 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35367 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35367 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:40.423Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:28.297Z 
│                        ├ [53] ╭ VulnerabilityID : CVE-2026-35368 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c4ea2e982bdbc80e485c510be02167445db56cd90af97caa9c15
│                        │      │                   22c844fc17b0 
│                        │      ├ Title           : A vulnerability exists in the chroot utility of uutils
│                        │      │                   coreutils when  ... 
│                        │      ├ Description     : A vulnerability exists in the chroot utility of uutils
│                        │      │                   coreutils when using the --userspec option. The utility
│                        │      │                   resolves the user specification via getpwnam() after
│                        │      │                   entering the chroot but before dropping root privileges. On
│                        │      │                    glibc-based systems, this can trigger the Name Service
│                        │      │                   Switch (NSS) to load shared libraries (e.g., libnss_*.so.2)
│                        │      │                    from the new root directory. If the NEWROOT is writable by
│                        │      │                    an attacker, they can inject a malicious NSS module to
│                        │      │                   execute arbitrary code as root, facilitating a full
│                        │      │                   container escape or privilege escalation. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-426 
│                        │      ├ VendorSeverity   ╭ ghsa  : 3 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7.9 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10327 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35368 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35368 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:40.56Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:28.4Z 
│                        ├ [54] ╭ VulnerabilityID : CVE-2026-35370 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6b571b3be03e0e78948774c7bb1cd43cb615f5327e7d825b1450
│                        │      │                   aeb850a8d58e 
│                        │      ├ Title           : The id utility in uutils coreutils miscalculates the
│                        │      │                   groups= section o ... 
│                        │      ├ Description     : The id utility in uutils coreutils miscalculates the
│                        │      │                   groups= section of its output. The implementation uses a
│                        │      │                   user's real GID instead of their effective GID to compute
│                        │      │                   the group list, leading to potentially divergent output
│                        │      │                   compared to GNU coreutils. Because many scripts and
│                        │      │                   automated processes rely on the output of id to make
│                        │      │                   security-critical access-control or permission decisions,
│                        │      │                   this discrepancy can lead to unauthorized access or
│                        │      │                   security misconfigurations. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-863 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:L/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 4.4 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10006 
│                        │      │                  ├ [2]: https://github.com/uutils/coreutils/security/advisori
│                        │      │                  │      es/GHSA-47c7-qrm7-mqw7 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35370 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35370 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:40.833Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:28.613Z 
│                        ├ [55] ╭ VulnerabilityID : CVE-2026-35371 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3bc2382550849cbc899c455e89de73bad04613da1fa0dc4cbab6
│                        │      │                   93abcbaf3e27 
│                        │      ├ Title           : The id utility in uutils coreutils exhibits incorrect
│                        │      │                   behavior in its  ... 
│                        │      ├ Description     : The id utility in uutils coreutils exhibits incorrect
│                        │      │                   behavior in its "pretty print" output when the real UID and
│                        │      │                    effective UID differ. The implementation incorrectly uses
│                        │      │                   the effective GID instead of the effective UID when
│                        │      │                   performing a name lookup for the effective user. This
│                        │      │                   results in misleading diagnostic output that can cause
│                        │      │                   automated scripts or system administrators to make
│                        │      │                   incorrect decisions regarding file permissions or access
│                        │      │                   control. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-451 
│                        │      ├ VendorSeverity   ╭ ghsa  : 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/issues/10006 
│                        │      │                  ├ [2]: https://github.com/uutils/coreutils/security/advisori
│                        │      │                  │      es/GHSA-xv5w-cw7x-72gj 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35371 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35371 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:40.987Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:28.723Z 
│                        ├ [56] ╭ VulnerabilityID : CVE-2026-35373 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1aadb394ad7e9fdf654168877db39a4f8ff433992b06a85269ac
│                        │      │                   022c859c8aec 
│                        │      ├ Title           : A logic error in the ln utility of uutils coreutils causes
│                        │      │                   the program ... 
│                        │      ├ Description     : A logic error in the ln utility of uutils coreutils causes
│                        │      │                   the program to reject source paths containing non-UTF-8
│                        │      │                   filename bytes when using target-directory forms (e.g., ln
│                        │      │                   SOURCE... DIRECTORY). While GNU ln treats filenames as raw
│                        │      │                   bytes and creates the links correctly, the uutils
│                        │      │                   implementation enforces UTF-8 encoding, resulting in a
│                        │      │                   failure to stat the file and a non-zero exit code. In
│                        │      │                   environments where automated scripts or system tasks
│                        │      │                   process valid but non-UTF-8 filenames common on Unix
│                        │      │                   filesystems, this divergence causes the utility to fail,
│                        │      │                   leading to a local denial of service for those specific
│                        │      │                   operations. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-176 
│                        │      ├ VendorSeverity   ╭ ghsa  : 1 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/
│                        │      │                  │      │           A:L 
│                        │      │                  │      ╰ V3Score : 3.3 
│                        │      │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 5.5 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/pull/11403 
│                        │      │                  ├ [2]: https://github.com/uutils/coreutils/security/advisori
│                        │      │                  │      es/GHSA-jcjr-rh8q-7xqf 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35373 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35373 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:41.997Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:28.933Z 
│                        ├ [57] ╭ VulnerabilityID : CVE-2026-35374 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6301b56aeda2a3a535fb59081fde6226fdda358f480a1066a58b
│                        │      │                   fea73e9a772f 
│                        │      ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                        │      │                   exists in the sp ... 
│                        │      ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                        │      │                   exists in the split utility of uutils coreutils. The
│                        │      │                   program attempts to prevent data loss by checking for
│                        │      │                   identity between input and output files using their file
│                        │      │                   paths before initiating the split operation. However, the
│                        │      │                   utility subsequently opens the output file with truncation
│                        │      │                   after this path-based validation is complete. A local
│                        │      │                   attacker with write access to the directory can exploit
│                        │      │                   this race window by manipulating mutable path components
│                        │      │                   (e.g., swapping a path with a symbolic link). This can
│                        │      │                   cause split to truncate and write to an unintended target
│                        │      │                   file, potentially including the input file itself or other
│                        │      │                   sensitive files accessible to the process, leading to
│                        │      │                   permanent data loss. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-367 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 6.3 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/pull/11401 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35374 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35374 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:42.127Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:29.04Z 
│                        ├ [58] ╭ VulnerabilityID : CVE-2026-35377 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0fc226ad53bf7179c7f000e74d2dab2e697da1df2187fcd8e826
│                        │      │                   441602eb53c2 
│                        │      ├ Title           : A logic error in the env utility of uutils coreutils causes
│                        │      │                    a failure  ... 
│                        │      ├ Description     : A logic error in the env utility of uutils coreutils causes
│                        │      │                    a failure to correctly parse command-line arguments when
│                        │      │                   utilizing the -S (split-string) option. In GNU env,
│                        │      │                   backslashes within single quotes are treated literally
│                        │      │                   (with the exceptions of \\ and \'). However, the uutils
│                        │      │                   implementation incorrectly attempts to validate these
│                        │      │                   sequences, resulting in an "invalid sequence" error and an
│                        │      │                   immediate process termination with an exit status of 125
│                        │      │                   when encountering valid but unrecognized sequences like \a
│                        │      │                   or \x. This divergence from GNU behavior breaks
│                        │      │                   compatibility for automated scripts and administrative
│                        │      │                   workflows that rely on standard split-string semantics,
│                        │      │                   leading to a local denial of service for those
│                        │      │                   operations. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-20 
│                        │      ├ VendorSeverity   ╭ ghsa  : 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:L 
│                        │      │                         ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │      │                  ├ [1]: https://github.com/uutils/coreutils/pull/11512 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35377 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35377 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:42.577Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:40:29.357Z 
│                        ├ [59] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd@259.5-0ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : 844c1427c6002495 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3d9829cb0c79feb6c244ec6adaf975f790e5787178ff259aa0cc
│                        │      │                   c613b7668ab0 
│                        │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │      │                   terminals via logger command 
│                        │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │      │                   sequences to the terminals of arbitrary users when a
│                        │      │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                        │      │                    is set. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-669 
│                        │      ├ VendorSeverity   ╭ nvd   : 1 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 3.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 2.9 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                        │      │                         8/1 
│                        │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [60] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-cryptsetup@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-cryptsetup 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-cryptsetup@259.5-0ubuntu3?arc
│                        │      │                  │       h=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 6a37b8a9d3123c2 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:afe06914a015b8eda341dcd81d18148bd50e020abc5601150d72
│                        │      │                   bb74ead98f1a 
│                        │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │      │                   terminals via logger command 
│                        │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │      │                   sequences to the terminals of arbitrary users when a
│                        │      │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                        │      │                    is set. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-669 
│                        │      ├ VendorSeverity   ╭ nvd   : 1 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 3.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 2.9 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                        │      │                         8/1 
│                        │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [61] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-resolved@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-resolved 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-resolved@259.5-0ubuntu3?arch=
│                        │      │                  │       amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 8b0d3ff0d33d384e 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a827751f0acb8c89ce3d7e3dbd23b195b49acd4c47217bb3f1fd
│                        │      │                   1b1670e8e29f 
│                        │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │      │                   terminals via logger command 
│                        │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │      │                   sequences to the terminals of arbitrary users when a
│                        │      │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                        │      │                    is set. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-669 
│                        │      ├ VendorSeverity   ╭ nvd   : 1 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 3.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 2.9 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                        │      │                         8/1 
│                        │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [62] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-sysv@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-sysv 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-sysv@259.5-0ubuntu3?arch=amd6
│                        │      │                  │       4&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 671de75b107aaffc 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:5e229abeb3e67f9567adaafcf361caeab1e79ea2576c7276d9f6
│                        │      │                   b9efff545bf1 
│                        │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │      │                   terminals via logger command 
│                        │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │      │                   sequences to the terminals of arbitrary users when a
│                        │      │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                        │      │                    is set. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-669 
│                        │      ├ VendorSeverity   ╭ nvd   : 1 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 3.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 2.9 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                        │      │                         8/1 
│                        │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [63] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-timesyncd@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-timesyncd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-timesyncd@259.5-0ubuntu3?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 474673313a36bf4d 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0ac6abedbbe7606b6692801f134b7289beac274a8ded2edba9ec
│                        │      │                   c4e82500d4f2 
│                        │      ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │      │                   terminals via logger command 
│                        │      ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │      │                   sequences to the terminals of arbitrary users when a
│                        │      │                   "logger -p emerg" command is executed, if ForwardToWall=yes
│                        │      │                    is set. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-669 
│                        │      ├ VendorSeverity   ╭ nvd   : 1 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 3.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 2.9 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/05/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/0
│                        │      │                         8/1 
│                        │      ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [64] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : uidmap@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : uidmap 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/uidmap@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : f2f08615ce289 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:7af02d6cb687d6a307f42dba027b8e4b0041387bd2287360a505
│                        │      │                   b04dc9432548 
│                        │      ├ Title           : shadow-utils: Default subordinate ID configuration in
│                        │      │                   /etc/login.defs could lead to compromise 
│                        │      ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │      │                   default /etc/subuid behavior (e.g., uid 100000 through
│                        │      │                   165535 for the first user account) that can realistically
│                        │      │                   conflict with the uids of users defined on locally
│                        │      │                   administered networks, potentially leading to account
│                        │      │                   takeover, e.g., by leveraging newuidmap for access to an
│                        │      │                   NFS home directory (or same-host resources in the case of
│                        │      │                   remote logins by these local network users). NOTE: it may
│                        │      │                   also be argued that system administrators should not have
│                        │      │                   assigned uids, within local networks, that are within the
│                        │      │                   range that can occur in /etc/subuid. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-1188 
│                        │      ├ VendorSeverity   ╭ alma       : 1 
│                        │      │                  ├ azure      : 1 
│                        │      │                  ├ oracle-oval: 1 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 1 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.6 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-56433 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │      │                  ├ [7] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                        │      │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                        │      │                  │       -L241 
│                        │      │                  ├ [8] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │      │                  ├ [9] : https://github.com/shadow-maint/shadow/releases/tag/
│                        │      │                  │       4.4 
│                        │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                        ├ [65] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:68f1b89c9cc57ddc4261984f6dc42dbd64318417751fa42750d3
│                        │      │                   598cdff16ff4 
│                        │      ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │      │                   loop devices 
│                        │      ├ Description     : util-linux is a random collection of Linux utilities. Prior
│                        │      │                    to version 2.41.4, a TOCTOU (Time-of-Check-Time-of-Use)
│                        │      │                   vulnerability has been identified in the SUID binary
│                        │      │                   /usr/bin/mount from util-linux. The mount binary, when
│                        │      │                   setting up loop devices, validates the source file path
│                        │      │                   with user privileges via fork() + setuid() + realpath(),
│                        │      │                   but subsequently re-canonicalizes and opens it with root
│                        │      │                   privileges (euid=0) without verifying that the path has not
│                        │      │                    been replaced between both operations. Neither O_NOFOLLOW,
│                        │      │                    nor inode comparison, nor post-open fstat() are employed.
│                        │      │                   This allows a local unprivileged user to replace the source
│                        │      │                    file with a symlink pointing to any root-owned file or
│                        │      │                   device during the race window, causing the SUID binary to
│                        │      │                   open and mount it as root. Exploitation requires an
│                        │      │                   /etc/fstab entry with user,loop options whose path points
│                        │      │                   to a directory where the attacker has write permission, and
│                        │      │                    that /usr/bin/mount has the SUID bit set (the default
│                        │      │                   configuration on virtually all Linux distributions). The
│                        │      │                   impact is unauthorized read access to root-protected files
│                        │      │                   and block devices, including backup images, disk volumes,
│                        │      │                   and any file containing a valid filesystem. This issue has
│                        │      │                   been patched in version 2.41.4. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-59 
│                        │      │                  ├ [1]: CWE-269 
│                        │      │                  ╰ [2]: CWE-367 
│                        │      ├ VendorSeverity   ╭ azure       : 2 
│                        │      │                  ├ bottlerocket: 2 
│                        │      │                  ├ julia       : 2 
│                        │      │                  ├ redhat      : 2 
│                        │      │                  ╰ ubuntu      : 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-27456 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sxd.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [4]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [5]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [66] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6b2e4fc982e5d4f755f3366bd6ef61190b94bd17f5796e84a6d2
│                        │      │                   193080a0f3d7 
│                        │      ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │      │                   improper hostname canonicalization 
│                        │      ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │      │                   canonicalization in the `login(1)` utility, when invoked
│                        │      │                   with the `-h` option, can modify the supplied remote
│                        │      │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │      │                   could exploit this by providing a specially crafted
│                        │      │                   hostname, potentially bypassing host-based Pluggable
│                        │      │                   Authentication Modules (PAM) access control rules that rely
│                        │      │                    on fully qualified domain names. This could lead to
│                        │      │                   unauthorized access. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-289 
│                        │      ├ VendorSeverity   ╭ azure : 1 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │      ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │      ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [67] ╭ VulnerabilityID : CVE-2021-31879 
│                        │      ├ PkgID           : wget@1.25.0-2ubuntu4.3 
│                        │      ├ PkgName         : wget 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/wget@1.25.0-2ubuntu4.3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : a7a564ca8877281a 
│                        │      ├ InstalledVersion: 1.25.0-2ubuntu4.3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-31879 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a1a29e1445c8d955a7dfc4ef814f6fd66a8c1c1749aa5bbd3933
│                        │      │                   1ff346e50f80 
│                        │      ├ Title           : wget: authorization header disclosure on redirect 
│                        │      ├ Description     : GNU Wget through 1.21.1 does not omit the Authorization
│                        │      │                   header upon a redirect to a different origin, a related
│                        │      │                   issue to CVE-2018-1000007. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-601 
│                        │      ├ VendorSeverity   ╭ amazon     : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ julia      : 2 
│                        │      │                  ├ nvd        : 2 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 6.1 
│                        │      │                  ├ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:P/I:P/A:N 
│                        │      │                  │        ├ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ├ V2Score : 5.8 
│                        │      │                  │        ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2021-31879 
│                        │      │                  ├ [1]: https://mail.gnu.org/archive/html/bug-wget/2021-02/ms
│                        │      │                  │      g00002.html 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2021-31879 
│                        │      │                  ├ [3]: https://savannah.gnu.org/bugs/?56909 
│                        │      │                  ├ [4]: https://security.netapp.com/advisory/ntap-20210618-00
│                        │      │                  │      02/ 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2021-31879 
│                        │      ├ PublishedDate   : 2021-04-29T05:15:08.707Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T03:52:23.987Z 
│                        ╰ [68] ╭ VulnerabilityID : CVE-2026-27171 
│                               ├ PkgID           : zlib1g@1:1.3.dfsg+really1.3.1-1ubuntu3 
│                               ├ PkgName         : zlib1g 
│                               ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/zlib1g@1.3.dfsg%2Breally1.3.1-1ubuntu
│                               │                  │       3?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                               │                  ╰ UID : e6f2cecd2b667912 
│                               ├ InstalledVersion: 1:1.3.dfsg+really1.3.1-1ubuntu3 
│                               ├ Status          : affected 
│                               ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                               │                  │         bdd1c189cada2bb321f30 
│                               │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                               │                            23b065de6f809d70d81ad 
│                               ├ SeveritySource  : ubuntu 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27171 
│                               ├ DataSource       ╭ ID  : ubuntu 
│                               │                  ├ Name: Ubuntu CVE Tracker 
│                               │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                               ├ Fingerprint     : sha256:b4a39bff682404bf7a9bb841590d5f786c0efbe76a9d8fb83c72
│                               │                   bc9d7e5220c2 
│                               ├ Title           : zlib: zlib: Denial of Service via infinite loop in CRC32
│                               │                   combine functions 
│                               ├ Description     : zlib before 1.3.2 allows CPU consumption via
│                               │                   crc32_combine64 and crc32_combine_gen64 because x2nmodp can
│                               │                    do right shifts within a loop that has no termination
│                               │                   condition. 
│                               ├ Severity        : LOW 
│                               ├ CweIDs           ─ [0]: CWE-1284 
│                               ├ VendorSeverity   ╭ amazon     : 1 
│                               │                  ├ azure      : 1 
│                               │                  ├ cbl-mariner: 1 
│                               │                  ├ julia      : 2 
│                               │                  ├ nvd        : 2 
│                               │                  ├ photon     : 2 
│                               │                  ├ redhat     : 1 
│                               │                  ╰ ubuntu     : 1 
│                               ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                               │                  │        │           N/A:H 
│                               │                  │        ╰ V3Score : 5.5 
│                               │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                               │                  │        │           N/A:H 
│                               │                  │        ╰ V3Score : 5.5 
│                               │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                               │                           │           N/A:L 
│                               │                           ╰ V3Score : 3.3 
│                               ├ References       ╭ [0] : https://7asecurity.com/blog/2026/02/zlib-7asecurity-
│                               │                  │       audit 
│                               │                  ├ [1] : https://7asecurity.com/blog/2026/02/zlib-7asecurity-
│                               │                  │       audit/ 
│                               │                  ├ [2] : https://7asecurity.com/reports/pentest-report-zlib-R
│                               │                  │       C1.1.pdf 
│                               │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-27171 
│                               │                  ├ [4] : https://github.com/advisories/GHSA-h858-mf2m-8jf4 
│                               │                  ├ [5] : https://github.com/madler/zlib/issues/904 
│                               │                  ├ [6] : https://github.com/madler/zlib/releases/tag/v1.3.2 
│                               │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2026-27171 
│                               │                  ├ [8] : https://ostif.org/zlib-audit-complete 
│                               │                  ├ [9] : https://ostif.org/zlib-audit-complete/ 
│                               │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2026-27171 
│                               ├ PublishedDate   : 2026-02-18T04:16:01.263Z 
│                               ╰ LastModifiedDate: 2026-06-17T10:26:47.357Z 
├ [1]  ╭ Target  : Java 
│      ├ Class   : lang-pkgs 
│      ├ Type    : jar 
│      ╰ Packages 
├ [2]  ╭ Target  : usr/bin/docker 
│      ├ Class   : lang-pkgs 
│      ├ Type    : gobinary 
│      ╰ Packages 
├ [3]  ╭ Target         : usr/bin/docker-compose 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-34040 
│                        │     ├ VendorIDs        ─ [0]: GHSA-x744-4wpc-v9h2 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:527d231eb4ce6f6df648c7dde09794177b5addfb67bab7f50741b
│                        │     │                   a6bd210a824 
│                        │     ├ Title           : Moby: Moby: Authorization bypass vulnerability 
│                        │     ├ Description     : Moby is an open source container framework. Prior to version
│                        │     │                    29.3.1, a security vulnerability has been detected that
│                        │     │                   allows attackers to bypass authorization plugins (AuthZ).
│                        │     │                   This issue has been patched in version 29.3.1. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-288 
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ ghsa  : 3 
│                        │     │                  ├ nvd   : 3 
│                        │     │                  ├ photon: 3 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 8.8 
│                        │     │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 7.8 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 8.4 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-34040 
│                        │     │                  ├ [1]: https://docs.docker.com/engine/extend/plugins_authoriz
│                        │     │                  │      ation 
│                        │     │                  ├ [2]: https://github.com/moby/moby 
│                        │     │                  ├ [3]: https://github.com/moby/moby/commit/e89edb19ad7de0407a
│                        │     │                  │      5d31e3111cb01aa10b5a38 
│                        │     │                  ├ [4]: https://github.com/moby/moby/releases/tag/docker-v29.3.1 
│                        │     │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      v23v-6jw2-98fq 
│                        │     │                  ├ [6]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      x744-4wpc-v9h2 
│                        │     │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-34040 
│                        │     │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-34040 
│                        │     ├ PublishedDate   : 2026-03-31T03:15:57.883Z 
│                        │     ╰ LastModifiedDate: 2026-06-17T10:38:28.383Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-41567 
│                        │     ├ VendorIDs        ─ [0]: GHSA-x86f-5xw2-fm2r 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:930e56fdf822a0d7cbfbee8810ebcd7e8a66222e2bb886ed31372
│                        │     │                   450f4644a01 
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
│                        │     ├ CweIDs           ─ [0]: CWE-427 
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
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37387 
│                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:41030 
│                        │     │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:42852 
│                        │     │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:44622 
│                        │     │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │     │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │     │                  ├ [6] : https://github.com/moby/moby 
│                        │     │                  ├ [7] : https://github.com/moby/moby/security/advisories/GHSA
│                        │     │                  │       -x86f-5xw2-fm2r 
│                        │     │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │     │                  ├ [9] : https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-41567.json 
│                        │     │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │     ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │     ╰ LastModifiedDate: 2026-07-30T12:18:32.233Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:ac3164871a162f5cab3cd1788c3894496a9e202a6dd3d6ae88fc0
│                        │     │                   d5c863ffcd0 
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
│                        │     ├ CweIDs           ╭ [0]: CWE-61 
│                        │     │                  ╰ [1]: CWE-367 
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
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42306 
│                        │     │                  ├ [1]: https://github.com/moby/moby 
│                        │     │                  ├ [2]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      rg2x-37c3-w2rh 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
│                        │     │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-42306 
│                        │     ├ PublishedDate   : 2026-06-12T19:16:27.49Z 
│                        │     ╰ LastModifiedDate: 2026-06-17T10:47:39.96Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-33997 
│                        │     ├ VendorIDs        ─ [0]: GHSA-pxq6-2prw-chj9 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:da2e40f1a5f34b622e3fb3094194c757bb5549ec3c4d906cc4ec0
│                        │     │                   f77a97d09f5 
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
│                        │     ├ CweIDs           ╭ [0]: CWE-193 
│                        │     │                  ╰ [1]: CWE-266 
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
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:21769 
│                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:22347 
│                        │     │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:23345 
│                        │     │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-33997 
│                        │     │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2453277 
│                        │     │                  ├ [5] : https://docs.docker.com/engine/extend/legacy_plugins 
│                        │     │                  ├ [6] : https://github.com/moby/moby 
│                        │     │                  ├ [7] : https://github.com/moby/moby/commit/f4d6f25bf0c3fa12d
│                        │     │                  │       4968320a45685947756a22a 
│                        │     │                  ├ [8] : https://github.com/moby/moby/releases/tag/docker-v29.
│                        │     │                  │       3.1 
│                        │     │                  ├ [9] : https://github.com/moby/moby/security/advisories/GHSA
│                        │     │                  │       -pxq6-2prw-chj9 
│                        │     │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-33997 
│                        │     │                  ├ [11]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-33997.json 
│                        │     │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2026-33997 
│                        │     ├ PublishedDate   : 2026-03-31T03:15:57.523Z 
│                        │     ╰ LastModifiedDate: 2026-07-27T13:17:41.643Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-41568 
│                        │     ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:7640f83f677121360667c938293dee267062fa7dc4aa12c748c2e
│                        │     │                   204c25ea00c 
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
│                        │     ├ CweIDs           ╭ [0]: CWE-81 
│                        │     │                  ╰ [1]: CWE-367 
│                        │     ├ VendorSeverity   ╭ ghsa  : 2 
│                        │     │                  ╰ redhat: 1 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 6 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 3.9 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41568 
│                        │     │                  ├ [1]: https://github.com/moby/moby 
│                        │     │                  ├ [2]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      vp62-88p7-qqf5 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41568 
│                        │     │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41568 
│                        │     ├ PublishedDate   : 2026-06-12T19:16:26.907Z 
│                        │     ╰ LastModifiedDate: 2026-06-17T10:46:51.787Z 
│                        ├ [5] ╭ VulnerabilityID : GO-2026-5932 
│                        │     ├ PkgID           : golang.org/x/crypto@v0.53.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.53.0 
│                        │     │                  ╰ UID : 5e98fa20c1a31804 
│                        │     ├ InstalledVersion: v0.53.0 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:803454e761f75e5b6d37a21dfe611a94f522ede8f7b0f83502d99
│                        │     │                   434e8bec561 
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
│                        │     ╰ References       ╭ [0]: https://go.dev/issue/44226 
│                        │                        ╰ [1]: https://pkg.go.dev/vuln/GO-2026-5932 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-56852 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5970 
│                        │     ├ PkgID           : golang.org/x/text@v0.38.0 
│                        │     ├ PkgName         : golang.org/x/text 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.38.0 
│                        │     │                  ╰ UID : 9c5420c62a825575 
│                        │     ├ InstalledVersion: v0.38.0 
│                        │     ├ FixedVersion    : 0.39.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:a8e445aad76a3cd4d5bb70edc7220e2d095594580062dae223b45
│                        │     │                   56b3fef4129 
│                        │     ├ Title           : A norm.Iter can enter an infinite loop when handling input
│                        │     │                   containing  ... 
│                        │     ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │     │                   containing invalid UTF-8 bytes. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-835 
│                        │     ├ VendorSeverity   ─ azure: 3 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/794100 
│                        │     │                  ├ [1]: https://go.dev/issue/80142 
│                        │     │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56852 
│                        │     │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-5970 
│                        │     ├ PublishedDate   : 2026-07-21T20:17:02.867Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [7] ╭ VulnerabilityID : GHSA-hrxh-6v49-42gf 
│                        │     ├ PkgID           : google.golang.org/grpc@v1.81.1 
│                        │     ├ PkgName         : google.golang.org/grpc 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.81.1 
│                        │     │                  ╰ UID : e0d6d6ad1009c053 
│                        │     ├ InstalledVersion: v1.81.1 
│                        │     ├ FixedVersion    : 1.82.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:930fb8d92ecda162355df61670098495b889576bdd9156f9a4232
│                        │     │                   4cdb319e67f 
│                        │     ├ Title           : gRPC-Go: xDS RBAC and HTTP/2 Vulnerabilities 
│                        │     ├ Description     : Multiple security vulnerabilities have been identified and
│                        │     │                   addressed in grpc-go affecting the xDS RBAC authorization
│                        │     │                   engine (internal/xds/rbac) and the HTTP/2 transport server
│                        │     │                   implementation (internal/transport). These vulnerabilities
│                        │     │                   could result in:
│                        │     │                   
│                        │     │                   - Authorization Bypass (Fail-Open) when translating xDS RBAC
│                        │     │                    policies containing `Metadata` or `RequestedServerName`
│                        │     │                   fields.
│                        │     │                   - Denial of Service (High CPU Consumption) due to an HTTP/2
│                        │     │                   Rapid Reset mitigation bypass during client-initiated stream
│                        │     │                    resets.
│                        │     │                   - Denial of Service (Server Panic) when parsing crafted xDS
│                        │     │                   RBAC policies containing `NOT` rules around unsupported
│                        │     │                   ### Impact
│                        │     │                   _What kind of vulnerability is it? Who is impacted?_
│                        │     │                   #### xDS RBAC Authorization Bypass via `Metadata` &
│                        │     │                   `RequestedServerName` matchers
│                        │     │                   - Affected Component: xDS RBAC 
│                        │     │                   - Impact: When building policy matchers for gRPC RBAC from
│                        │     │                   xDS configurations, unsupported `permission` and `principal`
│                        │     │                    rules (specifically `Metadata` and `RequestedServerName`)
│                        │     │                   were silently ignored and treated as no-ops.
│                        │     │                     - If an authorization policy relied purely on these
│                        │     │                   matchers for access control, treating those rules as no-ops
│                        │     │                   effectively removed the restrictions.
│                        │     │                   - If these unsupported rules were nested inside logical
│                        │     │                   `NOT` rules (`Permission_NotRule` / `Principal_NotId`) or
│                        │     │                   multi-condition `OR/AND` rules, silently dropping them
│                        │     │                   changed the boolean logic flow of the authorization engine.
│                        │     │                   As a result, policy evaluation decisions could fail open,
│                        │     │                   allowing unauthorized clients to access protected gRPC
│                        │     │                   services or resources.
│                        │     │                   #### HTTP/2 Rapid Reset Mitigation Bypass / Denial of
│                        │     │                   Service via Stream Aborts
│                        │     │                   - Affected Component: HTTP/2 transport
│                        │     │                   - Impact: Earlier mitigations in grpc-go for HTTP/2 Rapid
│                        │     │                   Reset only applied threshold checks to items that directly
│                        │     │                   resulted in control frames being written back to the wire,
│                        │     │                   such as `SETTINGS` ACKs or server-initiated `RST_STREAM`s.
│                        │     │                   When a client initiated a rapid flood of stream creation
│                        │     │                   (`HEADERS`) immediately followed by stream termination
│                        │     │                   `RST_STREAM`, items queued up in the control buffer without
│                        │     │                   counting against the transport response frame threshold. An
│                        │     │                   attacker can repeatedly trigger this flood sequence to
│                        │     │                   bypass reader blocking, resulting in high CPU usage, and
│                        │     │                   Denial of Service (DoS).
│                        │     │                   #### Denial of Service (Panic) in xDS RBAC Engine via
│                        │     │                   Unsupported Fields inside NOT Rules
│                        │     │                   - Impact: The xDS RBAC policy translators recursively
│                        │     │                   generate matchers for nested rules. When a `NOT` rule
│                        │     │                   wrapped an unsupported or unhandled field (such as
│                        │     │                   `SourcedMetadata`), the recursive step returned an empty
│                        │     │                   matcher. This could result in a runtime panic when the RBAC
│                        │     │                   engine attempts to authorize an incoming request.
│                        │     │                   An attacker or misconfigured/malicious xDS management server
│                        │     │                    delivering an LDS/RDS update containing a `NOT` rule around
│                        │     │                    an unhandled field causes the gRPC server process to crash
│                        │     │                   immediately (CWE-248 / Denial of Service).
│                        │     │                   ### Patches
│                        │     │                   _Has the problem been patched? What versions should users
│                        │     │                   upgrade to?_
│                        │     │                   All three issues have been fixed in `master` and will be
│                        │     │                   released in 1.82.1 shortly.
│                        │     │                   ### Workarounds
│                        │     │                   _Is there a way for users to fix or remediate the
│                        │     │                   vulnerability without upgrading?_
│                        │     │                   If upgrading grpc-go immediately is not possible, apply the
│                        │     │                   following workarounds based on your deployment
│                        │     │                   architecture:
│                        │     │                   * For xDS RBAC Vulnerabilities & Panics: Ensure that
│                        │     │                   upstream xDS management servers do not push RBAC policies
│                        │     │                   containing `Metadata`, `RequestedServerName`, or `NOT` rules
│                        │     │                    wrapping unsupported fields (such as `SourcedMetadata`) to
│                        │     │                   grpc-go servers.
│                        │     │                   * For HTTP/2 Rapid Reset DOS: Configure upstream reverse
│                        │     │                   proxies or load balancers (such as Envoy) with strict HTTP/2
│                        │     │                    `max_concurrent_streams` limits and active rate limiting on
│                        │     │                    `RST_STREAM` frequency per connection.
│                        │     │                   ### Severity
│                        │     │                     | Vulnerability | Qualitative Severity | Approximate CVSS
│                        │     │                   v3.1 Score | Primary Impact |
│                        │     │                     | :--- | :--- | :--- | :--- |
│                        │     │                     | **xDS RBAC Authorization Bypass** | **High** | `8.2` |
│                        │     │                   Unauthorized Access / Fail-Open |
│                        │     │                     | **HTTP/2 Rapid Reset DOS Bypass** | **High** | `7.5` |
│                        │     │                   High CPU Consumption / Denial of Service |
│                        │     │                     | **xDS RBAC Engine Server Panic** | **Medium** | `5.9` |
│                        │     │                   Process Crash / Denial of Service | 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ─ ghsa: 3 
│                        │     ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI
│                        │     │                         │            :H/VA:H/SC:N/SI:N/SA:N 
│                        │     │                         ╰ V40Score : 8.8 
│                        │     ├ References       ╭ [0]: https://github.com/grpc/grpc-go 
│                        │     │                  ├ [1]: https://github.com/grpc/grpc-go/commit/4ea465d4ab98013
│                        │     │                  │      f72a142fe0fc89c19770b2935 
│                        │     │                  ├ [2]: https://github.com/grpc/grpc-go/pull/9236 
│                        │     │                  ├ [3]: https://github.com/grpc/grpc-go/releases/tag/v1.82.1 
│                        │     │                  ╰ [4]: https://github.com/grpc/grpc-go/security/advisories/GH
│                        │     │                         SA-hrxh-6v49-42gf 
│                        │     ├ PublishedDate   : 2026-07-21T22:03:55Z 
│                        │     ╰ LastModifiedDate: 2026-07-21T22:03:56Z 
│                        ├ [8] ╭ VulnerabilityID : CVE-2026-39822 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │     ├ PkgID           : stdlib@v1.26.4 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                        │     │                  ╰ UID : 3637f4e9d92f84e2 
│                        │     ├ InstalledVersion: v1.26.4 
│                        │     ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:87896c3e6a1739c7989f1642e81790970c582b25c9ae1c3865483
│                        │     │                   334dda9272b 
│                        │     ├ Title           : os: golang: Go os.Root: Symlink following vulnerability
│                        │     │                   allows directory traversal 
│                        │     ├ Description     : On Unix systems, opening a file in an os.Root improperly
│                        │     │                   follows symlinks to locations outside of the Root when the
│                        │     │                   final path component of the a path is a symbolic link and
│                        │     │                   the path ends in /. For example, 'root.Open("symlink/")'
│                        │     │                   will open "symlink" even when "symlink" is a symbolic link
│                        │     │                   pointing outside of the root. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-61 
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 2 
│                        │     │                  ├ bitnami    : 3 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │     │                  │         │           H/A:H 
│                        │     │                  │         ╰ V3Score : 7.8 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │     │                            │           H/A:H 
│                        │     │                            ╰ V3Score : 7.8 
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:38878 
│                        │     │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-39822 
│                        │     │                  ├ [2] : https://bugzilla.redhat.com/2498152 
│                        │     │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
│                        │     │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39822 
│                        │     │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2026-38878.html 
│                        │     │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:38878 
│                        │     │                  ├ [7] : https://go.dev/cl/797880 
│                        │     │                  ├ [8] : https://go.dev/issue/79005 
│                        │     │                  ├ [9] : https://groups.google.com/g/golang-announce/c/OrmQE_Y
│                        │     │                  │       p5Sc 
│                        │     │                  ├ [10]: https://linux.oracle.com/cve/CVE-2026-39822.html 
│                        │     │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2026-38995.html 
│                        │     │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-39822 
│                        │     │                  ├ [13]: https://pkg.go.dev/vuln/GO-2026-4970 
│                        │     │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2026-39822 
│                        │     ├ PublishedDate   : 2026-07-08T17:17:21.31Z 
│                        │     ╰ LastModifiedDate: 2026-07-13T14:54:26.317Z 
│                        ╰ [9] ╭ VulnerabilityID : CVE-2026-42505 
│                              ├ VendorIDs        ─ [0]: GO-2026-5856 
│                              ├ PkgID           : stdlib@v1.26.4 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                              │                  ╰ UID : 3637f4e9d92f84e2 
│                              ├ InstalledVersion: v1.26.4 
│                              ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                              │                  │         dd1c189cada2bb321f30 
│                              │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                              │                            3b065de6f809d70d81ad 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:9dc42b5394bfb19e5f0e30649727545f609edb58b801b41057b43
│                              │                   166feae3d92 
│                              ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure in
│                              │                    Encrypted Client Hello 
│                              ├ Description     : Handshakes which used Encrypted Client Hello could be
│                              │                   de-anonymized by a passive network observer due to a
│                              │                   disclosure of pre-shared key identities in the unencrypted
│                              │                   client hello. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-201 
│                              ├ VendorSeverity   ╭ amazon : 2 
│                              │                  ├ bitnami: 2 
│                              │                  ╰ redhat : 2 
│                              ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                              │                  │         │           N/A:N 
│                              │                  │         ╰ V3Score : 5.3 
│                              │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                              │                            │           N/A:N 
│                              │                            ╰ V3Score : 5.3 
│                              ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42505 
│                              │                  ├ [1]: https://go.dev/cl/775960 
│                              │                  ├ [2]: https://go.dev/issue/79282 
│                              │                  ├ [3]: https://groups.google.com/g/golang-announce/c/OrmQE_Yp
│                              │                  │      5Sc 
│                              │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42505 
│                              │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5856 
│                              │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42505 
│                              ├ PublishedDate   : 2026-07-08T17:17:21.497Z 
│                              ╰ LastModifiedDate: 2026-07-13T17:05:36.303Z 
├ [4]  ╭ Target  : usr/bin/docker-proxy 
│      ├ Class   : lang-pkgs 
│      ├ Type    : gobinary 
│      ╰ Packages 
├ [5]  ╭ Target         : usr/bin/dockerd 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ─ [0] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.54.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.54.0 
│                              │                  ╰ UID : cb4c70c83dd4184f 
│                              ├ InstalledVersion: v0.54.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                              │                  │         dd1c189cada2bb321f30 
│                              │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                              │                            3b065de6f809d70d81ad 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:37a1fdfa4e2d1b612efabe307b8d0708d0458dc7f5448e2f086ea
│                              │                   d64bf848833 
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
│                              ╰ References       ╭ [0]: https://go.dev/issue/44226 
│                                                 ╰ [1]: https://pkg.go.dev/vuln/GO-2026-5932 
├ [6]  ╭ Target         : usr/bin/helm 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : GO-2026-5932 
│                        │     ├ PkgID           : golang.org/x/crypto@v0.54.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.54.0 
│                        │     │                  ╰ UID : c527a3567c036841 
│                        │     ├ InstalledVersion: v0.54.0 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:c313a17276665cbca57a6ca152ab3338c6c58e71483ee21f906d4
│                        │     │                   c50d2bd6824 
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
│                        │     ╰ References       ╭ [0]: https://go.dev/issue/44226 
│                        │                        ╰ [1]: https://pkg.go.dev/vuln/GO-2026-5932 
│                        ╰ [1] ╭ VulnerabilityID : CVE-2026-50163 
│                              ├ VendorIDs        ─ [0]: GHSA-fxhp-mv3v-67qp 
│                              ├ PkgID           : oras.land/oras-go/v2@v2.6.1 
│                              ├ PkgName         : oras.land/oras-go/v2 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/oras.land/oras-go/v2@v2.6.1 
│                              │                  ╰ UID : 2d707a2bb38acc69 
│                              ├ InstalledVersion: v2.6.1 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                              │                  │         dd1c189cada2bb321f30 
│                              │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                              │                            3b065de6f809d70d81ad 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-50163 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:be127b9b961457f5ca56191782349ef6e7c0376f332b99c9fb53f
│                              │                   821cfd9d513 
│                              ├ Title           : oras-go: Oras-go: Information disclosure and arbitrary file
│                              │                   access via crafted tarball hardlinks 
│                              ├ Description     : oras-go is a Go library for managing OCI artifacts. Prior to
│                              │                    2.6.2, ensureLinkPath in content/file/utils.go:262-275
│                              │                   validates a hardlink target relative to the extract base but
│                              │                    returns the unresolved target, causing
│                              │                   os.Link("victim.secret",
│                              │                   "<extract_base>/payload.tar.gz/evil_cwd_link") to resolve
│                              │                   header.Linkname against the process current working
│                              │                   directory for a Typeflag=TypeLink entry such as
│                              │                   Name=payload.tar.gz/evil_cwd_link and
│                              │                   Linkname="victim.secret" with io.deis.oras.content.unpack:
│                              │                   "true", which can expose or tamper with files such as .env,
│                              │                   .git/config, .aws/credentials, and ~/.ssh/config. This issue
│                              │                    is fixed in version 2.6.2. 
│                              ├ Severity        : HIGH 
│                              ├ CweIDs           ╭ [0]: CWE-22 
│                              │                  ╰ [1]: CWE-59 
│                              ├ VendorSeverity   ╭ ghsa  : 3 
│                              │                  ╰ redhat: 2 
│                              ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:L
│                              │                  │        │           /A:N 
│                              │                  │        ╰ V3Score : 7.1 
│                              │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:L
│                              │                           │           /A:N 
│                              │                           ╰ V3Score : 5.9 
│                              ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-50163 
│                              │                  ├ [1]: https://github.com/oras-project/oras-go 
│                              │                  ├ [2]: https://github.com/oras-project/oras-go/commit/b11f777
│                              │                  │      f8d405c5023c4b307cfdc5068dfc3d406 
│                              │                  ├ [3]: https://github.com/oras-project/oras-go/commit/c463c65
│                              │                  │      4ab3ef34422c1764cd619806cebf20451 
│                              │                  ├ [4]: https://github.com/oras-project/oras-go/pull/1232 
│                              │                  ├ [5]: https://github.com/oras-project/oras-go/releases/tag/v
│                              │                  │      2.6.2 
│                              │                  ├ [6]: https://github.com/oras-project/oras-go/security/advis
│                              │                  │      ories/GHSA-fxhp-mv3v-67qp 
│                              │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-50163 
│                              │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-50163 
│                              ├ PublishedDate   : 2026-07-17T20:17:23.943Z 
│                              ╰ LastModifiedDate: 2026-07-23T18:02:00.793Z 
├ [7]  ╭ Target         : usr/bin/kubectl 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-25681 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5029 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25681 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:269eba2b7c0615ecc10aaade31b59fb91f3d24294d5adce1656f1
│                        │     │                   a4e8685bf1b 
│                        │     ├ Title           : golang.org/x/net/html: golang.org/x/net/html: Arbitrary code
│                        │     │                    execution via Cross-Site Scripting 
│                        │     ├ Description     : Parsing arbitrary HTML which is then rendered using Render
│                        │     │                   can result in an unexpected HTML tree. This can be leveraged
│                        │     │                    to execute XSS attacks in applications that attempt to
│                        │     │                   sanitize input HTML before rendering. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-1021 
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 3 
│                        │     │                  ├ azure      : 2 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 8.1 
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37123 
│                        │     │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-25681 
│                        │     │                  ├ [2] : https://bugzilla.redhat.com/2480680 
│                        │     │                  ├ [3] : https://bugzilla.redhat.com/2480681 
│                        │     │                  ├ [4] : https://bugzilla.redhat.com/2480685 
│                        │     │                  ├ [5] : https://bugzilla.redhat.com/2480688 
│                        │     │                  ├ [6] : https://bugzilla.redhat.com/2480757 
│                        │     │                  ├ [7] : https://bugzilla.redhat.com/2480761 
│                        │     │                  ├ [8] : https://bugzilla.redhat.com/2493620 
│                        │     │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2480680 
│                        │     │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2480681 
│                        │     │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2480685 
│                        │     │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2480688 
│                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2480757 
│                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2480761 
│                        │     │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2493620 
│                        │     │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-25681 
│                        │     │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-27136 
│                        │     │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39829 
│                        │     │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39832 
│                        │     │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39835 
│                        │     │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-42508 
│                        │     │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-57231 
│                        │     │                  ├ [23]: https://errata.almalinux.org/9/ALSA-2026-37123.html 
│                        │     │                  ├ [24]: https://errata.rockylinux.org/RLSA-2026:37123 
│                        │     │                  ├ [25]: https://go.dev/cl/781703 
│                        │     │                  ├ [26]: https://go.dev/issue/79574 
│                        │     │                  ├ [27]: https://groups.google.com/g/golang-announce/c/iI-mYSI
│                        │     │                  │       0lu8 
│                        │     │                  ├ [28]: https://linux.oracle.com/cve/CVE-2026-25681.html 
│                        │     │                  ├ [29]: https://linux.oracle.com/errata/ELSA-2026-37123.html 
│                        │     │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-25681 
│                        │     │                  ├ [31]: https://pkg.go.dev/vuln/GO-2026-5029 
│                        │     │                  ╰ [32]: https://www.cve.org/CVERecord?id=CVE-2026-25681 
│                        │     ├ PublishedDate   : 2026-05-22T16:16:19.863Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-27136 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5030 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27136 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:44a9f202abee2cbfa4120357114bf37c21866b8cea9458e1c0b7b
│                        │     │                   44edfee94db 
│                        │     ├ Title           : golang.org/x/net/html: golang: golang.org/x/net/html:
│                        │     │                   Cross-Site Scripting via HTML parsing bypass 
│                        │     ├ Description     : Parsing arbitrary HTML which is then rendered using Render
│                        │     │                   can result in an unexpected HTML tree. This can be leveraged
│                        │     │                    to execute XSS attacks in applications that attempt to
│                        │     │                   sanitize input HTML before rendering. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-1021 
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 3 
│                        │     │                  ├ azure      : 2 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:H
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 8.1 
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37123 
│                        │     │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-27136 
│                        │     │                  ├ [2] : https://bugzilla.redhat.com/2480680 
│                        │     │                  ├ [3] : https://bugzilla.redhat.com/2480681 
│                        │     │                  ├ [4] : https://bugzilla.redhat.com/2480685 
│                        │     │                  ├ [5] : https://bugzilla.redhat.com/2480688 
│                        │     │                  ├ [6] : https://bugzilla.redhat.com/2480757 
│                        │     │                  ├ [7] : https://bugzilla.redhat.com/2480761 
│                        │     │                  ├ [8] : https://bugzilla.redhat.com/2493620 
│                        │     │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2480680 
│                        │     │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2480681 
│                        │     │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2480685 
│                        │     │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2480688 
│                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2480757 
│                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2480761 
│                        │     │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2493620 
│                        │     │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-25681 
│                        │     │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-27136 
│                        │     │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39829 
│                        │     │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39832 
│                        │     │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39835 
│                        │     │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-42508 
│                        │     │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-57231 
│                        │     │                  ├ [23]: https://errata.almalinux.org/9/ALSA-2026-37123.html 
│                        │     │                  ├ [24]: https://errata.rockylinux.org/RLSA-2026:37123 
│                        │     │                  ├ [25]: https://go.dev/cl/781685 
│                        │     │                  ├ [26]: https://go.dev/issue/79575 
│                        │     │                  ├ [27]: https://groups.google.com/g/golang-announce/c/iI-mYSI
│                        │     │                  │       0lu8 
│                        │     │                  ├ [28]: https://linux.oracle.com/cve/CVE-2026-27136.html 
│                        │     │                  ├ [29]: https://linux.oracle.com/errata/ELSA-2026-37123.html 
│                        │     │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-27136 
│                        │     │                  ├ [31]: https://pkg.go.dev/vuln/GO-2026-5030 
│                        │     │                  ╰ [32]: https://www.cve.org/CVERecord?id=CVE-2026-27136 
│                        │     ├ PublishedDate   : 2026-05-22T16:16:20.087Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-33814 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4918 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.53.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:f0ba8906b08c3e4f4bb9465b707ac08b59e125c7c2f9f1082eaa4
│                        │     │                   0e70c161127 
│                        │     ├ Title           : net/http/internal/http2: golang: golang.org/x/net: Go
│                        │     │                   HTTP/2: Denial of Service via malformed
│                        │     │                   SETTINGS_MAX_FRAME_SIZE frame 
│                        │     ├ Description     : When processing HTTP/2 SETTINGS frames, transport will enter
│                        │     │                    an infinite loop of writing CONTINUATION frames if it
│                        │     │                   receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ╭ [0]: CWE-835 
│                        │     │                  ╰ [1]: CWE-606 
│                        │     ├ VendorSeverity   ╭ amazon     : 3 
│                        │     │                  ├ azure      : 2 
│                        │     │                  ├ bitnami    : 3 
│                        │     │                  ├ nvd        : 3 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ photon     : 3 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ ubuntu     : 2 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:23262 
│                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:23264 
│                        │     │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:33120 
│                        │     │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:33123 
│                        │     │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:33142 
│                        │     │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:33150 
│                        │     │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:34342 
│                        │     │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:37387 
│                        │     │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:42644 
│                        │     │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:43692 
│                        │     │                  ├ [10]: https://access.redhat.com/security/cve/CVE-2026-33814 
│                        │     │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2467815 
│                        │     │                  ├ [12]: https://github.com/golang/go/issues/78476 
│                        │     │                  ├ [13]: https://go-review.googlesource.com/c/go/+/761581 
│                        │     │                  ├ [14]: https://go-review.googlesource.com/c/net/+/761640 
│                        │     │                  ├ [15]: https://go.dev/cl/761581 
│                        │     │                  ├ [16]: https://go.dev/cl/761640 
│                        │     │                  ├ [17]: https://go.dev/issue/78476 
│                        │     │                  ├ [18]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │     │                  │       o47M 
│                        │     │                  ├ [19]: https://linux.oracle.com/cve/CVE-2026-33814.html 
│                        │     │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2026-22121.html 
│                        │     │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │     │                  ├ [22]: https://pkg.go.dev/vuln/GO-2026-4918 
│                        │     │                  ├ [23]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-33814.json 
│                        │     │                  ├ [24]: https://ubuntu.com/security/notices/USN-8430-1 
│                        │     │                  ├ [25]: https://ubuntu.com/security/notices/USN-8471-1 
│                        │     │                  ├ [26]: https://ubuntu.com/security/notices/USN-8472-1 
│                        │     │                  ├ [27]: https://ubuntu.com/security/notices/USN-8473-1 
│                        │     │                  ╰ [28]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
│                        │     ╰ LastModifiedDate: 2026-07-24T13:18:01.21Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-39821 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5026 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:c2cf22d5b157b0c29c59242191314dd80d29c04f2994781fc0575
│                        │     │                   ff9523120c3 
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
│                        │     ├ CweIDs           ─ [0]: CWE-1289 
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
│                        │     ├ References       ╭ [0]  : https://access.redhat.com/errata/RHSA-2026:23262 
│                        │     │                  ├ [1]  : https://access.redhat.com/errata/RHSA-2026:23264 
│                        │     │                  ├ [2]  : https://access.redhat.com/errata/RHSA-2026:26546 
│                        │     │                  ├ [3]  : https://access.redhat.com/errata/RHSA-2026:26547 
│                        │     │                  ├ [4]  : https://access.redhat.com/errata/RHSA-2026:30650 
│                        │     │                  ├ [5]  : https://access.redhat.com/errata/RHSA-2026:30651 
│                        │     │                  ├ [6]  : https://access.redhat.com/errata/RHSA-2026:30853 
│                        │     │                  ├ [7]  : https://access.redhat.com/errata/RHSA-2026:30854 
│                        │     │                  ├ [8]  : https://access.redhat.com/errata/RHSA-2026:30855 
│                        │     │                  ├ [9]  : https://access.redhat.com/errata/RHSA-2026:33155 
│                        │     │                  ├ [10] : https://access.redhat.com/errata/RHSA-2026:33160 
│                        │     │                  ├ [11] : https://access.redhat.com/errata/RHSA-2026:33163 
│                        │     │                  ├ [12] : https://access.redhat.com/errata/RHSA-2026:33173 
│                        │     │                  ├ [13] : https://access.redhat.com/errata/RHSA-2026:33183 
│                        │     │                  ├ [14] : https://access.redhat.com/errata/RHSA-2026:33524 
│                        │     │                  ├ [15] : https://access.redhat.com/errata/RHSA-2026:33531 
│                        │     │                  ├ [16] : https://access.redhat.com/errata/RHSA-2026:34342 
│                        │     │                  ├ [17] : https://access.redhat.com/errata/RHSA-2026:34357 
│                        │     │                  ├ [18] : https://access.redhat.com/errata/RHSA-2026:34359 
│                        │     │                  ├ [19] : https://access.redhat.com/errata/RHSA-2026:34364 
│                        │     │                  ├ [20] : https://access.redhat.com/errata/RHSA-2026:34789 
│                        │     │                  ├ [21] : https://access.redhat.com/errata/RHSA-2026:35826 
│                        │     │                  ├ [22] : https://access.redhat.com/errata/RHSA-2026:35827 
│                        │     │                  ├ [23] : https://access.redhat.com/errata/RHSA-2026:35828 
│                        │     │                  ├ [24] : https://access.redhat.com/errata/RHSA-2026:35829 
│                        │     │                  ├ [25] : https://access.redhat.com/errata/RHSA-2026:35830 
│                        │     │                  ├ [26] : https://access.redhat.com/errata/RHSA-2026:35831 
│                        │     │                  ├ [27] : https://access.redhat.com/errata/RHSA-2026:35993 
│                        │     │                  ├ [28] : https://access.redhat.com/errata/RHSA-2026:35994 
│                        │     │                  ├ [29] : https://access.redhat.com/errata/RHSA-2026:36105 
│                        │     │                  ├ [30] : https://access.redhat.com/errata/RHSA-2026:36167 
│                        │     │                  ├ [31] : https://access.redhat.com/errata/RHSA-2026:36207 
│                        │     │                  ├ [32] : https://access.redhat.com/errata/RHSA-2026:36648 
│                        │     │                  ├ [33] : https://access.redhat.com/errata/RHSA-2026:36651 
│                        │     │                  ├ [34] : https://access.redhat.com/errata/RHSA-2026:36796 
│                        │     │                  ├ [35] : https://access.redhat.com/errata/RHSA-2026:36797 
│                        │     │                  ├ [36] : https://access.redhat.com/errata/RHSA-2026:36808 
│                        │     │                  ├ [37] : https://access.redhat.com/errata/RHSA-2026:36820 
│                        │     │                  ├ [38] : https://access.redhat.com/errata/RHSA-2026:36883 
│                        │     │                  ├ [39] : https://access.redhat.com/errata/RHSA-2026:37387 
│                        │     │                  ├ [40] : https://access.redhat.com/errata/RHSA-2026:37435 
│                        │     │                  ├ [41] : https://access.redhat.com/errata/RHSA-2026:37436 
│                        │     │                  ├ [42] : https://access.redhat.com/errata/RHSA-2026:38995 
│                        │     │                  ├ [43] : https://access.redhat.com/errata/RHSA-2026:39005 
│                        │     │                  ├ [44] : https://access.redhat.com/errata/RHSA-2026:39573 
│                        │     │                  ├ [45] : https://access.redhat.com/errata/RHSA-2026:39879 
│                        │     │                  ├ [46] : https://access.redhat.com/errata/RHSA-2026:40118 
│                        │     │                  ├ [47] : https://access.redhat.com/errata/RHSA-2026:40262 
│                        │     │                  ├ [48] : https://access.redhat.com/errata/RHSA-2026:40945 
│                        │     │                  ├ [49] : https://access.redhat.com/errata/RHSA-2026:41019 
│                        │     │                  ├ [50] : https://access.redhat.com/errata/RHSA-2026:41030 
│                        │     │                  ├ [51] : https://access.redhat.com/errata/RHSA-2026:41031 
│                        │     │                  ├ [52] : https://access.redhat.com/errata/RHSA-2026:41036 
│                        │     │                  ├ [53] : https://access.redhat.com/errata/RHSA-2026:41055 
│                        │     │                  ├ [54] : https://access.redhat.com/errata/RHSA-2026:41066 
│                        │     │                  ├ [55] : https://access.redhat.com/errata/RHSA-2026:41928 
│                        │     │                  ├ [56] : https://access.redhat.com/errata/RHSA-2026:41930 
│                        │     │                  ├ [57] : https://access.redhat.com/errata/RHSA-2026:42043 
│                        │     │                  ├ [58] : https://access.redhat.com/errata/RHSA-2026:42047 
│                        │     │                  ├ [59] : https://access.redhat.com/errata/RHSA-2026:42048 
│                        │     │                  ├ [60] : https://access.redhat.com/errata/RHSA-2026:42049 
│                        │     │                  ├ [61] : https://access.redhat.com/errata/RHSA-2026:42050 
│                        │     │                  ├ [62] : https://access.redhat.com/errata/RHSA-2026:42051 
│                        │     │                  ├ [63] : https://access.redhat.com/errata/RHSA-2026:42078 
│                        │     │                  ├ [64] : https://access.redhat.com/errata/RHSA-2026:42079 
│                        │     │                  ├ [65] : https://access.redhat.com/errata/RHSA-2026:42080 
│                        │     │                  ├ [66] : https://access.redhat.com/errata/RHSA-2026:42082 
│                        │     │                  ├ [67] : https://access.redhat.com/errata/RHSA-2026:42132 
│                        │     │                  ├ [68] : https://access.redhat.com/errata/RHSA-2026:42142 
│                        │     │                  ├ [69] : https://access.redhat.com/errata/RHSA-2026:42146 
│                        │     │                  ├ [70] : https://access.redhat.com/errata/RHSA-2026:42150 
│                        │     │                  ├ [71] : https://access.redhat.com/errata/RHSA-2026:42151 
│                        │     │                  ├ [72] : https://access.redhat.com/errata/RHSA-2026:42240 
│                        │     │                  ├ [73] : https://access.redhat.com/errata/RHSA-2026:42644 
│                        │     │                  ├ [74] : https://access.redhat.com/errata/RHSA-2026:42796 
│                        │     │                  ├ [75] : https://access.redhat.com/errata/RHSA-2026:42852 
│                        │     │                  ├ [76] : https://access.redhat.com/errata/RHSA-2026:43038 
│                        │     │                  ├ [77] : https://access.redhat.com/errata/RHSA-2026:43052 
│                        │     │                  ├ [78] : https://access.redhat.com/errata/RHSA-2026:43692 
│                        │     │                  ├ [79] : https://access.redhat.com/errata/RHSA-2026:44622 
│                        │     │                  ├ [80] : https://access.redhat.com/errata/RHSA-2026:44624 
│                        │     │                  ├ [81] : https://access.redhat.com/errata/RHSA-2026:46395 
│                        │     │                  ├ [82] : https://access.redhat.com/errata/RHSA-2026:47149 
│                        │     │                  ├ [83] : https://access.redhat.com/errata/RHSA-2026:47735 
│                        │     │                  ├ [84] : https://access.redhat.com/errata/RHSA-2026:47737 
│                        │     │                  ├ [85] : https://access.redhat.com/errata/RHSA-2026:47952 
│                        │     │                  ├ [86] : https://access.redhat.com/security/cve/CVE-2026-39821 
│                        │     │                  ├ [87] : https://bugzilla.redhat.com/2480756 
│                        │     │                  ├ [88] : https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
│                        │     │                  ├ [89] : https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
│                        │     │                  ├ [90] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │     │                  │        026-39821 
│                        │     │                  ├ [91] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │     │                  │        026-39822 
│                        │     │                  ├ [92] : https://errata.almalinux.org/9/ALSA-2026-37435.html 
│                        │     │                  ├ [93] : https://errata.rockylinux.org/RLSA-2026:37435 
│                        │     │                  ├ [94] : https://github.com/golang/go/issues/78760 
│                        │     │                  ├ [95] : https://go.dev/cl/767220 
│                        │     │                  ├ [96] : https://go.dev/issue/78760 
│                        │     │                  ├ [97] : https://groups.google.com/g/golang-announce/c/iI-mYS
│                        │     │                  │        I0lu8 
│                        │     │                  ├ [98] : https://linux.oracle.com/cve/CVE-2026-39821.html 
│                        │     │                  ├ [99] : https://linux.oracle.com/errata/ELSA-2026-46395.html 
│                        │     │                  ├ [100]: https://nvd.nist.gov/vuln/detail/CVE-2026-39821 
│                        │     │                  ├ [101]: https://pkg.go.dev/vuln/GO-2026-5026 
│                        │     │                  ├ [102]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │     │                  │        2026/cve-2026-39821.json 
│                        │     │                  ├ [103]: https://ubuntu.com/security/notices/USN-8416-1 
│                        │     │                  ╰ [104]: https://www.cve.org/CVERecord?id=CVE-2026-39821 
│                        │     ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
│                        │     ╰ LastModifiedDate: 2026-07-31T13:18:09.37Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-25680 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5028 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25680 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:99afb9c5ea105a62ee81ebce68c059bbde262be9c9c66724b7cab
│                        │     │                   99f3964f9d7 
│                        │     ├ Title           : golang.org/x/net/html: golang.org/x/net/html: Denial of
│                        │     │                   Service due to excessive HTML parsing 
│                        │     ├ Description     : Parsing arbitrary HTML can consume excessive CPU time,
│                        │     │                   possibly leading to denial of service. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs           ─ [0]: CWE-400 
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ azure : 2 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:N
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 6.5 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-25680 
│                        │     │                  ├ [1]: https://go.dev/cl/781702 
│                        │     │                  ├ [2]: https://go.dev/issue/79573 
│                        │     │                  ├ [3]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
│                        │     │                  │      lu8 
│                        │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-25680 
│                        │     │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5028 
│                        │     │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-25680 
│                        │     ├ PublishedDate   : 2026-05-22T16:16:19.753Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-42502 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5027 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42502 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:d2e24764cbc7114aebe55ca15c8324dfeadf37603ff1a38475e0e
│                        │     │                   0dd8c3467d4 
│                        │     ├ Title           : golang.org/x/net/html: golang: golang.org/x/net/html:
│                        │     │                   Cross-Site Scripting via unexpected HTML tree rendering 
│                        │     ├ Description     : Parsing arbitrary HTML which is then rendered using Render
│                        │     │                   can result in an unexpected HTML tree. This can be leveraged
│                        │     │                    to execute XSS attacks in applications that attempt to
│                        │     │                   sanitize input HTML before rendering. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs           ─ [0]: CWE-1021 
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ azure : 2 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:L
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 6.1 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42502 
│                        │     │                  ├ [1]: https://go.dev/cl/781701 
│                        │     │                  ├ [2]: https://go.dev/issue/79572 
│                        │     │                  ├ [3]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
│                        │     │                  │      lu8 
│                        │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42502 
│                        │     │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5027 
│                        │     │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42502 
│                        │     ├ PublishedDate   : 2026-05-22T16:16:20.587Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-42506 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5025 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42506 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:8d29ecd3f59cb3742101234341f693d526dc728acbaf60f703872
│                        │     │                   91a77e14011 
│                        │     ├ Title           : golang.org/x/net/html: golang.org/x/net/html: Cross-Site
│                        │     │                   Scripting (XSS) via arbitrary HTML parsing 
│                        │     ├ Description     : Parsing arbitrary HTML which is then rendered using Render
│                        │     │                   can result in an unexpected HTML tree. This can be leveraged
│                        │     │                    to execute XSS attacks in applications that attempt to
│                        │     │                   sanitize input HTML before rendering. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs           ─ [0]: CWE-79 
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ azure : 2 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:L
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 5.4 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42506 
│                        │     │                  ├ [1]: https://go.dev/cl/781700 
│                        │     │                  ├ [2]: https://go.dev/issue/79571 
│                        │     │                  ├ [3]: https://groups.google.com/g/golang-announce/c/iI-mYSI0
│                        │     │                  │      lu8 
│                        │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42506 
│                        │     │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5025 
│                        │     │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42506 
│                        │     ├ PublishedDate   : 2026-05-22T16:16:20.803Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ├ [7] ╭ VulnerabilityID : CVE-2026-46600 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5942 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.56.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:366e002b256a752d9de43fe880c30756eaa7f603a00d896cd3909
│                        │     │                   da589e280f3 
│                        │     ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │     │                   of a param ... 
│                        │     ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │     │                   of a parameter value overflows the message buffer. 
│                        │     ├ Severity        : UNKNOWN 
│                        │     ├ CweIDs           ─ [0]: CWE-125 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/786345 
│                        │     │                  ├ [1]: https://go.dev/issue/79795 
│                        │     │                  ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        │     ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [8] ╭ VulnerabilityID : CVE-2026-39824 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5024 
│                        │     ├ PkgID           : golang.org/x/sys@v0.40.0 
│                        │     ├ PkgName         : golang.org/x/sys 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/sys@v0.40.0 
│                        │     │                  ╰ UID : a570222aaba50c0f 
│                        │     ├ InstalledVersion: v0.40.0 
│                        │     ├ FixedVersion    : 0.44.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39824 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:4cbcb59da1a6e1b4e2bc7bd09dd97ad84cfdb294f9773f1245dee
│                        │     │                   c82efdbd0a8 
│                        │     ├ Title           : Invoking integer overflow in NewNTUnicodeString in
│                        │     │                   golang.org/x/sys/windows 
│                        │     ├ Description     : NewNTUnicodeString does not check for string length
│                        │     │                   overflow. When provided with a string that overflows the
│                        │     │                   maximum size of a NTUnicodeString (a 16-bit number of
│                        │     │                   bytes), it returns a truncated string rather than an
│                        │     │                   error. 
│                        │     ├ Severity        : UNKNOWN 
│                        │     ├ CweIDs           ─ [0]: CWE-190 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/770080 
│                        │     │                  ├ [1]: https://go.dev/issue/78916 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/6MMI8Lj-
│                        │     │                  │      Atg 
│                        │     │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-5024 
│                        │     ├ PublishedDate   : 2026-05-22T20:16:33.057Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ╰ [9] ╭ VulnerabilityID : CVE-2026-56852 
│                              ├ VendorIDs        ─ [0]: GO-2026-5970 
│                              ├ PkgID           : golang.org/x/text@v0.33.0 
│                              ├ PkgName         : golang.org/x/text 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.33.0 
│                              │                  ╰ UID : 56d04d7eef2e8fd4 
│                              ├ InstalledVersion: v0.33.0 
│                              ├ FixedVersion    : 0.39.0 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                              │                  │         dd1c189cada2bb321f30 
│                              │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                              │                            3b065de6f809d70d81ad 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:ba4fbf8496d4da3a2600d010ccaf12ffabe752fce5dd22e83199c
│                              │                   3e3138e8169 
│                              ├ Title           : A norm.Iter can enter an infinite loop when handling input
│                              │                   containing  ... 
│                              ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                              │                   containing invalid UTF-8 bytes. 
│                              ├ Severity        : HIGH 
│                              ├ CweIDs           ─ [0]: CWE-835 
│                              ├ VendorSeverity   ─ azure: 3 
│                              ├ References       ╭ [0]: https://go.dev/cl/794100 
│                              │                  ├ [1]: https://go.dev/issue/80142 
│                              │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56852 
│                              │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-5970 
│                              ├ PublishedDate   : 2026-07-21T20:17:02.867Z 
│                              ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
├ [8]  ╭ Target         : usr/bin/pebble 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-25681 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5029 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25681 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:b0184387ace588ebf43e2cf05f7e56608d2295be32fbc3e8d1a9
│                        │      │                   81789ff7be8d 
│                        │      ├ Title           : golang.org/x/net/html: golang.org/x/net/html: Arbitrary
│                        │      │                   code execution via Cross-Site Scripting 
│                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
│                        │      │                   can result in an unexpected HTML tree. This can be
│                        │      │                   leveraged to execute XSS attacks in applications that
│                        │      │                   attempt to sanitize input HTML before rendering. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-1021 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 8.1 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37123 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-25681 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2480680 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2480681 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2480685 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2480688 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2480757 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2480761 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2493620 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2480680 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2480681 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2480685 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2480688 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2480757 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2480761 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2493620 
│                        │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-25681 
│                        │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-27136 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39829 
│                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39832 
│                        │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39835 
│                        │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-42508 
│                        │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-57231 
│                        │      │                  ├ [23]: https://errata.almalinux.org/9/ALSA-2026-37123.html 
│                        │      │                  ├ [24]: https://errata.rockylinux.org/RLSA-2026:37123 
│                        │      │                  ├ [25]: https://go.dev/cl/781703 
│                        │      │                  ├ [26]: https://go.dev/issue/79574 
│                        │      │                  ├ [27]: https://groups.google.com/g/golang-announce/c/iI-mYS
│                        │      │                  │       I0lu8 
│                        │      │                  ├ [28]: https://linux.oracle.com/cve/CVE-2026-25681.html 
│                        │      │                  ├ [29]: https://linux.oracle.com/errata/ELSA-2026-37123.html 
│                        │      │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-25681 
│                        │      │                  ├ [31]: https://pkg.go.dev/vuln/GO-2026-5029 
│                        │      │                  ╰ [32]: https://www.cve.org/CVERecord?id=CVE-2026-25681 
│                        │      ├ PublishedDate   : 2026-05-22T16:16:19.863Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-27136 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5030 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27136 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:91e2bebff89d6f1c468a6be7d5a4ef64f8f49097b3f90c821753
│                        │      │                   68ca52969bf5 
│                        │      ├ Title           : golang.org/x/net/html: golang: golang.org/x/net/html:
│                        │      │                   Cross-Site Scripting via HTML parsing bypass 
│                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
│                        │      │                   can result in an unexpected HTML tree. This can be
│                        │      │                   leveraged to execute XSS attacks in applications that
│                        │      │                   attempt to sanitize input HTML before rendering. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-1021 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 8.1 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37123 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-27136 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2480680 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2480681 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2480685 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2480688 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2480757 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2480761 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2493620 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2480680 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2480681 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2480685 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2480688 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2480757 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2480761 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2493620 
│                        │      │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-25681 
│                        │      │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-27136 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39829 
│                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39832 
│                        │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39835 
│                        │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-42508 
│                        │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-57231 
│                        │      │                  ├ [23]: https://errata.almalinux.org/9/ALSA-2026-37123.html 
│                        │      │                  ├ [24]: https://errata.rockylinux.org/RLSA-2026:37123 
│                        │      │                  ├ [25]: https://go.dev/cl/781685 
│                        │      │                  ├ [26]: https://go.dev/issue/79575 
│                        │      │                  ├ [27]: https://groups.google.com/g/golang-announce/c/iI-mYS
│                        │      │                  │       I0lu8 
│                        │      │                  ├ [28]: https://linux.oracle.com/cve/CVE-2026-27136.html 
│                        │      │                  ├ [29]: https://linux.oracle.com/errata/ELSA-2026-37123.html 
│                        │      │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-27136 
│                        │      │                  ├ [31]: https://pkg.go.dev/vuln/GO-2026-5030 
│                        │      │                  ╰ [32]: https://www.cve.org/CVERecord?id=CVE-2026-27136 
│                        │      ├ PublishedDate   : 2026-05-22T16:16:20.087Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-33814 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4918 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.53.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:580f72e0264852f4d171e03893e5a268f1f93a250dbc51d409de
│                        │      │                   e76f5e57a176 
│                        │      ├ Title           : net/http/internal/http2: golang: golang.org/x/net: Go
│                        │      │                   HTTP/2: Denial of Service via malformed
│                        │      │                   SETTINGS_MAX_FRAME_SIZE frame 
│                        │      ├ Description     : When processing HTTP/2 SETTINGS frames, transport will
│                        │      │                   enter an infinite loop of writing CONTINUATION frames if it
│                        │      │                    receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ╭ [0]: CWE-835 
│                        │      │                  ╰ [1]: CWE-606 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:23262 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:23264 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:33120 
│                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:33123 
│                        │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:33142 
│                        │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:33150 
│                        │      │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:34342 
│                        │      │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:37387 
│                        │      │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:42644 
│                        │      │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:43692 
│                        │      │                  ├ [10]: https://access.redhat.com/security/cve/CVE-2026-33814 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2467815 
│                        │      │                  ├ [12]: https://github.com/golang/go/issues/78476 
│                        │      │                  ├ [13]: https://go-review.googlesource.com/c/go/+/761581 
│                        │      │                  ├ [14]: https://go-review.googlesource.com/c/net/+/761640 
│                        │      │                  ├ [15]: https://go.dev/cl/761581 
│                        │      │                  ├ [16]: https://go.dev/cl/761640 
│                        │      │                  ├ [17]: https://go.dev/issue/78476 
│                        │      │                  ├ [18]: https://groups.google.com/g/golang-announce/c/qcCIEX
│                        │      │                  │       so47M 
│                        │      │                  ├ [19]: https://linux.oracle.com/cve/CVE-2026-33814.html 
│                        │      │                  ├ [20]: https://linux.oracle.com/errata/ELSA-2026-22121.html 
│                        │      │                  ├ [21]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │      │                  ├ [22]: https://pkg.go.dev/vuln/GO-2026-4918 
│                        │      │                  ├ [23]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2026/cve-2026-33814.json 
│                        │      │                  ├ [24]: https://ubuntu.com/security/notices/USN-8430-1 
│                        │      │                  ├ [25]: https://ubuntu.com/security/notices/USN-8471-1 
│                        │      │                  ├ [26]: https://ubuntu.com/security/notices/USN-8472-1 
│                        │      │                  ├ [27]: https://ubuntu.com/security/notices/USN-8473-1 
│                        │      │                  ╰ [28]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
│                        │      ╰ LastModifiedDate: 2026-07-24T13:18:01.21Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-39821 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5026 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:dd25d56f0615d374a2602d8a73e8fb4308c70a47d70eea877e38
│                        │      │                   b86137e31ab6 
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
│                        │      ├ CweIDs           ─ [0]: CWE-1289 
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
│                        │      ├ References       ╭ [0]  : https://access.redhat.com/errata/RHSA-2026:23262 
│                        │      │                  ├ [1]  : https://access.redhat.com/errata/RHSA-2026:23264 
│                        │      │                  ├ [2]  : https://access.redhat.com/errata/RHSA-2026:26546 
│                        │      │                  ├ [3]  : https://access.redhat.com/errata/RHSA-2026:26547 
│                        │      │                  ├ [4]  : https://access.redhat.com/errata/RHSA-2026:30650 
│                        │      │                  ├ [5]  : https://access.redhat.com/errata/RHSA-2026:30651 
│                        │      │                  ├ [6]  : https://access.redhat.com/errata/RHSA-2026:30853 
│                        │      │                  ├ [7]  : https://access.redhat.com/errata/RHSA-2026:30854 
│                        │      │                  ├ [8]  : https://access.redhat.com/errata/RHSA-2026:30855 
│                        │      │                  ├ [9]  : https://access.redhat.com/errata/RHSA-2026:33155 
│                        │      │                  ├ [10] : https://access.redhat.com/errata/RHSA-2026:33160 
│                        │      │                  ├ [11] : https://access.redhat.com/errata/RHSA-2026:33163 
│                        │      │                  ├ [12] : https://access.redhat.com/errata/RHSA-2026:33173 
│                        │      │                  ├ [13] : https://access.redhat.com/errata/RHSA-2026:33183 
│                        │      │                  ├ [14] : https://access.redhat.com/errata/RHSA-2026:33524 
│                        │      │                  ├ [15] : https://access.redhat.com/errata/RHSA-2026:33531 
│                        │      │                  ├ [16] : https://access.redhat.com/errata/RHSA-2026:34342 
│                        │      │                  ├ [17] : https://access.redhat.com/errata/RHSA-2026:34357 
│                        │      │                  ├ [18] : https://access.redhat.com/errata/RHSA-2026:34359 
│                        │      │                  ├ [19] : https://access.redhat.com/errata/RHSA-2026:34364 
│                        │      │                  ├ [20] : https://access.redhat.com/errata/RHSA-2026:34789 
│                        │      │                  ├ [21] : https://access.redhat.com/errata/RHSA-2026:35826 
│                        │      │                  ├ [22] : https://access.redhat.com/errata/RHSA-2026:35827 
│                        │      │                  ├ [23] : https://access.redhat.com/errata/RHSA-2026:35828 
│                        │      │                  ├ [24] : https://access.redhat.com/errata/RHSA-2026:35829 
│                        │      │                  ├ [25] : https://access.redhat.com/errata/RHSA-2026:35830 
│                        │      │                  ├ [26] : https://access.redhat.com/errata/RHSA-2026:35831 
│                        │      │                  ├ [27] : https://access.redhat.com/errata/RHSA-2026:35993 
│                        │      │                  ├ [28] : https://access.redhat.com/errata/RHSA-2026:35994 
│                        │      │                  ├ [29] : https://access.redhat.com/errata/RHSA-2026:36105 
│                        │      │                  ├ [30] : https://access.redhat.com/errata/RHSA-2026:36167 
│                        │      │                  ├ [31] : https://access.redhat.com/errata/RHSA-2026:36207 
│                        │      │                  ├ [32] : https://access.redhat.com/errata/RHSA-2026:36648 
│                        │      │                  ├ [33] : https://access.redhat.com/errata/RHSA-2026:36651 
│                        │      │                  ├ [34] : https://access.redhat.com/errata/RHSA-2026:36796 
│                        │      │                  ├ [35] : https://access.redhat.com/errata/RHSA-2026:36797 
│                        │      │                  ├ [36] : https://access.redhat.com/errata/RHSA-2026:36808 
│                        │      │                  ├ [37] : https://access.redhat.com/errata/RHSA-2026:36820 
│                        │      │                  ├ [38] : https://access.redhat.com/errata/RHSA-2026:36883 
│                        │      │                  ├ [39] : https://access.redhat.com/errata/RHSA-2026:37387 
│                        │      │                  ├ [40] : https://access.redhat.com/errata/RHSA-2026:37435 
│                        │      │                  ├ [41] : https://access.redhat.com/errata/RHSA-2026:37436 
│                        │      │                  ├ [42] : https://access.redhat.com/errata/RHSA-2026:38995 
│                        │      │                  ├ [43] : https://access.redhat.com/errata/RHSA-2026:39005 
│                        │      │                  ├ [44] : https://access.redhat.com/errata/RHSA-2026:39573 
│                        │      │                  ├ [45] : https://access.redhat.com/errata/RHSA-2026:39879 
│                        │      │                  ├ [46] : https://access.redhat.com/errata/RHSA-2026:40118 
│                        │      │                  ├ [47] : https://access.redhat.com/errata/RHSA-2026:40262 
│                        │      │                  ├ [48] : https://access.redhat.com/errata/RHSA-2026:40945 
│                        │      │                  ├ [49] : https://access.redhat.com/errata/RHSA-2026:41019 
│                        │      │                  ├ [50] : https://access.redhat.com/errata/RHSA-2026:41030 
│                        │      │                  ├ [51] : https://access.redhat.com/errata/RHSA-2026:41031 
│                        │      │                  ├ [52] : https://access.redhat.com/errata/RHSA-2026:41036 
│                        │      │                  ├ [53] : https://access.redhat.com/errata/RHSA-2026:41055 
│                        │      │                  ├ [54] : https://access.redhat.com/errata/RHSA-2026:41066 
│                        │      │                  ├ [55] : https://access.redhat.com/errata/RHSA-2026:41928 
│                        │      │                  ├ [56] : https://access.redhat.com/errata/RHSA-2026:41930 
│                        │      │                  ├ [57] : https://access.redhat.com/errata/RHSA-2026:42043 
│                        │      │                  ├ [58] : https://access.redhat.com/errata/RHSA-2026:42047 
│                        │      │                  ├ [59] : https://access.redhat.com/errata/RHSA-2026:42048 
│                        │      │                  ├ [60] : https://access.redhat.com/errata/RHSA-2026:42049 
│                        │      │                  ├ [61] : https://access.redhat.com/errata/RHSA-2026:42050 
│                        │      │                  ├ [62] : https://access.redhat.com/errata/RHSA-2026:42051 
│                        │      │                  ├ [63] : https://access.redhat.com/errata/RHSA-2026:42078 
│                        │      │                  ├ [64] : https://access.redhat.com/errata/RHSA-2026:42079 
│                        │      │                  ├ [65] : https://access.redhat.com/errata/RHSA-2026:42080 
│                        │      │                  ├ [66] : https://access.redhat.com/errata/RHSA-2026:42082 
│                        │      │                  ├ [67] : https://access.redhat.com/errata/RHSA-2026:42132 
│                        │      │                  ├ [68] : https://access.redhat.com/errata/RHSA-2026:42142 
│                        │      │                  ├ [69] : https://access.redhat.com/errata/RHSA-2026:42146 
│                        │      │                  ├ [70] : https://access.redhat.com/errata/RHSA-2026:42150 
│                        │      │                  ├ [71] : https://access.redhat.com/errata/RHSA-2026:42151 
│                        │      │                  ├ [72] : https://access.redhat.com/errata/RHSA-2026:42240 
│                        │      │                  ├ [73] : https://access.redhat.com/errata/RHSA-2026:42644 
│                        │      │                  ├ [74] : https://access.redhat.com/errata/RHSA-2026:42796 
│                        │      │                  ├ [75] : https://access.redhat.com/errata/RHSA-2026:42852 
│                        │      │                  ├ [76] : https://access.redhat.com/errata/RHSA-2026:43038 
│                        │      │                  ├ [77] : https://access.redhat.com/errata/RHSA-2026:43052 
│                        │      │                  ├ [78] : https://access.redhat.com/errata/RHSA-2026:43692 
│                        │      │                  ├ [79] : https://access.redhat.com/errata/RHSA-2026:44622 
│                        │      │                  ├ [80] : https://access.redhat.com/errata/RHSA-2026:44624 
│                        │      │                  ├ [81] : https://access.redhat.com/errata/RHSA-2026:46395 
│                        │      │                  ├ [82] : https://access.redhat.com/errata/RHSA-2026:47149 
│                        │      │                  ├ [83] : https://access.redhat.com/errata/RHSA-2026:47735 
│                        │      │                  ├ [84] : https://access.redhat.com/errata/RHSA-2026:47737 
│                        │      │                  ├ [85] : https://access.redhat.com/errata/RHSA-2026:47952 
│                        │      │                  ├ [86] : https://access.redhat.com/security/cve/CVE-2026-39821 
│                        │      │                  ├ [87] : https://bugzilla.redhat.com/2480756 
│                        │      │                  ├ [88] : https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
│                        │      │                  ├ [89] : https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
│                        │      │                  ├ [90] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │      │                  │        2026-39821 
│                        │      │                  ├ [91] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │      │                  │        2026-39822 
│                        │      │                  ├ [92] : https://errata.almalinux.org/9/ALSA-2026-37435.html 
│                        │      │                  ├ [93] : https://errata.rockylinux.org/RLSA-2026:37435 
│                        │      │                  ├ [94] : https://github.com/golang/go/issues/78760 
│                        │      │                  ├ [95] : https://go.dev/cl/767220 
│                        │      │                  ├ [96] : https://go.dev/issue/78760 
│                        │      │                  ├ [97] : https://groups.google.com/g/golang-announce/c/iI-mY
│                        │      │                  │        SI0lu8 
│                        │      │                  ├ [98] : https://linux.oracle.com/cve/CVE-2026-39821.html 
│                        │      │                  ├ [99] : https://linux.oracle.com/errata/ELSA-2026-46395.html 
│                        │      │                  ├ [100]: https://nvd.nist.gov/vuln/detail/CVE-2026-39821 
│                        │      │                  ├ [101]: https://pkg.go.dev/vuln/GO-2026-5026 
│                        │      │                  ├ [102]: https://security.access.redhat.com/data/csaf/v2/vex
│                        │      │                  │        /2026/cve-2026-39821.json 
│                        │      │                  ├ [103]: https://ubuntu.com/security/notices/USN-8416-1 
│                        │      │                  ╰ [104]: https://www.cve.org/CVERecord?id=CVE-2026-39821 
│                        │      ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
│                        │      ╰ LastModifiedDate: 2026-07-31T13:18:09.37Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2025-47911 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4440 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.45.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47911 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:6b980e8906e561cca3c98a43c089e33b18ffdbed1c07248cc684
│                        │      │                   a13dfad7f04c 
│                        │      ├ Title           : golang.org/x/net/html: Quadratic parsing complexity in
│                        │      │                   golang.org/x/net/html 
│                        │      ├ Description     : The html.Parse function in golang.org/x/net/html has
│                        │      │                   quadratic parsing complexity when processing certain
│                        │      │                   inputs, which can lead to denial of service (DoS) if an
│                        │      │                   attacker provides specially crafted HTML content. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ╭ amazon     : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ nvd        : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           N/A:L 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-47911 
│                        │      │                  ├ [1] : https://github.com/golang/go/issues/75682 
│                        │      │                  ├ [2] : https://github.com/golang/vulndb/issues/4440 
│                        │      │                  ├ [3] : https://go.dev/cl/709876 
│                        │      │                  ├ [4] : https://groups.google.com/g/golang-announce/c/jnQcOY
│                        │      │                  │       piR2c 
│                        │      │                  ├ [5] : https://nvd.nist.gov/vuln/detail/CVE-2025-47911 
│                        │      │                  ├ [6] : https://pkg.go.dev/vuln/GO-2026-4440 
│                        │      │                  ├ [7] : https://ubuntu.com/security/notices/USN-8089-1 
│                        │      │                  ├ [8] : https://ubuntu.com/security/notices/USN-8089-2 
│                        │      │                  ├ [9] : https://ubuntu.com/security/notices/USN-8089-3 
│                        │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-47911 
│                        │      ├ PublishedDate   : 2026-02-05T18:16:09.893Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T09:28:50.07Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2025-58190 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4441 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.45.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58190 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:bf37743ea570802738531909141c5d9df7b1f9281f34b2f76baf
│                        │      │                   6d8e04dcebb6 
│                        │      ├ Title           : golang.org/x/net/html: Infinite parsing loop in
│                        │      │                   golang.org/x/net 
│                        │      ├ Description     : The html.Parse function in golang.org/x/net/html has an
│                        │      │                   infinite parsing loop when processing certain inputs, which
│                        │      │                    can lead to denial of service (DoS) if an attacker
│                        │      │                   provides specially crafted HTML content. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-835 
│                        │      ├ VendorSeverity   ╭ amazon     : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ nvd        : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           N/A:L 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 4.3 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-58190 
│                        │      │                  ├ [1] : https://github.com/golang/go/issues/70179 
│                        │      │                  ├ [2] : https://github.com/golang/vulndb/issues/4441 
│                        │      │                  ├ [3] : https://go.dev/cl/709875 
│                        │      │                  ├ [4] : https://groups.google.com/g/golang-announce/c/jnQcOY
│                        │      │                  │       piR2c 
│                        │      │                  ├ [5] : https://nvd.nist.gov/vuln/detail/CVE-2025-58190 
│                        │      │                  ├ [6] : https://pkg.go.dev/vuln/GO-2026-4441 
│                        │      │                  ├ [7] : https://ubuntu.com/security/notices/USN-8089-1 
│                        │      │                  ├ [8] : https://ubuntu.com/security/notices/USN-8089-2 
│                        │      │                  ├ [9] : https://ubuntu.com/security/notices/USN-8089-3 
│                        │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-58190 
│                        │      ├ PublishedDate   : 2026-02-05T18:16:10.027Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T09:44:02.557Z 
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-25680 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5028 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25680 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:990118997fa814098f3b1499ef6ee53efe7c3d398affd3cb0d0d
│                        │      │                   93a9fd130d90 
│                        │      ├ Title           : golang.org/x/net/html: golang.org/x/net/html: Denial of
│                        │      │                   Service due to excessive HTML parsing 
│                        │      ├ Description     : Parsing arbitrary HTML can consume excessive CPU time,
│                        │      │                   possibly leading to denial of service. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-400 
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 2 
│                        │      │                  ╰ redhat: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-25680 
│                        │      │                  ├ [1]: https://go.dev/cl/781702 
│                        │      │                  ├ [2]: https://go.dev/issue/79573 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/iI-mYSI
│                        │      │                  │      0lu8 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-25680 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5028 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-25680 
│                        │      ├ PublishedDate   : 2026-05-22T16:16:19.753Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-42502 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5027 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42502 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4624cb4c54f9f3460807c3a325cf4bf0e557643eececb726e5c9
│                        │      │                   8a57be7e0a3e 
│                        │      ├ Title           : golang.org/x/net/html: golang: golang.org/x/net/html:
│                        │      │                   Cross-Site Scripting via unexpected HTML tree rendering 
│                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
│                        │      │                   can result in an unexpected HTML tree. This can be
│                        │      │                   leveraged to execute XSS attacks in applications that
│                        │      │                   attempt to sanitize input HTML before rendering. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-1021 
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 2 
│                        │      │                  ╰ redhat: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 6.1 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42502 
│                        │      │                  ├ [1]: https://go.dev/cl/781701 
│                        │      │                  ├ [2]: https://go.dev/issue/79572 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/iI-mYSI
│                        │      │                  │      0lu8 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42502 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5027 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42502 
│                        │      ├ PublishedDate   : 2026-05-22T16:16:20.587Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-42506 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5025 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42506 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:2bb85efaf002336c599e0d7c71ccc87a6480d8769e15e2dfcc79
│                        │      │                   38f37548e142 
│                        │      ├ Title           : golang.org/x/net/html: golang.org/x/net/html: Cross-Site
│                        │      │                   Scripting (XSS) via arbitrary HTML parsing 
│                        │      ├ Description     : Parsing arbitrary HTML which is then rendered using Render
│                        │      │                   can result in an unexpected HTML tree. This can be
│                        │      │                   leveraged to execute XSS attacks in applications that
│                        │      │                   attempt to sanitize input HTML before rendering. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-79 
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 2 
│                        │      │                  ╰ redhat: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 5.4 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42506 
│                        │      │                  ├ [1]: https://go.dev/cl/781700 
│                        │      │                  ├ [2]: https://go.dev/issue/79571 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/iI-mYSI
│                        │      │                  │      0lu8 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42506 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5025 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42506 
│                        │      ├ PublishedDate   : 2026-05-22T16:16:20.803Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-46600 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5942 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:affff9951ee5c32e2906ddbedefc6e6455f2fe2ebba0f1499113
│                        │      │                   d4065810124a 
│                        │      ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a param ... 
│                        │      ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a parameter value overflows the message buffer. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ├ CweIDs           ─ [0]: CWE-125 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/786345 
│                        │      │                  ├ [1]: https://go.dev/issue/79795 
│                        │      │                  ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        │      ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-39824 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5024 
│                        │      ├ PkgID           : golang.org/x/sys@v0.33.0 
│                        │      ├ PkgName         : golang.org/x/sys 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/sys@v0.33.0 
│                        │      │                  ╰ UID : a350d4cc028089d4 
│                        │      ├ InstalledVersion: v0.33.0 
│                        │      ├ FixedVersion    : 0.44.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39824 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:49816ecabe596083eee69025c57bd5870f1ef0a29ae479f84df6
│                        │      │                   e8b3b6d61d4e 
│                        │      ├ Title           : Invoking integer overflow in NewNTUnicodeString in
│                        │      │                   golang.org/x/sys/windows 
│                        │      ├ Description     : NewNTUnicodeString does not check for string length
│                        │      │                   overflow. When provided with a string that overflows the
│                        │      │                   maximum size of a NTUnicodeString (a 16-bit number of
│                        │      │                   bytes), it returns a truncated string rather than an
│                        │      │                   error. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ├ CweIDs           ─ [0]: CWE-190 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/770080 
│                        │      │                  ├ [1]: https://go.dev/issue/78916 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/6MMI8Lj
│                        │      │                  │      -Atg 
│                        │      │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-5024 
│                        │      ├ PublishedDate   : 2026-05-22T20:16:33.057Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T16:10:00.137Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-39822 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │      ├ PkgID           : stdlib@v1.26.4 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                        │      │                  ╰ UID : 364846ec8fe81bdc 
│                        │      ├ InstalledVersion: v1.26.4 
│                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:a9b859f8c0515434d829a46ade581ac3cf4eeaa60b16626fc2eb
│                        │      │                   b57287d32ebc 
│                        │      ├ Title           : os: golang: Go os.Root: Symlink following vulnerability
│                        │      │                   allows directory traversal 
│                        │      ├ Description     : On Unix systems, opening a file in an os.Root improperly
│                        │      │                   follows symlinks to locations outside of the Root when the
│                        │      │                   final path component of the a path is a symbolic link and
│                        │      │                   the path ends in /. For example, 'root.Open("symlink/")'
│                        │      │                   will open "symlink" even when "symlink" is a symbolic link
│                        │      │                   pointing outside of the root. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-61 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I
│                        │      │                  │         │           :H/A:H 
│                        │      │                  │         ╰ V3Score : 7.8 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I
│                        │      │                            │           :H/A:H 
│                        │      │                            ╰ V3Score : 7.8 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:38878 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-39822 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2498152 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39822 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2026-38878.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:38878 
│                        │      │                  ├ [7] : https://go.dev/cl/797880 
│                        │      │                  ├ [8] : https://go.dev/issue/79005 
│                        │      │                  ├ [9] : https://groups.google.com/g/golang-announce/c/OrmQE_
│                        │      │                  │       Yp5Sc 
│                        │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2026-39822.html 
│                        │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2026-38995.html 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-39822 
│                        │      │                  ├ [13]: https://pkg.go.dev/vuln/GO-2026-4970 
│                        │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2026-39822 
│                        │      ├ PublishedDate   : 2026-07-08T17:17:21.31Z 
│                        │      ╰ LastModifiedDate: 2026-07-13T14:54:26.317Z 
│                        ╰ [12] ╭ VulnerabilityID : CVE-2026-42505 
│                               ├ VendorIDs        ─ [0]: GO-2026-5856 
│                               ├ PkgID           : stdlib@v1.26.4 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                               │                  ╰ UID : 364846ec8fe81bdc 
│                               ├ InstalledVersion: v1.26.4 
│                               ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                               │                  │         bdd1c189cada2bb321f30 
│                               │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                               │                            23b065de6f809d70d81ad 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:5d77019abb1dda80c224800eff24cf8ce567368516fa74c388fa
│                               │                   1b030fdb19bd 
│                               ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure
│                               │                   in Encrypted Client Hello 
│                               ├ Description     : Handshakes which used Encrypted Client Hello could be
│                               │                   de-anonymized by a passive network observer due to a
│                               │                   disclosure of pre-shared key identities in the unencrypted
│                               │                   client hello. 
│                               ├ Severity        : MEDIUM 
│                               ├ CweIDs           ─ [0]: CWE-201 
│                               ├ VendorSeverity   ╭ amazon : 2 
│                               │                  ├ bitnami: 2 
│                               │                  ╰ redhat : 2 
│                               ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                               │                  │         │           :N/A:N 
│                               │                  │         ╰ V3Score : 5.3 
│                               │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                               │                            │           :N/A:N 
│                               │                            ╰ V3Score : 5.3 
│                               ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42505 
│                               │                  ├ [1]: https://go.dev/cl/775960 
│                               │                  ├ [2]: https://go.dev/issue/79282 
│                               │                  ├ [3]: https://groups.google.com/g/golang-announce/c/OrmQE_Y
│                               │                  │      p5Sc 
│                               │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42505 
│                               │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5856 
│                               │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42505 
│                               ├ PublishedDate   : 2026-07-08T17:17:21.497Z 
│                               ╰ LastModifiedDate: 2026-07-13T17:05:36.303Z 
├ [9]  ╭ Target         : usr/bin/rootlesskit 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : GO-2026-5932 
│                        │     ├ PkgID           : golang.org/x/crypto@v0.52.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.52.0 
│                        │     │                  ╰ UID : c6746a665642ce00 
│                        │     ├ InstalledVersion: v0.52.0 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:855479368a6560e422afadd7f0f155784754b258850f13f6bbbac
│                        │     │                   d2ba91d6818 
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
│                        │     ╰ References       ╭ [0]: https://go.dev/issue/44226 
│                        │                        ╰ [1]: https://pkg.go.dev/vuln/GO-2026-5932 
│                        ╰ [1] ╭ VulnerabilityID : CVE-2026-46600 
│                              ├ VendorIDs        ─ [0]: GO-2026-5942 
│                              ├ PkgID           : golang.org/x/net@v0.55.0 
│                              ├ PkgName         : golang.org/x/net 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.55.0 
│                              │                  ╰ UID : 3630442c893130bf 
│                              ├ InstalledVersion: v0.55.0 
│                              ├ FixedVersion    : 0.56.0 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                              │                  │         dd1c189cada2bb321f30 
│                              │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                              │                            3b065de6f809d70d81ad 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:3969c20cbe0c54f2939258b9b180a2268fa34936351461bcaca42
│                              │                   0642e1eba5e 
│                              ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                              │                   of a param ... 
│                              ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                              │                   of a parameter value overflows the message buffer. 
│                              ├ Severity        : UNKNOWN 
│                              ├ CweIDs           ─ [0]: CWE-125 
│                              ├ References       ╭ [0]: https://go.dev/cl/786345 
│                              │                  ├ [1]: https://go.dev/issue/79795 
│                              │                  ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
│                              ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
│                              ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
├ [10] ╭ Target         : usr/libexec/docker/cli-plugins/docker-buildx 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-34040 
│                        │     ├ VendorIDs        ─ [0]: GHSA-x744-4wpc-v9h2 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:64cd90a3b80e53e837a1e68eaa72087b0ba6cd8b99107b48533a5
│                        │     │                   a775076e08d 
│                        │     ├ Title           : Moby: Moby: Authorization bypass vulnerability 
│                        │     ├ Description     : Moby is an open source container framework. Prior to version
│                        │     │                    29.3.1, a security vulnerability has been detected that
│                        │     │                   allows attackers to bypass authorization plugins (AuthZ).
│                        │     │                   This issue has been patched in version 29.3.1. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-288 
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ ghsa  : 3 
│                        │     │                  ├ nvd   : 3 
│                        │     │                  ├ photon: 3 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 8.8 
│                        │     │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 7.8 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 8.4 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-34040 
│                        │     │                  ├ [1]: https://docs.docker.com/engine/extend/plugins_authoriz
│                        │     │                  │      ation 
│                        │     │                  ├ [2]: https://github.com/moby/moby 
│                        │     │                  ├ [3]: https://github.com/moby/moby/commit/e89edb19ad7de0407a
│                        │     │                  │      5d31e3111cb01aa10b5a38 
│                        │     │                  ├ [4]: https://github.com/moby/moby/releases/tag/docker-v29.3.1 
│                        │     │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      v23v-6jw2-98fq 
│                        │     │                  ├ [6]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      x744-4wpc-v9h2 
│                        │     │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-34040 
│                        │     │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-34040 
│                        │     ├ PublishedDate   : 2026-03-31T03:15:57.883Z 
│                        │     ╰ LastModifiedDate: 2026-06-17T10:38:28.383Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-41567 
│                        │     ├ VendorIDs        ─ [0]: GHSA-x86f-5xw2-fm2r 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:b443b110be9b896779e4e5d951813a9c67cfa79933c0db7974328
│                        │     │                   d620aa6a7bb 
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
│                        │     ├ CweIDs           ─ [0]: CWE-427 
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
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37387 
│                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:41030 
│                        │     │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:42852 
│                        │     │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:44622 
│                        │     │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │     │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │     │                  ├ [6] : https://github.com/moby/moby 
│                        │     │                  ├ [7] : https://github.com/moby/moby/security/advisories/GHSA
│                        │     │                  │       -x86f-5xw2-fm2r 
│                        │     │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │     │                  ├ [9] : https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-41567.json 
│                        │     │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │     ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │     ╰ LastModifiedDate: 2026-07-30T12:18:32.233Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:dbb8d2c6e622d0249fd2fd51b0074fef65fe3e3e7405399046c8e
│                        │     │                   8b8e7e19f19 
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
│                        │     ├ CweIDs           ╭ [0]: CWE-61 
│                        │     │                  ╰ [1]: CWE-367 
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
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42306 
│                        │     │                  ├ [1]: https://github.com/moby/moby 
│                        │     │                  ├ [2]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      rg2x-37c3-w2rh 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
│                        │     │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-42306 
│                        │     ├ PublishedDate   : 2026-06-12T19:16:27.49Z 
│                        │     ╰ LastModifiedDate: 2026-06-17T10:47:39.96Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-33997 
│                        │     ├ VendorIDs        ─ [0]: GHSA-pxq6-2prw-chj9 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:3ab200928eba737706ca62e52b8baf4865a1f8cdd62bebe636eb5
│                        │     │                   a024219dab5 
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
│                        │     ├ CweIDs           ╭ [0]: CWE-193 
│                        │     │                  ╰ [1]: CWE-266 
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
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:21769 
│                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:22347 
│                        │     │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:23345 
│                        │     │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-33997 
│                        │     │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2453277 
│                        │     │                  ├ [5] : https://docs.docker.com/engine/extend/legacy_plugins 
│                        │     │                  ├ [6] : https://github.com/moby/moby 
│                        │     │                  ├ [7] : https://github.com/moby/moby/commit/f4d6f25bf0c3fa12d
│                        │     │                  │       4968320a45685947756a22a 
│                        │     │                  ├ [8] : https://github.com/moby/moby/releases/tag/docker-v29.
│                        │     │                  │       3.1 
│                        │     │                  ├ [9] : https://github.com/moby/moby/security/advisories/GHSA
│                        │     │                  │       -pxq6-2prw-chj9 
│                        │     │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-33997 
│                        │     │                  ├ [11]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-33997.json 
│                        │     │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2026-33997 
│                        │     ├ PublishedDate   : 2026-03-31T03:15:57.523Z 
│                        │     ╰ LastModifiedDate: 2026-07-27T13:17:41.643Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-41568 
│                        │     ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:723a848fec5cf1ecb644e662a6f94e78d549883ebd5298579d195
│                        │     │                   b7cec8cbac9 
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
│                        │     ├ CweIDs           ╭ [0]: CWE-81 
│                        │     │                  ╰ [1]: CWE-367 
│                        │     ├ VendorSeverity   ╭ ghsa  : 2 
│                        │     │                  ╰ redhat: 1 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 6 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 3.9 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41568 
│                        │     │                  ├ [1]: https://github.com/moby/moby 
│                        │     │                  ├ [2]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      vp62-88p7-qqf5 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41568 
│                        │     │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41568 
│                        │     ├ PublishedDate   : 2026-06-12T19:16:26.907Z 
│                        │     ╰ LastModifiedDate: 2026-06-17T10:46:51.787Z 
│                        ╰ [5] ╭ VulnerabilityID : GO-2026-5932 
│                              ├ PkgID           : golang.org/x/crypto@v0.54.0 
│                              ├ PkgName         : golang.org/x/crypto 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.54.0 
│                              │                  ╰ UID : 6ae414bf7ecce379 
│                              ├ InstalledVersion: v0.54.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                              │                  │         dd1c189cada2bb321f30 
│                              │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                              │                            3b065de6f809d70d81ad 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:1825b41fc1118e393a667df177d6bb6922285780e87eafaa18c99
│                              │                   9106f6ead1b 
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
│                              ╰ References       ╭ [0]: https://go.dev/issue/44226 
│                                                 ╰ [1]: https://pkg.go.dev/vuln/GO-2026-5932 
├ [11] ╭ Target         : usr/libexec/docker/cli-plugins/docker-compose 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-34040 
│                        │     ├ VendorIDs        ─ [0]: GHSA-x744-4wpc-v9h2 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:79201b79ad17a712f5d8facb7f8fc8896798ceedae2aa43febec3
│                        │     │                   d9a3f18fb8c 
│                        │     ├ Title           : Moby: Moby: Authorization bypass vulnerability 
│                        │     ├ Description     : Moby is an open source container framework. Prior to version
│                        │     │                    29.3.1, a security vulnerability has been detected that
│                        │     │                   allows attackers to bypass authorization plugins (AuthZ).
│                        │     │                   This issue has been patched in version 29.3.1. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-288 
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ ghsa  : 3 
│                        │     │                  ├ nvd   : 3 
│                        │     │                  ├ photon: 3 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 8.8 
│                        │     │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 7.8 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 8.4 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-34040 
│                        │     │                  ├ [1]: https://docs.docker.com/engine/extend/plugins_authoriz
│                        │     │                  │      ation 
│                        │     │                  ├ [2]: https://github.com/moby/moby 
│                        │     │                  ├ [3]: https://github.com/moby/moby/commit/e89edb19ad7de0407a
│                        │     │                  │      5d31e3111cb01aa10b5a38 
│                        │     │                  ├ [4]: https://github.com/moby/moby/releases/tag/docker-v29.3.1 
│                        │     │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      v23v-6jw2-98fq 
│                        │     │                  ├ [6]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      x744-4wpc-v9h2 
│                        │     │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-34040 
│                        │     │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-34040 
│                        │     ├ PublishedDate   : 2026-03-31T03:15:57.883Z 
│                        │     ╰ LastModifiedDate: 2026-06-17T10:38:28.383Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-41567 
│                        │     ├ VendorIDs        ─ [0]: GHSA-x86f-5xw2-fm2r 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:18da96e94e7e8a551610c88cabebfe1ff6df4cdede7857677fb9f
│                        │     │                   b3cb617ae4c 
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
│                        │     ├ CweIDs           ─ [0]: CWE-427 
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
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37387 
│                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:41030 
│                        │     │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:42852 
│                        │     │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:44622 
│                        │     │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │     │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │     │                  ├ [6] : https://github.com/moby/moby 
│                        │     │                  ├ [7] : https://github.com/moby/moby/security/advisories/GHSA
│                        │     │                  │       -x86f-5xw2-fm2r 
│                        │     │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │     │                  ├ [9] : https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-41567.json 
│                        │     │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │     ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │     ╰ LastModifiedDate: 2026-07-30T12:18:32.233Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:290775835e5059233b2a4e6bb1f11b2a0eb81f1533355963b0b5e
│                        │     │                   8243c2571fe 
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
│                        │     ├ CweIDs           ╭ [0]: CWE-61 
│                        │     │                  ╰ [1]: CWE-367 
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
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42306 
│                        │     │                  ├ [1]: https://github.com/moby/moby 
│                        │     │                  ├ [2]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      rg2x-37c3-w2rh 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
│                        │     │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-42306 
│                        │     ├ PublishedDate   : 2026-06-12T19:16:27.49Z 
│                        │     ╰ LastModifiedDate: 2026-06-17T10:47:39.96Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-33997 
│                        │     ├ VendorIDs        ─ [0]: GHSA-pxq6-2prw-chj9 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:0aa65d8e052634347fe94a7071ae0fdf8132166bbd1eedf014ca4
│                        │     │                   70e02e47683 
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
│                        │     ├ CweIDs           ╭ [0]: CWE-193 
│                        │     │                  ╰ [1]: CWE-266 
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
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:21769 
│                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:22347 
│                        │     │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:23345 
│                        │     │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-33997 
│                        │     │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2453277 
│                        │     │                  ├ [5] : https://docs.docker.com/engine/extend/legacy_plugins 
│                        │     │                  ├ [6] : https://github.com/moby/moby 
│                        │     │                  ├ [7] : https://github.com/moby/moby/commit/f4d6f25bf0c3fa12d
│                        │     │                  │       4968320a45685947756a22a 
│                        │     │                  ├ [8] : https://github.com/moby/moby/releases/tag/docker-v29.
│                        │     │                  │       3.1 
│                        │     │                  ├ [9] : https://github.com/moby/moby/security/advisories/GHSA
│                        │     │                  │       -pxq6-2prw-chj9 
│                        │     │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-33997 
│                        │     │                  ├ [11]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-33997.json 
│                        │     │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2026-33997 
│                        │     ├ PublishedDate   : 2026-03-31T03:15:57.523Z 
│                        │     ╰ LastModifiedDate: 2026-07-27T13:17:41.643Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-41568 
│                        │     ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:1546bbf027bb7c0b100c023085b0fbf7d9d0381879dbef8addd56
│                        │     │                   7dbca02a728 
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
│                        │     ├ CweIDs           ╭ [0]: CWE-81 
│                        │     │                  ╰ [1]: CWE-367 
│                        │     ├ VendorSeverity   ╭ ghsa  : 2 
│                        │     │                  ╰ redhat: 1 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 6 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L
│                        │     │                           │           /A:L 
│                        │     │                           ╰ V3Score : 3.9 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41568 
│                        │     │                  ├ [1]: https://github.com/moby/moby 
│                        │     │                  ├ [2]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      vp62-88p7-qqf5 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41568 
│                        │     │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41568 
│                        │     ├ PublishedDate   : 2026-06-12T19:16:26.907Z 
│                        │     ╰ LastModifiedDate: 2026-06-17T10:46:51.787Z 
│                        ├ [5] ╭ VulnerabilityID : GO-2026-5932 
│                        │     ├ PkgID           : golang.org/x/crypto@v0.53.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.53.0 
│                        │     │                  ╰ UID : c92e7dddc961c55 
│                        │     ├ InstalledVersion: v0.53.0 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:4ee6b5c06d865dafb11efe3e9d0f1c04adacc6627780381b20bfc
│                        │     │                   2b48369921a 
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
│                        │     ╰ References       ╭ [0]: https://go.dev/issue/44226 
│                        │                        ╰ [1]: https://pkg.go.dev/vuln/GO-2026-5932 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-56852 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5970 
│                        │     ├ PkgID           : golang.org/x/text@v0.38.0 
│                        │     ├ PkgName         : golang.org/x/text 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.38.0 
│                        │     │                  ╰ UID : af4dc136c0abb000 
│                        │     ├ InstalledVersion: v0.38.0 
│                        │     ├ FixedVersion    : 0.39.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:c096235b40c092113ca34aed54d34e3a4fcfc097900ed42cb73ce
│                        │     │                   db104db124a 
│                        │     ├ Title           : A norm.Iter can enter an infinite loop when handling input
│                        │     │                   containing  ... 
│                        │     ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │     │                   containing invalid UTF-8 bytes. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-835 
│                        │     ├ VendorSeverity   ─ azure: 3 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/794100 
│                        │     │                  ├ [1]: https://go.dev/issue/80142 
│                        │     │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56852 
│                        │     │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-5970 
│                        │     ├ PublishedDate   : 2026-07-21T20:17:02.867Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [7] ╭ VulnerabilityID : GHSA-hrxh-6v49-42gf 
│                        │     ├ PkgID           : google.golang.org/grpc@v1.81.1 
│                        │     ├ PkgName         : google.golang.org/grpc 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.81.1 
│                        │     │                  ╰ UID : 9a383e7fa32dddfe 
│                        │     ├ InstalledVersion: v1.81.1 
│                        │     ├ FixedVersion    : 1.82.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:c81d76795fb5103c34891a8f07aef9afb67ed459e370c21c55982
│                        │     │                   0d3d6645f42 
│                        │     ├ Title           : gRPC-Go: xDS RBAC and HTTP/2 Vulnerabilities 
│                        │     ├ Description     : Multiple security vulnerabilities have been identified and
│                        │     │                   addressed in grpc-go affecting the xDS RBAC authorization
│                        │     │                   engine (internal/xds/rbac) and the HTTP/2 transport server
│                        │     │                   implementation (internal/transport). These vulnerabilities
│                        │     │                   could result in:
│                        │     │                   
│                        │     │                   - Authorization Bypass (Fail-Open) when translating xDS RBAC
│                        │     │                    policies containing `Metadata` or `RequestedServerName`
│                        │     │                   fields.
│                        │     │                   - Denial of Service (High CPU Consumption) due to an HTTP/2
│                        │     │                   Rapid Reset mitigation bypass during client-initiated stream
│                        │     │                    resets.
│                        │     │                   - Denial of Service (Server Panic) when parsing crafted xDS
│                        │     │                   RBAC policies containing `NOT` rules around unsupported
│                        │     │                   ### Impact
│                        │     │                   _What kind of vulnerability is it? Who is impacted?_
│                        │     │                   #### xDS RBAC Authorization Bypass via `Metadata` &
│                        │     │                   `RequestedServerName` matchers
│                        │     │                   - Affected Component: xDS RBAC 
│                        │     │                   - Impact: When building policy matchers for gRPC RBAC from
│                        │     │                   xDS configurations, unsupported `permission` and `principal`
│                        │     │                    rules (specifically `Metadata` and `RequestedServerName`)
│                        │     │                   were silently ignored and treated as no-ops.
│                        │     │                     - If an authorization policy relied purely on these
│                        │     │                   matchers for access control, treating those rules as no-ops
│                        │     │                   effectively removed the restrictions.
│                        │     │                   - If these unsupported rules were nested inside logical
│                        │     │                   `NOT` rules (`Permission_NotRule` / `Principal_NotId`) or
│                        │     │                   multi-condition `OR/AND` rules, silently dropping them
│                        │     │                   changed the boolean logic flow of the authorization engine.
│                        │     │                   As a result, policy evaluation decisions could fail open,
│                        │     │                   allowing unauthorized clients to access protected gRPC
│                        │     │                   services or resources.
│                        │     │                   #### HTTP/2 Rapid Reset Mitigation Bypass / Denial of
│                        │     │                   Service via Stream Aborts
│                        │     │                   - Affected Component: HTTP/2 transport
│                        │     │                   - Impact: Earlier mitigations in grpc-go for HTTP/2 Rapid
│                        │     │                   Reset only applied threshold checks to items that directly
│                        │     │                   resulted in control frames being written back to the wire,
│                        │     │                   such as `SETTINGS` ACKs or server-initiated `RST_STREAM`s.
│                        │     │                   When a client initiated a rapid flood of stream creation
│                        │     │                   (`HEADERS`) immediately followed by stream termination
│                        │     │                   `RST_STREAM`, items queued up in the control buffer without
│                        │     │                   counting against the transport response frame threshold. An
│                        │     │                   attacker can repeatedly trigger this flood sequence to
│                        │     │                   bypass reader blocking, resulting in high CPU usage, and
│                        │     │                   Denial of Service (DoS).
│                        │     │                   #### Denial of Service (Panic) in xDS RBAC Engine via
│                        │     │                   Unsupported Fields inside NOT Rules
│                        │     │                   - Impact: The xDS RBAC policy translators recursively
│                        │     │                   generate matchers for nested rules. When a `NOT` rule
│                        │     │                   wrapped an unsupported or unhandled field (such as
│                        │     │                   `SourcedMetadata`), the recursive step returned an empty
│                        │     │                   matcher. This could result in a runtime panic when the RBAC
│                        │     │                   engine attempts to authorize an incoming request.
│                        │     │                   An attacker or misconfigured/malicious xDS management server
│                        │     │                    delivering an LDS/RDS update containing a `NOT` rule around
│                        │     │                    an unhandled field causes the gRPC server process to crash
│                        │     │                   immediately (CWE-248 / Denial of Service).
│                        │     │                   ### Patches
│                        │     │                   _Has the problem been patched? What versions should users
│                        │     │                   upgrade to?_
│                        │     │                   All three issues have been fixed in `master` and will be
│                        │     │                   released in 1.82.1 shortly.
│                        │     │                   ### Workarounds
│                        │     │                   _Is there a way for users to fix or remediate the
│                        │     │                   vulnerability without upgrading?_
│                        │     │                   If upgrading grpc-go immediately is not possible, apply the
│                        │     │                   following workarounds based on your deployment
│                        │     │                   architecture:
│                        │     │                   * For xDS RBAC Vulnerabilities & Panics: Ensure that
│                        │     │                   upstream xDS management servers do not push RBAC policies
│                        │     │                   containing `Metadata`, `RequestedServerName`, or `NOT` rules
│                        │     │                    wrapping unsupported fields (such as `SourcedMetadata`) to
│                        │     │                   grpc-go servers.
│                        │     │                   * For HTTP/2 Rapid Reset DOS: Configure upstream reverse
│                        │     │                   proxies or load balancers (such as Envoy) with strict HTTP/2
│                        │     │                    `max_concurrent_streams` limits and active rate limiting on
│                        │     │                    `RST_STREAM` frequency per connection.
│                        │     │                   ### Severity
│                        │     │                     | Vulnerability | Qualitative Severity | Approximate CVSS
│                        │     │                   v3.1 Score | Primary Impact |
│                        │     │                     | :--- | :--- | :--- | :--- |
│                        │     │                     | **xDS RBAC Authorization Bypass** | **High** | `8.2` |
│                        │     │                   Unauthorized Access / Fail-Open |
│                        │     │                     | **HTTP/2 Rapid Reset DOS Bypass** | **High** | `7.5` |
│                        │     │                   High CPU Consumption / Denial of Service |
│                        │     │                     | **xDS RBAC Engine Server Panic** | **Medium** | `5.9` |
│                        │     │                   Process Crash / Denial of Service | 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ─ ghsa: 3 
│                        │     ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI
│                        │     │                         │            :H/VA:H/SC:N/SI:N/SA:N 
│                        │     │                         ╰ V40Score : 8.8 
│                        │     ├ References       ╭ [0]: https://github.com/grpc/grpc-go 
│                        │     │                  ├ [1]: https://github.com/grpc/grpc-go/commit/4ea465d4ab98013
│                        │     │                  │      f72a142fe0fc89c19770b2935 
│                        │     │                  ├ [2]: https://github.com/grpc/grpc-go/pull/9236 
│                        │     │                  ├ [3]: https://github.com/grpc/grpc-go/releases/tag/v1.82.1 
│                        │     │                  ╰ [4]: https://github.com/grpc/grpc-go/security/advisories/GH
│                        │     │                         SA-hrxh-6v49-42gf 
│                        │     ├ PublishedDate   : 2026-07-21T22:03:55Z 
│                        │     ╰ LastModifiedDate: 2026-07-21T22:03:56Z 
│                        ├ [8] ╭ VulnerabilityID : CVE-2026-39822 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │     ├ PkgID           : stdlib@v1.26.4 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                        │     │                  ╰ UID : 7ea3df536be71e1b 
│                        │     ├ InstalledVersion: v1.26.4 
│                        │     ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:ae7665ac69115934768e33e04250db90919c0482866623d2074f2
│                        │     │                   e5b0e8dafe9 
│                        │     ├ Title           : os: golang: Go os.Root: Symlink following vulnerability
│                        │     │                   allows directory traversal 
│                        │     ├ Description     : On Unix systems, opening a file in an os.Root improperly
│                        │     │                   follows symlinks to locations outside of the Root when the
│                        │     │                   final path component of the a path is a symbolic link and
│                        │     │                   the path ends in /. For example, 'root.Open("symlink/")'
│                        │     │                   will open "symlink" even when "symlink" is a symbolic link
│                        │     │                   pointing outside of the root. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-61 
│                        │     ├ VendorSeverity   ╭ alma       : 3 
│                        │     │                  ├ amazon     : 2 
│                        │     │                  ├ bitnami    : 3 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │     │                  │         │           H/A:H 
│                        │     │                  │         ╰ V3Score : 7.8 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │     │                            │           H/A:H 
│                        │     │                            ╰ V3Score : 7.8 
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:38878 
│                        │     │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-39822 
│                        │     │                  ├ [2] : https://bugzilla.redhat.com/2498152 
│                        │     │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
│                        │     │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39822 
│                        │     │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2026-38878.html 
│                        │     │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:38878 
│                        │     │                  ├ [7] : https://go.dev/cl/797880 
│                        │     │                  ├ [8] : https://go.dev/issue/79005 
│                        │     │                  ├ [9] : https://groups.google.com/g/golang-announce/c/OrmQE_Y
│                        │     │                  │       p5Sc 
│                        │     │                  ├ [10]: https://linux.oracle.com/cve/CVE-2026-39822.html 
│                        │     │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2026-38995.html 
│                        │     │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-39822 
│                        │     │                  ├ [13]: https://pkg.go.dev/vuln/GO-2026-4970 
│                        │     │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2026-39822 
│                        │     ├ PublishedDate   : 2026-07-08T17:17:21.31Z 
│                        │     ╰ LastModifiedDate: 2026-07-13T14:54:26.317Z 
│                        ╰ [9] ╭ VulnerabilityID : CVE-2026-42505 
│                              ├ VendorIDs        ─ [0]: GO-2026-5856 
│                              ├ PkgID           : stdlib@v1.26.4 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                              │                  ╰ UID : 7ea3df536be71e1b 
│                              ├ InstalledVersion: v1.26.4 
│                              ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                              │                  │         dd1c189cada2bb321f30 
│                              │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                              │                            3b065de6f809d70d81ad 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:ec198a6add16df74c060690739d67b094814ea6aa2b2a4c805c1b
│                              │                   c87cd6436bd 
│                              ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure in
│                              │                    Encrypted Client Hello 
│                              ├ Description     : Handshakes which used Encrypted Client Hello could be
│                              │                   de-anonymized by a passive network observer due to a
│                              │                   disclosure of pre-shared key identities in the unencrypted
│                              │                   client hello. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-201 
│                              ├ VendorSeverity   ╭ amazon : 2 
│                              │                  ├ bitnami: 2 
│                              │                  ╰ redhat : 2 
│                              ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                              │                  │         │           N/A:N 
│                              │                  │         ╰ V3Score : 5.3 
│                              │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                              │                            │           N/A:N 
│                              │                            ╰ V3Score : 5.3 
│                              ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42505 
│                              │                  ├ [1]: https://go.dev/cl/775960 
│                              │                  ├ [2]: https://go.dev/issue/79282 
│                              │                  ├ [3]: https://groups.google.com/g/golang-announce/c/OrmQE_Yp
│                              │                  │      5Sc 
│                              │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42505 
│                              │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5856 
│                              │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42505 
│                              ├ PublishedDate   : 2026-07-08T17:17:21.497Z 
│                              ╰ LastModifiedDate: 2026-07-13T17:05:36.303Z 
├ [12] ╭ Target         : usr/libexec/docker/cli-plugins/docker-model 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : GO-2026-5932 
│                        │     ├ PkgID           : golang.org/x/crypto@v0.53.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.53.0 
│                        │     │                  ╰ UID : 4a75460d65c046ad 
│                        │     ├ InstalledVersion: v0.53.0 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:4de64320e9a9de05d9fa0ecc263c332344d65b343c6eda7b2ea32
│                        │     │                   f01b98d3c97 
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
│                        │     ╰ References       ╭ [0]: https://go.dev/issue/44226 
│                        │                        ╰ [1]: https://pkg.go.dev/vuln/GO-2026-5932 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-46600 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5942 
│                        │     ├ PkgID           : golang.org/x/net@v0.55.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.55.0 
│                        │     │                  ╰ UID : 7883d2541b515fd6 
│                        │     ├ InstalledVersion: v0.55.0 
│                        │     ├ FixedVersion    : 0.56.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:048b9da59b0fe96d9a6b9fe67300bcd9578b88dc55a43ae161994
│                        │     │                   0822d171356 
│                        │     ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │     │                   of a param ... 
│                        │     ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │     │                   of a parameter value overflows the message buffer. 
│                        │     ├ Severity        : UNKNOWN 
│                        │     ├ CweIDs           ─ [0]: CWE-125 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/786345 
│                        │     │                  ├ [1]: https://go.dev/issue/79795 
│                        │     │                  ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        │     ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-56852 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5970 
│                        │     ├ PkgID           : golang.org/x/text@v0.38.0 
│                        │     ├ PkgName         : golang.org/x/text 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.38.0 
│                        │     │                  ╰ UID : 23d84dcd6ab5ac00 
│                        │     ├ InstalledVersion: v0.38.0 
│                        │     ├ FixedVersion    : 0.39.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                        │     │                  │         dd1c189cada2bb321f30 
│                        │     │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                        │     │                            3b065de6f809d70d81ad 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:b8bb92e92fc9499bb256869fa12f50789b30e23c6ba0e207fa451
│                        │     │                   dcb99e47ade 
│                        │     ├ Title           : A norm.Iter can enter an infinite loop when handling input
│                        │     │                   containing  ... 
│                        │     ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │     │                   containing invalid UTF-8 bytes. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-835 
│                        │     ├ VendorSeverity   ─ azure: 3 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/794100 
│                        │     │                  ├ [1]: https://go.dev/issue/80142 
│                        │     │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56852 
│                        │     │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-5970 
│                        │     ├ PublishedDate   : 2026-07-21T20:17:02.867Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ╰ [3] ╭ VulnerabilityID : GHSA-hrxh-6v49-42gf 
│                              ├ PkgID           : google.golang.org/grpc@v1.79.3 
│                              ├ PkgName         : google.golang.org/grpc 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.79.3 
│                              │                  ╰ UID : 2977bc5805b7c756 
│                              ├ InstalledVersion: v1.79.3 
│                              ├ FixedVersion    : 1.82.1 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bb
│                              │                  │         dd1c189cada2bb321f30 
│                              │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de32
│                              │                            3b065de6f809d70d81ad 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:adc9e437818a33e5316bc58644e39f99e7dc35129cb4091f5a63f
│                              │                   a9ffdd9bc41 
│                              ├ Title           : gRPC-Go: xDS RBAC and HTTP/2 Vulnerabilities 
│                              ├ Description     : Multiple security vulnerabilities have been identified and
│                              │                   addressed in grpc-go affecting the xDS RBAC authorization
│                              │                   engine (internal/xds/rbac) and the HTTP/2 transport server
│                              │                   implementation (internal/transport). These vulnerabilities
│                              │                   could result in:
│                              │                   
│                              │                   - Authorization Bypass (Fail-Open) when translating xDS RBAC
│                              │                    policies containing `Metadata` or `RequestedServerName`
│                              │                   fields.
│                              │                   - Denial of Service (High CPU Consumption) due to an HTTP/2
│                              │                   Rapid Reset mitigation bypass during client-initiated stream
│                              │                    resets.
│                              │                   - Denial of Service (Server Panic) when parsing crafted xDS
│                              │                   RBAC policies containing `NOT` rules around unsupported
│                              │                   ### Impact
│                              │                   _What kind of vulnerability is it? Who is impacted?_
│                              │                   #### xDS RBAC Authorization Bypass via `Metadata` &
│                              │                   `RequestedServerName` matchers
│                              │                   - Affected Component: xDS RBAC 
│                              │                   - Impact: When building policy matchers for gRPC RBAC from
│                              │                   xDS configurations, unsupported `permission` and `principal`
│                              │                    rules (specifically `Metadata` and `RequestedServerName`)
│                              │                   were silently ignored and treated as no-ops.
│                              │                     - If an authorization policy relied purely on these
│                              │                   matchers for access control, treating those rules as no-ops
│                              │                   effectively removed the restrictions.
│                              │                   - If these unsupported rules were nested inside logical
│                              │                   `NOT` rules (`Permission_NotRule` / `Principal_NotId`) or
│                              │                   multi-condition `OR/AND` rules, silently dropping them
│                              │                   changed the boolean logic flow of the authorization engine.
│                              │                   As a result, policy evaluation decisions could fail open,
│                              │                   allowing unauthorized clients to access protected gRPC
│                              │                   services or resources.
│                              │                   #### HTTP/2 Rapid Reset Mitigation Bypass / Denial of
│                              │                   Service via Stream Aborts
│                              │                   - Affected Component: HTTP/2 transport
│                              │                   - Impact: Earlier mitigations in grpc-go for HTTP/2 Rapid
│                              │                   Reset only applied threshold checks to items that directly
│                              │                   resulted in control frames being written back to the wire,
│                              │                   such as `SETTINGS` ACKs or server-initiated `RST_STREAM`s.
│                              │                   When a client initiated a rapid flood of stream creation
│                              │                   (`HEADERS`) immediately followed by stream termination
│                              │                   `RST_STREAM`, items queued up in the control buffer without
│                              │                   counting against the transport response frame threshold. An
│                              │                   attacker can repeatedly trigger this flood sequence to
│                              │                   bypass reader blocking, resulting in high CPU usage, and
│                              │                   Denial of Service (DoS).
│                              │                   #### Denial of Service (Panic) in xDS RBAC Engine via
│                              │                   Unsupported Fields inside NOT Rules
│                              │                   - Impact: The xDS RBAC policy translators recursively
│                              │                   generate matchers for nested rules. When a `NOT` rule
│                              │                   wrapped an unsupported or unhandled field (such as
│                              │                   `SourcedMetadata`), the recursive step returned an empty
│                              │                   matcher. This could result in a runtime panic when the RBAC
│                              │                   engine attempts to authorize an incoming request.
│                              │                   An attacker or misconfigured/malicious xDS management server
│                              │                    delivering an LDS/RDS update containing a `NOT` rule around
│                              │                    an unhandled field causes the gRPC server process to crash
│                              │                   immediately (CWE-248 / Denial of Service).
│                              │                   ### Patches
│                              │                   _Has the problem been patched? What versions should users
│                              │                   upgrade to?_
│                              │                   All three issues have been fixed in `master` and will be
│                              │                   released in 1.82.1 shortly.
│                              │                   ### Workarounds
│                              │                   _Is there a way for users to fix or remediate the
│                              │                   vulnerability without upgrading?_
│                              │                   If upgrading grpc-go immediately is not possible, apply the
│                              │                   following workarounds based on your deployment
│                              │                   architecture:
│                              │                   * For xDS RBAC Vulnerabilities & Panics: Ensure that
│                              │                   upstream xDS management servers do not push RBAC policies
│                              │                   containing `Metadata`, `RequestedServerName`, or `NOT` rules
│                              │                    wrapping unsupported fields (such as `SourcedMetadata`) to
│                              │                   grpc-go servers.
│                              │                   * For HTTP/2 Rapid Reset DOS: Configure upstream reverse
│                              │                   proxies or load balancers (such as Envoy) with strict HTTP/2
│                              │                    `max_concurrent_streams` limits and active rate limiting on
│                              │                    `RST_STREAM` frequency per connection.
│                              │                   ### Severity
│                              │                     | Vulnerability | Qualitative Severity | Approximate CVSS
│                              │                   v3.1 Score | Primary Impact |
│                              │                     | :--- | :--- | :--- | :--- |
│                              │                     | **xDS RBAC Authorization Bypass** | **High** | `8.2` |
│                              │                   Unauthorized Access / Fail-Open |
│                              │                     | **HTTP/2 Rapid Reset DOS Bypass** | **High** | `7.5` |
│                              │                   High CPU Consumption / Denial of Service |
│                              │                     | **xDS RBAC Engine Server Panic** | **Medium** | `5.9` |
│                              │                   Process Crash / Denial of Service | 
│                              ├ Severity        : HIGH 
│                              ├ VendorSeverity   ─ ghsa: 3 
│                              ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:N/VC:N/VI
│                              │                         │            :H/VA:H/SC:N/SI:N/SA:N 
│                              │                         ╰ V40Score : 8.8 
│                              ├ References       ╭ [0]: https://github.com/grpc/grpc-go 
│                              │                  ├ [1]: https://github.com/grpc/grpc-go/commit/4ea465d4ab98013
│                              │                  │      f72a142fe0fc89c19770b2935 
│                              │                  ├ [2]: https://github.com/grpc/grpc-go/pull/9236 
│                              │                  ├ [3]: https://github.com/grpc/grpc-go/releases/tag/v1.82.1 
│                              │                  ╰ [4]: https://github.com/grpc/grpc-go/security/advisories/GH
│                              │                         SA-hrxh-6v49-42gf 
│                              ├ PublishedDate   : 2026-07-21T22:03:55Z 
│                              ╰ LastModifiedDate: 2026-07-21T22:03:56Z 
├ [13] ╭ Target         : usr/local/bin/k3d 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2025-15558 
│                        │      ├ VendorIDs        ─ [0]: GHSA-p436-gjf2-799p 
│                        │      ├ PkgID           : github.com/docker/cli@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/cli 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/cli@v28.5.2%2Bincompati
│                        │      │                  │       ble 
│                        │      │                  ╰ UID : 207ecb2699a7f1fb 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ FixedVersion    : 29.2.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-15558 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:e1ac21f314906a94c3bdd53d08c9fc7ceff9d82642a662691aec
│                        │      │                   f099d5af7647 
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
│                        │      ├ CweIDs           ─ [0]: CWE-427 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-15558 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/show_bug.cgi?id=2444574 
│                        │      │                  ├ [2] : https://docs.docker.com/desktop/release-notes 
│                        │      │                  ├ [3] : https://docs.docker.com/desktop/release-notes/ 
│                        │      │                  ├ [4] : https://github.com/docker/cli 
│                        │      │                  ├ [5] : https://github.com/docker/cli/commit/13759330b1f7e7c
│                        │      │                  │       b0d67047ea42c5482548ba7fa 
│                        │      │                  ├ [6] : https://github.com/docker/cli/pull/6713 
│                        │      │                  ├ [7] : https://github.com/docker/cli/security/advisories/GH
│                        │      │                  │       SA-p436-gjf2-799p 
│                        │      │                  ├ [8] : https://github.com/docker/compose/pull/12300 
│                        │      │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2025-15558 
│                        │      │                  ├ [10]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2025/cve-2025-15558.json 
│                        │      │                  ├ [11]: https://www.cve.org/CVERecord?id=CVE-2025-15558 
│                        │      │                  ├ [12]: https://www.zerodayinitiative.com/advisories/ZDI-CAN
│                        │      │                  │       -28304 
│                        │      │                  ╰ [13]: https://www.zerodayinitiative.com/advisories/ZDI-CAN
│                        │      │                          -28304/ 
│                        │      ├ PublishedDate   : 2026-03-04T17:16:14.763Z 
│                        │      ╰ LastModifiedDate: 2026-07-15T02:17:22.307Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-34040 
│                        │      ├ VendorIDs        ─ [0]: GHSA-x744-4wpc-v9h2 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ FixedVersion    : 29.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:95b4d76b7af2179e820af0ec29d43b0cc288503b2872d1b54016
│                        │      │                   81f7240a8061 
│                        │      ├ Title           : Moby: Moby: Authorization bypass vulnerability 
│                        │      ├ Description     : Moby is an open source container framework. Prior to
│                        │      │                   version 29.3.1, a security vulnerability has been detected
│                        │      │                   that allows attackers to bypass authorization plugins
│                        │      │                   (AuthZ). This issue has been patched in version 29.3.1. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-288 
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ ghsa  : 3 
│                        │      │                  ├ nvd   : 3 
│                        │      │                  ├ photon: 3 
│                        │      │                  ╰ redhat: 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 8.8 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 7.8 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 8.4 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-34040 
│                        │      │                  ├ [1]: https://docs.docker.com/engine/extend/plugins_authori
│                        │      │                  │      zation 
│                        │      │                  ├ [2]: https://github.com/moby/moby 
│                        │      │                  ├ [3]: https://github.com/moby/moby/commit/e89edb19ad7de0407
│                        │      │                  │      a5d31e3111cb01aa10b5a38 
│                        │      │                  ├ [4]: https://github.com/moby/moby/releases/tag/docker-v29.
│                        │      │                  │      3.1 
│                        │      │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -v23v-6jw2-98fq 
│                        │      │                  ├ [6]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -x744-4wpc-v9h2 
│                        │      │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-34040 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-34040 
│                        │      ├ PublishedDate   : 2026-03-31T03:15:57.883Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:38:28.383Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-41567 
│                        │      ├ VendorIDs        ─ [0]: GHSA-x86f-5xw2-fm2r 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:9e79fcde3c398c19066cd1b7ca72147ca89daf7b65092beb9a9e
│                        │      │                   0da6d9ecebe4 
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
│                        │      ├ CweIDs           ─ [0]: CWE-427 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37387 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:41030 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:42852 
│                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:44622 
│                        │      │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │      │                  ├ [6] : https://github.com/moby/moby 
│                        │      │                  ├ [7] : https://github.com/moby/moby/security/advisories/GHS
│                        │      │                  │       A-x86f-5xw2-fm2r 
│                        │      │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │      │                  ├ [9] : https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2026/cve-2026-41567.json 
│                        │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │      ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │      ╰ LastModifiedDate: 2026-07-30T12:18:32.233Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-42306 
│                        │      ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:eed56751d06c19ff7612fc8b4bce031d248ca518cbc015664eed
│                        │      │                   bae14ebf871b 
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
│                        │      ├ CweIDs           ╭ [0]: CWE-61 
│                        │      │                  ╰ [1]: CWE-367 
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
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42306 
│                        │      │                  ├ [1]: https://github.com/moby/moby 
│                        │      │                  ├ [2]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -rg2x-37c3-w2rh 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-42306 
│                        │      ├ PublishedDate   : 2026-06-12T19:16:27.49Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:47:39.96Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-33997 
│                        │      ├ VendorIDs        ─ [0]: GHSA-pxq6-2prw-chj9 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ FixedVersion    : 29.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:123104219c6a71170be53c49af416ce9a8a6ad0b83cad32532d9
│                        │      │                   4a77a74459d1 
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
│                        │      ├ CweIDs           ╭ [0]: CWE-193 
│                        │      │                  ╰ [1]: CWE-266 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:21769 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:22347 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:23345 
│                        │      │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-33997 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2453277 
│                        │      │                  ├ [5] : https://docs.docker.com/engine/extend/legacy_plugins 
│                        │      │                  ├ [6] : https://github.com/moby/moby 
│                        │      │                  ├ [7] : https://github.com/moby/moby/commit/f4d6f25bf0c3fa12
│                        │      │                  │       d4968320a45685947756a22a 
│                        │      │                  ├ [8] : https://github.com/moby/moby/releases/tag/docker-v29
│                        │      │                  │       .3.1 
│                        │      │                  ├ [9] : https://github.com/moby/moby/security/advisories/GHS
│                        │      │                  │       A-pxq6-2prw-chj9 
│                        │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-33997 
│                        │      │                  ├ [11]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2026/cve-2026-33997.json 
│                        │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2026-33997 
│                        │      ├ PublishedDate   : 2026-03-31T03:15:57.523Z 
│                        │      ╰ LastModifiedDate: 2026-07-27T13:17:41.643Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-41568 
│                        │      ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:a9efc8b0a213cc0c4a228492a7511fd345060b35b6e6cb7acb9f
│                        │      │                   f4a103a841bc 
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
│                        │      ├ CweIDs           ╭ [0]: CWE-81 
│                        │      │                  ╰ [1]: CWE-367 
│                        │      ├ VendorSeverity   ╭ ghsa  : 2 
│                        │      │                  ╰ redhat: 1 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:
│                        │      │                  │        │           L/A:H 
│                        │      │                  │        ╰ V3Score : 6 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 3.9 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41568 
│                        │      │                  ├ [1]: https://github.com/moby/moby 
│                        │      │                  ├ [2]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -vp62-88p7-qqf5 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-41568 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-41568 
│                        │      ├ PublishedDate   : 2026-06-12T19:16:26.907Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:46:51.787Z 
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-46600 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5942 
│                        │      ├ PkgID           : golang.org/x/net@v0.55.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.55.0 
│                        │      │                  ╰ UID : 2f843a7f8b510757 
│                        │      ├ InstalledVersion: v0.55.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:07a28db6fc37738d550558429b489b4bd622e16e7efbff57fa63
│                        │      │                   52987cb7b9c6 
│                        │      ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a param ... 
│                        │      ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a parameter value overflows the message buffer. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ├ CweIDs           ─ [0]: CWE-125 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/786345 
│                        │      │                  ├ [1]: https://go.dev/issue/79795 
│                        │      │                  ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        │      ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-56852 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5970 
│                        │      ├ PkgID           : golang.org/x/text@v0.37.0 
│                        │      ├ PkgName         : golang.org/x/text 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.37.0 
│                        │      │                  ╰ UID : 8481703a747ddd9e 
│                        │      ├ InstalledVersion: v0.37.0 
│                        │      ├ FixedVersion    : 0.39.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:38c3540c30a1aed9e649a8a270f92b4cf9744dbfbb10ba6336fc
│                        │      │                   e076dde50185 
│                        │      ├ Title           : A norm.Iter can enter an infinite loop when handling input
│                        │      │                   containing  ... 
│                        │      ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │      │                   containing invalid UTF-8 bytes. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-835 
│                        │      ├ VendorSeverity   ─ azure: 3 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/794100 
│                        │      │                  ├ [1]: https://go.dev/issue/80142 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-56852 
│                        │      │                  ╰ [3]: https://pkg.go.dev/vuln/GO-2026-5970 
│                        │      ├ PublishedDate   : 2026-07-21T20:17:02.867Z 
│                        │      ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [8]  ╭ VulnerabilityID : GHSA-hrxh-6v49-42gf 
│                        │      ├ PkgID           : google.golang.org/grpc@v1.81.1 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.81.1 
│                        │      │                  ╰ UID : 53f12763215d3977 
│                        │      ├ InstalledVersion: v1.81.1 
│                        │      ├ FixedVersion    : 1.82.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:8481a5e4368d4d700521bee5b5dd87c77599a0577c08b562f945
│                        │      │                   0628b6527f7e 
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
│                        │      ├ References       ╭ [0]: https://github.com/grpc/grpc-go 
│                        │      │                  ├ [1]: https://github.com/grpc/grpc-go/commit/4ea465d4ab9801
│                        │      │                  │      3f72a142fe0fc89c19770b2935 
│                        │      │                  ├ [2]: https://github.com/grpc/grpc-go/pull/9236 
│                        │      │                  ├ [3]: https://github.com/grpc/grpc-go/releases/tag/v1.82.1 
│                        │      │                  ╰ [4]: https://github.com/grpc/grpc-go/security/advisories/G
│                        │      │                         HSA-hrxh-6v49-42gf 
│                        │      ├ PublishedDate   : 2026-07-21T22:03:55Z 
│                        │      ╰ LastModifiedDate: 2026-07-21T22:03:56Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-27145 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5037 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:48a8e495ad8adb5225cfbeaaff76d648a4529e2d815eed208a6d
│                        │      │                   0522c3ded9f8 
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
│                        │      ├ CweIDs           ─ [0]: CWE-606 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :L/A:H 
│                        │      │                  │         ╰ V3Score : 6.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:23262 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:23264 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:29980 
│                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:29981 
│                        │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:33574 
│                        │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:34357 
│                        │      │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:34359 
│                        │      │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:35832 
│                        │      │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:36317 
│                        │      │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:36648 
│                        │      │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:36797 
│                        │      │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:38995 
│                        │      │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:39005 
│                        │      │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:39573 
│                        │      │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:39879 
│                        │      │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:41030 
│                        │      │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:41036 
│                        │      │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:41930 
│                        │      │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:42043 
│                        │      │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:42047 
│                        │      │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:42049 
│                        │      │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:42050 
│                        │      │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:42051 
│                        │      │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:42079 
│                        │      │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:42080 
│                        │      │                  ├ [25]: https://access.redhat.com/errata/RHSA-2026:42082 
│                        │      │                  ├ [26]: https://access.redhat.com/errata/RHSA-2026:42142 
│                        │      │                  ├ [27]: https://access.redhat.com/errata/RHSA-2026:42150 
│                        │      │                  ├ [28]: https://access.redhat.com/errata/RHSA-2026:42151 
│                        │      │                  ├ [29]: https://access.redhat.com/errata/RHSA-2026:42240 
│                        │      │                  ├ [30]: https://access.redhat.com/errata/RHSA-2026:42644 
│                        │      │                  ├ [31]: https://access.redhat.com/errata/RHSA-2026:42946 
│                        │      │                  ├ [32]: https://access.redhat.com/errata/RHSA-2026:44622 
│                        │      │                  ├ [33]: https://access.redhat.com/errata/RHSA-2026:46394 
│                        │      │                  ├ [34]: https://access.redhat.com/errata/RHSA-2026:46395 
│                        │      │                  ├ [35]: https://access.redhat.com/errata/RHSA-2026:47149 
│                        │      │                  ├ [36]: https://access.redhat.com/errata/RHSA-2026:47735 
│                        │      │                  ├ [37]: https://access.redhat.com/errata/RHSA-2026:47737 
│                        │      │                  ├ [38]: https://access.redhat.com/security/cve/CVE-2026-27145 
│                        │      │                  ├ [39]: https://bugzilla.redhat.com/2445356 
│                        │      │                  ├ [40]: https://bugzilla.redhat.com/2484207 
│                        │      │                  ├ [41]: https://bugzilla.redhat.com/show_bug.cgi?id=2445356 
│                        │      │                  ├ [42]: https://bugzilla.redhat.com/show_bug.cgi?id=2484207 
│                        │      │                  ├ [43]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-25679 
│                        │      │                  ├ [44]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-27145 
│                        │      │                  ├ [45]: https://errata.almalinux.org/9/ALSA-2026-36317.html 
│                        │      │                  ├ [46]: https://errata.rockylinux.org/RLSA-2026:36317 
│                        │      │                  ├ [47]: https://go.dev/cl/783621 
│                        │      │                  ├ [48]: https://go.dev/issue/79694 
│                        │      │                  ├ [49]: https://groups.google.com/g/golang-announce/c/tKs3rm
│                        │      │                  │       cBcKw 
│                        │      │                  ├ [50]: https://linux.oracle.com/cve/CVE-2026-27145.html 
│                        │      │                  ├ [51]: https://linux.oracle.com/errata/ELSA-2026-46395.html 
│                        │      │                  ├ [52]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
│                        │      │                  ├ [53]: https://pkg.go.dev/vuln/GO-2026-5037 
│                        │      │                  ├ [54]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2026/cve-2026-27145.json 
│                        │      │                  ╰ [55]: https://www.cve.org/CVERecord?id=CVE-2026-27145 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │      ╰ LastModifiedDate: 2026-07-31T13:17:40.873Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-39822 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:fcfd5a066e978fc8eafd5319fa294faef06175c3faa1f3a30cb3
│                        │      │                   4bfac0e0d501 
│                        │      ├ Title           : os: golang: Go os.Root: Symlink following vulnerability
│                        │      │                   allows directory traversal 
│                        │      ├ Description     : On Unix systems, opening a file in an os.Root improperly
│                        │      │                   follows symlinks to locations outside of the Root when the
│                        │      │                   final path component of the a path is a symbolic link and
│                        │      │                   the path ends in /. For example, 'root.Open("symlink/")'
│                        │      │                   will open "symlink" even when "symlink" is a symbolic link
│                        │      │                   pointing outside of the root. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-61 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I
│                        │      │                  │         │           :H/A:H 
│                        │      │                  │         ╰ V3Score : 7.8 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I
│                        │      │                            │           :H/A:H 
│                        │      │                            ╰ V3Score : 7.8 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:38878 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-39822 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2498152 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39822 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2026-38878.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:38878 
│                        │      │                  ├ [7] : https://go.dev/cl/797880 
│                        │      │                  ├ [8] : https://go.dev/issue/79005 
│                        │      │                  ├ [9] : https://groups.google.com/g/golang-announce/c/OrmQE_
│                        │      │                  │       Yp5Sc 
│                        │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2026-39822.html 
│                        │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2026-38995.html 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-39822 
│                        │      │                  ├ [13]: https://pkg.go.dev/vuln/GO-2026-4970 
│                        │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2026-39822 
│                        │      ├ PublishedDate   : 2026-07-08T17:17:21.31Z 
│                        │      ╰ LastModifiedDate: 2026-07-13T14:54:26.317Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-42504 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:6b342e12e8d9921d60d122edf44be0b12b7dcee191b414feb568
│                        │      │                   ace5345d72cb 
│                        │      ├ Title           : mime: golang: Golang MIME: Denial of Service via
│                        │      │                   maliciously-crafted MIME header 
│                        │      ├ Description     : Decoding a maliciously-crafted MIME header containing many
│                        │      │                   invalid encoded-words can consume excessive CPU. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-407 
│                        │      ├ VendorSeverity   ╭ amazon : 2 
│                        │      │                  ├ azure  : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ╰ redhat : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42504 
│                        │      │                  ├ [1]: https://go.dev/cl/774481 
│                        │      │                  ├ [2]: https://go.dev/issue/79217 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                        │      │                  │      BcKw 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42504 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5038 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42504 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │      ╰ LastModifiedDate: 2026-07-22T19:10:00.12Z 
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-42505 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5856 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                        │      │                  │         bdd1c189cada2bb321f30 
│                        │      │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                        │      │                            23b065de6f809d70d81ad 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4c0234cf48db6cb455b944ec4559bbd3434b71288eb57cde392c
│                        │      │                   7c230fae3541 
│                        │      ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure
│                        │      │                   in Encrypted Client Hello 
│                        │      ├ Description     : Handshakes which used Encrypted Client Hello could be
│                        │      │                   de-anonymized by a passive network observer due to a
│                        │      │                   disclosure of pre-shared key identities in the unencrypted
│                        │      │                   client hello. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-201 
│                        │      ├ VendorSeverity   ╭ amazon : 2 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                  │         │           :N/A:N 
│                        │      │                  │         ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-42505 
│                        │      │                  ├ [1]: https://go.dev/cl/775960 
│                        │      │                  ├ [2]: https://go.dev/issue/79282 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/OrmQE_Y
│                        │      │                  │      p5Sc 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-42505 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-5856 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-42505 
│                        │      ├ PublishedDate   : 2026-07-08T17:17:21.497Z 
│                        │      ╰ LastModifiedDate: 2026-07-13T17:05:36.303Z 
│                        ╰ [13] ╭ VulnerabilityID : CVE-2026-42507 
│                               ├ VendorIDs        ─ [0]: GO-2026-5039 
│                               ├ PkgID           : stdlib@v1.26.3 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                               │                  ╰ UID : 3dcf59cf5482f2c5 
│                               ├ InstalledVersion: v1.26.3 
│                               ├ FixedVersion    : 1.25.11, 1.26.4 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095b
│                               │                  │         bdd1c189cada2bb321f30 
│                               │                  ╰ DiffID: sha256:8a4488c33e23334312e546f27b02256f10056df4de3
│                               │                            23b065de6f809d70d81ad 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:110e6e581ddbd0a938daf88db4bb73d34773d5e21646ab0de315
│                               │                   1fe2a8a62439 
│                               ├ Title           : net/textproto: golang: Golang net/textproto: Misleading
│                               │                   error messages via input injection 
│                               ├ Description     : When returning errors, functions in the net/textproto
│                               │                   package would include its input as part of the error. This
│                               │                   might allow an attacker to inject misleading content to
│                               │                   errors that are printed or logged. 
│                               ├ Severity        : MEDIUM 
│                               ├ VendorSeverity   ╭ alma       : 2 
│                               │                  ├ amazon     : 2 
│                               │                  ├ bitnami    : 2 
│                               │                  ├ oracle-oval: 2 
│                               │                  ├ redhat     : 2 
│                               │                  ╰ rocky      : 2 
│                               ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                               │                  │         │           :L/A:N 
│                               │                  │         ╰ V3Score : 5.3 
│                               │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                               │                            │           :L/A:N 
│                               │                            ╰ V3Score : 5.3 
│                               ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:29981 
│                               │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-42507 
│                               │                  ├ [2] : https://bugzilla.redhat.com/2484205 
│                               │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2484205 
│                               │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2484207 
│                               │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                               │                  │       026-27145 
│                               │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                               │                  │       026-42507 
│                               │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2026-29981.html 
│                               │                  ├ [8] : https://errata.rockylinux.org/RLSA-2026:29981 
│                               │                  ├ [9] : https://go.dev/cl/777060 
│                               │                  ├ [10]: https://go.dev/issue/79346 
│                               │                  ├ [11]: https://groups.google.com/g/golang-announce/c/tKs3rm
│                               │                  │       cBcKw 
│                               │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-42507.html 
│                               │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-29981.html 
│                               │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
│                               │                  ├ [15]: https://pkg.go.dev/vuln/GO-2026-5039 
│                               │                  ╰ [16]: https://www.cve.org/CVERecord?id=CVE-2026-42507 
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
│                      ├ Code      ─ Lines ╭ [0] ╭ Number     : 1 
│                      │                   │     ├ Content    : -----BEGIN OPENSSH PRIVATE KEY----- 
│                      │                   │     ├ IsCause    : false 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: -----BEGIN OPENSSH PRIVATE KEY----- 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [1] ╭ Number     : 2 
│                      │                   │     ├ Content    : ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ FirstCause : true 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [2] ╭ Number     : 3 
│                      │                   │     ├ Content    : ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [3] ╭ Number     : 4 
│                      │                   │     ├ Content    : ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [4] ╭ Number     : 5 
│                      │                   │     ├ Content    : ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [5] ╭ Number     : 6 
│                      │                   │     ├ Content    : ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [6] ╭ Number     : 7 
│                      │                   │     ├ Content    : ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [7] ╭ Number     : 8 
│                      │                   │     ├ Content    : **************** 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: **************** 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : true 
│                      │                   ╰ [8] ╭ Number     : 9 
│                      │                         ├ Content    : -----END OPENSSH PRIVATE KEY----- 
│                      │                         ├ IsCause    : false 
│                      │                         ├ Annotation :  
│                      │                         ├ Truncated  : false 
│                      │                         ├ Highlighted: -----END OPENSSH PRIVATE KEY----- 
│                      │                         ├ FirstCause : false 
│                      │                         ╰ LastCause  : false 
│                      ├ Match    : ********************************************************************** 
│                      ├ Layer     ╭ Digest   : sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bbdd1c189cada2
│                      │           │            bb321f30 
│                      │           ├ DiffID   : sha256:8a4488c33e23334312e546f27b02256f10056df4de323b065de6f809
│                      │           │            d70d81ad 
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
│                      ├ Code      ─ Lines ╭ [0] ╭ Number     : 1 
│                      │                   │     ├ Content    : -----BEGIN OPENSSH PRIVATE KEY----- 
│                      │                   │     ├ IsCause    : false 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: -----BEGIN OPENSSH PRIVATE KEY----- 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [1] ╭ Number     : 2 
│                      │                   │     ├ Content    : ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ FirstCause : true 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [2] ╭ Number     : 3 
│                      │                   │     ├ Content    : ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [3] ╭ Number     : 4 
│                      │                   │     ├ Content    : ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [4] ╭ Number     : 5 
│                      │                   │     ├ Content    : ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: ***********************************************
│                      │                   │     │              *********************** 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : false 
│                      │                   ├ [5] ╭ Number     : 6 
│                      │                   │     ├ Content    : ***********************************************
│                      │                   │     │              ********* 
│                      │                   │     ├ IsCause    : true 
│                      │                   │     ├ Annotation :  
│                      │                   │     ├ Truncated  : false 
│                      │                   │     ├ Highlighted: ***********************************************
│                      │                   │     │              ********* 
│                      │                   │     ├ FirstCause : false 
│                      │                   │     ╰ LastCause  : true 
│                      │                   ╰ [6] ╭ Number     : 7 
│                      │                         ├ Content    : -----END OPENSSH PRIVATE KEY----- 
│                      │                         ├ IsCause    : false 
│                      │                         ├ Annotation :  
│                      │                         ├ Truncated  : false 
│                      │                         ├ Highlighted: -----END OPENSSH PRIVATE KEY----- 
│                      │                         ├ FirstCause : false 
│                      │                         ╰ LastCause  : false 
│                      ├ Match    : ********************************************************************** 
│                      ├ Layer     ╭ Digest   : sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bbdd1c189cada2
│                      │           │            bb321f30 
│                      │           ├ DiffID   : sha256:8a4488c33e23334312e546f27b02256f10056df4de323b065de6f809
│                      │           │            d70d81ad 
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
                       ├ Code      ─ Lines ╭ [0]  ╭ Number     : 1 
                       │                   │      ├ Content    : -----BEGIN OPENSSH PRIVATE KEY----- 
                       │                   │      ├ IsCause    : false 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: -----BEGIN OPENSSH PRIVATE KEY----- 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [1]  ╭ Number     : 2 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : true 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [2]  ╭ Number     : 3 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [3]  ╭ Number     : 4 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [4]  ╭ Number     : 5 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [5]  ╭ Number     : 6 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [6]  ╭ Number     : 7 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [7]  ╭ Number     : 8 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [8]  ╭ Number     : 9 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [9]  ╭ Number     : 10 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [10] ╭ Number     : 11 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [11] ╭ Number     : 12 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [12] ╭ Number     : 13 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [13] ╭ Number     : 14 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [14] ╭ Number     : 15 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [15] ╭ Number     : 16 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [16] ╭ Number     : 17 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [17] ╭ Number     : 18 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [18] ╭ Number     : 19 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [19] ╭ Number     : 20 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [20] ╭ Number     : 21 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [21] ╭ Number     : 22 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [22] ╭ Number     : 23 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [23] ╭ Number     : 24 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [24] ╭ Number     : 25 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [25] ╭ Number     : 26 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [26] ╭ Number     : 27 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [27] ╭ Number     : 28 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [28] ╭ Number     : 29 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [29] ╭ Number     : 30 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [30] ╭ Number     : 31 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [31] ╭ Number     : 32 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [32] ╭ Number     : 33 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [33] ╭ Number     : 34 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [34] ╭ Number     : 35 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [35] ╭ Number     : 36 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ************************ 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : false 
                       │                   ├ [36] ╭ Number     : 37 
                       │                   │      ├ Content    : **********************************************
                       │                   │      │              ******** 
                       │                   │      ├ IsCause    : true 
                       │                   │      ├ Annotation :  
                       │                   │      ├ Truncated  : false 
                       │                   │      ├ Highlighted: **********************************************
                       │                   │      │              ******** 
                       │                   │      ├ FirstCause : false 
                       │                   │      ╰ LastCause  : true 
                       │                   ╰ [37] ╭ Number     : 38 
                       │                          ├ Content    : -----END OPENSSH PRIVATE KEY----- 
                       │                          ├ IsCause    : false 
                       │                          ├ Annotation :  
                       │                          ├ Truncated  : false 
                       │                          ├ Highlighted: -----END OPENSSH PRIVATE KEY----- 
                       │                          ├ FirstCause : false 
                       │                          ╰ LastCause  : false 
                       ├ Match    : ********************************************************************** 
                       ├ Layer     ╭ Digest   : sha256:3a669598f33b5e4cfc8e4861ba994e8b8438837095bbdd1c189cada2
                       │           │            bb321f30 
                       │           ├ DiffID   : sha256:8a4488c33e23334312e546f27b02256f10056df4de323b065de6f809
                       │           │            d70d81ad 
                       │           ╰ CreatedBy: COPY / / # buildkit 
                       ╰ Offset   : 36 
```
