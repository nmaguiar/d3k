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
│                        │      │                  ╰ UID : 35a8976635e225e2 
│                        │      ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:186d374a11e83be1c76930d69cc02f7ce82e0ebae2bc4cc25e32
│                        │      │                   993a2d7dd31b 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ julia : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                        │      ├ PkgName         : bsdutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 35a8976635e225e2 
│                        │      ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9dca42f5b5916d41b7f7ce715de804064acfbbc75d5e1863edf2
│                        │      │                   ab308e91dcda 
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
│                        │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2024-52005 
│                        │      ├ PkgID           : git@1:2.53.0-1ubuntu1 
│                        │      ├ PkgName         : git 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.53.0-1ubuntu1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : a05c573a581e3d4e 
│                        │      ├ InstalledVersion: 1:2.53.0-1ubuntu1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:dffb1bdab927ed07ff07681eaf3a4c822cdaeb1601225ccb22c6
│                        │      │                   d2f8e120a447 
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
│                        │      ╰ LastModifiedDate: 2025-12-18T16:00:17.533Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2024-52005 
│                        │      ├ PkgID           : git-man@1:2.53.0-1ubuntu1 
│                        │      ├ PkgName         : git-man 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.53.0-1ubuntu1?arch=all&dist
│                        │      │                  │       ro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : a19d1931460c0147 
│                        │      ├ InstalledVersion: 1:2.53.0-1ubuntu1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2e8e017f41828eca96f8f03ab49a04df93fead3d0657ed2676b9
│                        │      │                   33ceb4e6ff27 
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
│                        │      ╰ LastModifiedDate: 2025-12-18T16:00:17.533Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libblkid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : f63a0a78e3cac3a3 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a46f436d82cb121d7a7a2449fb5757c00abf77ddd44d3d3305fd
│                        │      │                   9b4d91a0be31 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ julia : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libblkid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : f63a0a78e3cac3a3 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:77c9f617cfd89b42861e3c51a7485db88f431db771b011bf6676
│                        │      │                   edbda44655db 
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
│                        │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-4046 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:da08d11db1798c6215cefb89344f87d0bb645d08b8842c2bbf18
│                        │      │                   897693bfb23c 
│                        │      ├ Title           : glibc: glibc: Denial of Service via iconv() function with
│                        │      │                   specific character sets 
│                        │      ├ Description     : The iconv() function in the GNU C Library versions 2.43 and
│                        │      │                    earlier may crash due to an assertion failure when
│                        │      │                   converting inputs from the IBM1390 or IBM1399 character
│                        │      │                   sets, which may be used to remotely crash an application.
│                        │      │                   
│                        │      │                   This vulnerability can be trivially mitigated by removing
│                        │      │                   the IBM1390 and IBM1399 character sets from systems that do
│                        │      │                    not need them. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-617 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20594 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [9] : https://errata.almalinux.org/10/ALSA-2026-20594.html 
│                        │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [11]: https://inbox.sourceware.org/libc-announce/76814edf-
│                        │      │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                        │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                        │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [15]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                        │      │                  │       gconv-extra/ 
│                        │      │                  ├ [16]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [17]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [18]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                        │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                        │      ╰ LastModifiedDate: 2026-04-20T22:16:23.623Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-4437 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:51cb43f1c8e11cfc3a603a03f2bd1f5a80ea571471a1ea7d7126
│                        │      │                   7bf07e341625 
│                        │      ├ Title           : glibc: glibc: Incorrect DNS response parsing via crafted
│                        │      │                   DNS server response 
│                        │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                        │      │                   nsswitch.conf that specifies the library's DNS backend in
│                        │      │                   the GNU C Library version 2.34 to version 2.43 could, with
│                        │      │                   a crafted response from the configured DNS server, result
│                        │      │                   in a violation of the DNS specification that causes the
│                        │      │                   application to treat a non-answer section of the DNS
│                        │      │                   response as a valid answer. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-125 
│                        │      ├ VendorSeverity   ╭ alma  : 2 
│                        │      │                  ├ azure : 2 
│                        │      │                  ├ photon: 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ├ rocky : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                        │      ╰ LastModifiedDate: 2026-04-07T18:41:36.647Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-4438 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:aca062bef679b5d755dba037a1c7c323bf8c516b2af0bf9eaeec
│                        │      │                   fcf246ec7f90 
│                        │      ├ Title           : glibc: glibc: Invalid DNS hostname returned via
│                        │      │                   gethostbyaddr functions 
│                        │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                        │      │                   nsswitch.conf that specifies the library's DNS backend in
│                        │      │                   the GNU C library version 2.34 to version 2.43 could result
│                        │      │                    in an invalid DNS hostname being returned to the caller in
│                        │      │                    violation of the DNS specification. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-20 
│                        │      │                  ╰ [1]: CWE-88 
│                        │      ├ VendorSeverity   ╭ alma  : 2 
│                        │      │                  ├ azure : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ├ rocky : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                        │      ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-5435 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a121bf00836629368d1e08ca9274ff90463131776d3697d4c9a4
│                        │      │                   cc8209c03e16 
│                        │      ├ Title           : glibc: glibc: Out-of-bounds write via TSIG record processing 
│                        │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                        │      │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                        │      │                   to enforce the caller-supplied buffer length, and can
│                        │      │                   result in an out-of-bounds write when printing TSIG
│                        │      │                   records. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-787 
│                        │      ├ VendorSeverity   ╭ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 5.9 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-5435 
│                        │      │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                        │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                        │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0011 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                        │      ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                        │      ╰ LastModifiedDate: 2026-05-05T17:38:37.03Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-6238 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e7fc9fa3b4c477adae46f0c7d2b817721ca779f926e464af48d2
│                        │      │                   e6ae17d7073c 
│                        │      ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                        │      │                   read via crafted DNS response 
│                        │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                        │      │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                        │      │                   to validate the RDATA content against the RDATA length in a
│                        │      │                    DNS response when processing LOC, CERT, TKEY or TSIG
│                        │      │                   records, which may allow an attacker to craft a DNS
│                        │      │                   response, causing a target application to crash or read
│                        │      │                   uninitialized memory.
│                        │      │                   
│                        │      │                   These functions are for application debugging only and
│                        │      │                   hence not in the path of code executed by the DNS resolver.
│                        │      │                     Further, they have been deprecated since version 2.34 and
│                        │      │                    should not be used by any new applications.  Applications
│                        │      │                   should consider porting away from these interfaces since
│                        │      │                   they may be removed in future versions. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-126 
│                        │      ├ VendorSeverity   ╭ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-6238 
│                        │      │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                        │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                        │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0012 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                        │      ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                        │      ╰ LastModifiedDate: 2026-05-04T17:57:24.007Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-4046 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:14f139e0c0f45b0f345e861ba00fcc1ee1389737932be04c61d9
│                        │      │                   34c366f15e06 
│                        │      ├ Title           : glibc: glibc: Denial of Service via iconv() function with
│                        │      │                   specific character sets 
│                        │      ├ Description     : The iconv() function in the GNU C Library versions 2.43 and
│                        │      │                    earlier may crash due to an assertion failure when
│                        │      │                   converting inputs from the IBM1390 or IBM1399 character
│                        │      │                   sets, which may be used to remotely crash an application.
│                        │      │                   
│                        │      │                   This vulnerability can be trivially mitigated by removing
│                        │      │                   the IBM1390 and IBM1399 character sets from systems that do
│                        │      │                    not need them. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-617 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20594 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [9] : https://errata.almalinux.org/10/ALSA-2026-20594.html 
│                        │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [11]: https://inbox.sourceware.org/libc-announce/76814edf-
│                        │      │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                        │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                        │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [15]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                        │      │                  │       gconv-extra/ 
│                        │      │                  ├ [16]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [17]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [18]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                        │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                        │      ╰ LastModifiedDate: 2026-04-20T22:16:23.623Z 
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-4437 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a564f31e8656860b9538f1a67a0084789292408ee9345e8052d6
│                        │      │                   0b2e6773d797 
│                        │      ├ Title           : glibc: glibc: Incorrect DNS response parsing via crafted
│                        │      │                   DNS server response 
│                        │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                        │      │                   nsswitch.conf that specifies the library's DNS backend in
│                        │      │                   the GNU C Library version 2.34 to version 2.43 could, with
│                        │      │                   a crafted response from the configured DNS server, result
│                        │      │                   in a violation of the DNS specification that causes the
│                        │      │                   application to treat a non-answer section of the DNS
│                        │      │                   response as a valid answer. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-125 
│                        │      ├ VendorSeverity   ╭ alma  : 2 
│                        │      │                  ├ azure : 2 
│                        │      │                  ├ photon: 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ├ rocky : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                        │      ╰ LastModifiedDate: 2026-04-07T18:41:36.647Z 
│                        ├ [13] ╭ VulnerabilityID : CVE-2026-4438 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f5cb59d54c780b7a166c8b597f8ca8c99f1390191d5d2ee7c41c
│                        │      │                   ea01cce4f476 
│                        │      ├ Title           : glibc: glibc: Invalid DNS hostname returned via
│                        │      │                   gethostbyaddr functions 
│                        │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                        │      │                   nsswitch.conf that specifies the library's DNS backend in
│                        │      │                   the GNU C library version 2.34 to version 2.43 could result
│                        │      │                    in an invalid DNS hostname being returned to the caller in
│                        │      │                    violation of the DNS specification. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-20 
│                        │      │                  ╰ [1]: CWE-88 
│                        │      ├ VendorSeverity   ╭ alma  : 2 
│                        │      │                  ├ azure : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ├ rocky : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                        │      ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                        ├ [14] ╭ VulnerabilityID : CVE-2026-5435 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8c0d09d9b0e8544cd04ea0d7e3043bb7a2c1a0b7351cd836b794
│                        │      │                   743c2cab6eb8 
│                        │      ├ Title           : glibc: glibc: Out-of-bounds write via TSIG record processing 
│                        │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                        │      │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                        │      │                   to enforce the caller-supplied buffer length, and can
│                        │      │                   result in an out-of-bounds write when printing TSIG
│                        │      │                   records. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-787 
│                        │      ├ VendorSeverity   ╭ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 5.9 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-5435 
│                        │      │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                        │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                        │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0011 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                        │      ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                        │      ╰ LastModifiedDate: 2026-05-05T17:38:37.03Z 
│                        ├ [15] ╭ VulnerabilityID : CVE-2026-6238 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0ff5c98654c2be24a2a158e1327fbde60312216f0d8c9c6ec8ce
│                        │      │                   cc881b6e8591 
│                        │      ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                        │      │                   read via crafted DNS response 
│                        │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                        │      │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                        │      │                   to validate the RDATA content against the RDATA length in a
│                        │      │                    DNS response when processing LOC, CERT, TKEY or TSIG
│                        │      │                   records, which may allow an attacker to craft a DNS
│                        │      │                   response, causing a target application to crash or read
│                        │      │                   uninitialized memory.
│                        │      │                   
│                        │      │                   These functions are for application debugging only and
│                        │      │                   hence not in the path of code executed by the DNS resolver.
│                        │      │                     Further, they have been deprecated since version 2.34 and
│                        │      │                    should not be used by any new applications.  Applications
│                        │      │                   should consider porting away from these interfaces since
│                        │      │                   they may be removed in future versions. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-126 
│                        │      ├ VendorSeverity   ╭ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-6238 
│                        │      │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                        │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                        │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0012 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                        │      ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                        │      ╰ LastModifiedDate: 2026-05-04T17:57:24.007Z 
│                        ├ [16] ╭ VulnerabilityID : CVE-2026-4046 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:908d961065f711eb0584efd93fce5bab2dd639b09db4474b60f3
│                        │      │                   986e5c2d8c1f 
│                        │      ├ Title           : glibc: glibc: Denial of Service via iconv() function with
│                        │      │                   specific character sets 
│                        │      ├ Description     : The iconv() function in the GNU C Library versions 2.43 and
│                        │      │                    earlier may crash due to an assertion failure when
│                        │      │                   converting inputs from the IBM1390 or IBM1399 character
│                        │      │                   sets, which may be used to remotely crash an application.
│                        │      │                   
│                        │      │                   This vulnerability can be trivially mitigated by removing
│                        │      │                   the IBM1390 and IBM1399 character sets from systems that do
│                        │      │                    not need them. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-617 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20594 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [9] : https://errata.almalinux.org/10/ALSA-2026-20594.html 
│                        │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [11]: https://inbox.sourceware.org/libc-announce/76814edf-
│                        │      │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                        │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                        │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [15]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                        │      │                  │       gconv-extra/ 
│                        │      │                  ├ [16]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [17]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [18]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                        │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                        │      ╰ LastModifiedDate: 2026-04-20T22:16:23.623Z 
│                        ├ [17] ╭ VulnerabilityID : CVE-2026-4437 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8c1c86242536fe466a3037765b796afa78f0eca3f9675a3eba7e
│                        │      │                   890588dc1931 
│                        │      ├ Title           : glibc: glibc: Incorrect DNS response parsing via crafted
│                        │      │                   DNS server response 
│                        │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                        │      │                   nsswitch.conf that specifies the library's DNS backend in
│                        │      │                   the GNU C Library version 2.34 to version 2.43 could, with
│                        │      │                   a crafted response from the configured DNS server, result
│                        │      │                   in a violation of the DNS specification that causes the
│                        │      │                   application to treat a non-answer section of the DNS
│                        │      │                   response as a valid answer. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-125 
│                        │      ├ VendorSeverity   ╭ alma  : 2 
│                        │      │                  ├ azure : 2 
│                        │      │                  ├ photon: 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ├ rocky : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                        │      ╰ LastModifiedDate: 2026-04-07T18:41:36.647Z 
│                        ├ [18] ╭ VulnerabilityID : CVE-2026-4438 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e6c33d25638325eca79bb1c0660b99861f3995b76cd3d1b6a808
│                        │      │                   83064eca1752 
│                        │      ├ Title           : glibc: glibc: Invalid DNS hostname returned via
│                        │      │                   gethostbyaddr functions 
│                        │      ├ Description     : Calling gethostbyaddr or gethostbyaddr_r with a configured
│                        │      │                   nsswitch.conf that specifies the library's DNS backend in
│                        │      │                   the GNU C library version 2.34 to version 2.43 could result
│                        │      │                    in an invalid DNS hostname being returned to the caller in
│                        │      │                    violation of the DNS specification. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-20 
│                        │      │                  ╰ [1]: CWE-88 
│                        │      ├ VendorSeverity   ╭ alma  : 2 
│                        │      │                  ├ azure : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ├ rocky : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [10]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [13]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [14]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [15]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                        │      ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                        ├ [19] ╭ VulnerabilityID : CVE-2026-5435 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a68315b66a37d477d3636c969ea481edfdc896b673e2ae3f750c
│                        │      │                   f6686de152db 
│                        │      ├ Title           : glibc: glibc: Out-of-bounds write via TSIG record processing 
│                        │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                        │      │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                        │      │                   to enforce the caller-supplied buffer length, and can
│                        │      │                   result in an out-of-bounds write when printing TSIG
│                        │      │                   records. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-787 
│                        │      ├ VendorSeverity   ╭ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 5.9 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-5435 
│                        │      │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                        │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                        │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0011 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                        │      ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                        │      ╰ LastModifiedDate: 2026-05-05T17:38:37.03Z 
│                        ├ [20] ╭ VulnerabilityID : CVE-2026-6238 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b4f1aa6181ba835157b94793d40fae45d2e264e5cfa75fff8b64
│                        │      │                   41f4044380b3 
│                        │      ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                        │      │                   read via crafted DNS response 
│                        │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                        │      │                   fp_nquery in the GNU C Library version 2.2 and newer fail
│                        │      │                   to validate the RDATA content against the RDATA length in a
│                        │      │                    DNS response when processing LOC, CERT, TKEY or TSIG
│                        │      │                   records, which may allow an attacker to craft a DNS
│                        │      │                   response, causing a target application to crash or read
│                        │      │                   uninitialized memory.
│                        │      │                   
│                        │      │                   These functions are for application debugging only and
│                        │      │                   hence not in the path of code executed by the DNS resolver.
│                        │      │                     Further, they have been deprecated since version 2.34 and
│                        │      │                    should not be used by any new applications.  Applications
│                        │      │                   should consider porting away from these interfaces since
│                        │      │                   they may be removed in future versions. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-126 
│                        │      ├ VendorSeverity   ╭ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-6238 
│                        │      │                  ├ [1]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                        │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                        │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0012 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                        │      ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                        │      ╰ LastModifiedDate: 2026-05-04T17:57:24.007Z 
│                        ├ [21] ╭ VulnerabilityID : CVE-2025-1352 
│                        │      ├ PkgID           : libelf1t64@0.194-4 
│                        │      ├ PkgName         : libelf1t64 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro=
│                        │      │                  │       ubuntu-26.04 
│                        │      │                  ╰ UID : 855cfee3bc864065 
│                        │      ├ InstalledVersion: 0.194-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:51ba254af7192fb412ca8f8d8baecf39f293a978d7fcdecad3b7
│                        │      │                   963cac61be0d 
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
│                        │      ╰ LastModifiedDate: 2026-06-02T14:16:29.597Z 
│                        ├ [22] ╭ VulnerabilityID : CVE-2025-1376 
│                        │      ├ PkgID           : libelf1t64@0.194-4 
│                        │      ├ PkgName         : libelf1t64 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro=
│                        │      │                  │       ubuntu-26.04 
│                        │      │                  ╰ UID : 855cfee3bc864065 
│                        │      ├ InstalledVersion: 0.194-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1376 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0d892c7690cc9e17c8dc4e72422938bae273b6744642ba23ae9f
│                        │      │                   5f947a80b9ea 
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
│                        │      ╰ LastModifiedDate: 2026-06-02T14:16:29.8Z 
│                        ├ [23] ╭ VulnerabilityID : CVE-2025-66382 
│                        │      ├ PkgID           : libexpat1@2.7.4-1 
│                        │      ├ PkgName         : libexpat1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : c17b9d4b5a8b1286 
│                        │      ├ InstalledVersion: 2.7.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9f58ab6705f6d92bcf8677567f4cac5923297fe0387e88148056
│                        │      │                   d54edd70db48 
│                        │      ├ Title           : libexpat: libexpat: Denial of service via crafted file
│                        │      │                   processing 
│                        │      ├ Description     : In libexpat through 2.7.3, a crafted file with an
│                        │      │                   approximate size of 2 MiB can lead to dozens of seconds of
│                        │      │                   processing time. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-407 
│                        │      ├ VendorSeverity   ╭ nvd   : 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
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
│                        │      ╰ LastModifiedDate: 2026-06-02T14:16:37.12Z 
│                        ├ [24] ╭ VulnerabilityID : CVE-2024-2236 
│                        │      ├ PkgID           : libgcrypt20@1.12.0-2ubuntu0.1 
│                        │      ├ PkgName         : libgcrypt20 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2ubuntu0.1?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : df31886cccfcce83 
│                        │      ├ InstalledVersion: 1.12.0-2ubuntu0.1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8e6abeddd505896dcb03e5f0c0c457e2321fa1c911e5fa4dde47
│                        │      │                   a521316890d4 
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
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [25] ╭ VulnerabilityID : CVE-2026-22185 
│                        │      ├ PkgID           : liblmdb0@0.9.31-1build2 
│                        │      ├ PkgName         : liblmdb0 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/liblmdb0@0.9.31-1build2?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04 
│                        │      │                  ╰ UID : c6bcbb633021c366 
│                        │      ├ InstalledVersion: 0.9.31-1build2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-22185 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:5f041032ebc6c9b421db85a815a804367527486a31a9e5aef1fe
│                        │      │                   574555a9976e 
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
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [26] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libmount1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ee0638a59a092c7e 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c282ad430cf7481beacfe2ecd33d65f5eb40f0a58779866f863e
│                        │      │                   e8ed773b08bb 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ julia : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                        ├ [27] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libmount1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ee0638a59a092c7e 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4571d63e316400c2a4de14e2fc7e4168fb1ea1c59445e721455e
│                        │      │                   23aa3ccd430f 
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
│                        │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                        ├ [28] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libnss-systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : libnss-systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libnss-systemd@259.5-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 75467b2281c05291 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0d1cab82a0e16e50e63c4dfee76cf988a038c9ec8e6cbc152ac6
│                        │      │                   1feebd4600e2 
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
│                        │      ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                        ├ [29] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libpam-systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : libpam-systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-systemd@259.5-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 4f72feeb7ea50bf 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1f6182562460ed1f2c44ddcfbeb1bd0f6d6433d6c0700b210cb0
│                        │      │                   48e11e2ac5c8 
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
│                        │      ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                        ├ [30] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14@3.14.4-1?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : 698bf98ba5451f67 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d68e3d52d595d3eefb26d0e7db39c6095def5b49e7cad1a34399
│                        │      │                   488b929578ae 
│                        │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                        │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                        │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                        │      │                    (a base class) and so does not use io.open_code() to read
│                        │      │                   the .pyc files. sys.audit handlers for this audit event
│                        │      │                   therefore do not fire. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-668 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 1 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/0
│                        │      │                  │       5/6 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19064 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/2449649 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/2457409 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/2457932 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/2458049 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                        │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                        │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                        │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                        │      │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                        │      │                  ├ [26]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-13837 
│                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-15282 
│                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-59375 
│                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-6075 
│                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-0672 
│                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-1502 
│                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-2297 
│                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-3644 
│                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4224 
│                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4519 
│                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4786 
│                        │      │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-6100 
│                        │      │                  ├ [39]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                        │      │                  ├ [40]: https://errata.rockylinux.org/RLSA-2026:19177 
│                        │      │                  ├ [41]: https://github.com/python/cpython/commit/482d6f8bdba
│                        │      │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                        │      │                  ├ [42]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                        │      │                  │       4bd69b1565647c18659c6a789ccd9 
│                        │      │                  ├ [43]: https://github.com/python/cpython/commit/876858c9f65
│                        │      │                  │       d9ab656c7fa639f268ce7856d89dd 
│                        │      │                  ├ [44]: https://github.com/python/cpython/commit/a51b1b512de
│                        │      │                  │       1d56b3714b65628a2eae2b07e535e 
│                        │      │                  ├ [45]: https://github.com/python/cpython/commit/e58e9802b9b
│                        │      │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                        │      │                  ├ [46]: https://github.com/python/cpython/issues/145506 
│                        │      │                  ├ [47]: https://github.com/python/cpython/pull/145507 
│                        │      │                  ├ [48]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                        │      │                  ├ [49]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                        │      │                  ├ [50]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                        │      │                  ╰ [51]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                        │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                        │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                        ├ [31] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14-minimal 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                        │      │                  │       md64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : edd92b8f9e06659 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ae20e206def29d15a4c9d2c1baaffe88f9f42aa08a239e75da28
│                        │      │                   ef134757df9f 
│                        │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                        │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                        │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                        │      │                    (a base class) and so does not use io.open_code() to read
│                        │      │                   the .pyc files. sys.audit handlers for this audit event
│                        │      │                   therefore do not fire. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-668 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 1 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/0
│                        │      │                  │       5/6 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19064 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/2449649 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/2457409 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/2457932 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/2458049 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                        │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                        │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                        │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                        │      │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                        │      │                  ├ [26]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-13837 
│                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-15282 
│                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-59375 
│                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-6075 
│                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-0672 
│                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-1502 
│                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-2297 
│                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-3644 
│                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4224 
│                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4519 
│                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4786 
│                        │      │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-6100 
│                        │      │                  ├ [39]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                        │      │                  ├ [40]: https://errata.rockylinux.org/RLSA-2026:19177 
│                        │      │                  ├ [41]: https://github.com/python/cpython/commit/482d6f8bdba
│                        │      │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                        │      │                  ├ [42]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                        │      │                  │       4bd69b1565647c18659c6a789ccd9 
│                        │      │                  ├ [43]: https://github.com/python/cpython/commit/876858c9f65
│                        │      │                  │       d9ab656c7fa639f268ce7856d89dd 
│                        │      │                  ├ [44]: https://github.com/python/cpython/commit/a51b1b512de
│                        │      │                  │       1d56b3714b65628a2eae2b07e535e 
│                        │      │                  ├ [45]: https://github.com/python/cpython/commit/e58e9802b9b
│                        │      │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                        │      │                  ├ [46]: https://github.com/python/cpython/issues/145506 
│                        │      │                  ├ [47]: https://github.com/python/cpython/pull/145507 
│                        │      │                  ├ [48]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                        │      │                  ├ [49]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                        │      │                  ├ [50]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                        │      │                  ╰ [51]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                        │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                        │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                        ├ [32] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14-stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : d9cfb9637e1a0676 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:583dc3238077011907f0ab8b89978c147c881ea74cf3054cfbe6
│                        │      │                   3f9ce3ead83a 
│                        │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                        │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                        │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                        │      │                    (a base class) and so does not use io.open_code() to read
│                        │      │                   the .pyc files. sys.audit handlers for this audit event
│                        │      │                   therefore do not fire. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-668 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 1 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/0
│                        │      │                  │       5/6 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19064 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/2449649 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/2457409 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/2457932 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/2458049 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                        │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                        │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                        │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                        │      │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                        │      │                  ├ [26]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-13837 
│                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-15282 
│                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-59375 
│                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-6075 
│                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-0672 
│                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-1502 
│                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-2297 
│                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-3644 
│                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4224 
│                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4519 
│                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4786 
│                        │      │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-6100 
│                        │      │                  ├ [39]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                        │      │                  ├ [40]: https://errata.rockylinux.org/RLSA-2026:19177 
│                        │      │                  ├ [41]: https://github.com/python/cpython/commit/482d6f8bdba
│                        │      │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                        │      │                  ├ [42]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                        │      │                  │       4bd69b1565647c18659c6a789ccd9 
│                        │      │                  ├ [43]: https://github.com/python/cpython/commit/876858c9f65
│                        │      │                  │       d9ab656c7fa639f268ce7856d89dd 
│                        │      │                  ├ [44]: https://github.com/python/cpython/commit/a51b1b512de
│                        │      │                  │       1d56b3714b65628a2eae2b07e535e 
│                        │      │                  ├ [45]: https://github.com/python/cpython/commit/e58e9802b9b
│                        │      │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                        │      │                  ├ [46]: https://github.com/python/cpython/issues/145506 
│                        │      │                  ├ [47]: https://github.com/python/cpython/pull/145507 
│                        │      │                  ├ [48]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                        │      │                  ├ [49]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                        │      │                  ├ [50]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                        │      │                  ╰ [51]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                        │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                        │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                        ├ [33] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ff5e7b67d2385233 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d439922ef5fece03ea2f3ead1ed9d0b24232e293317a591960f7
│                        │      │                   4e35cbc694de 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ julia : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                        ├ [34] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ff5e7b67d2385233 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:aae963d3614fbdcf1bc9c1d758e6780b7ded8bc452839af0b60e
│                        │      │                   4e56d901402d 
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
│                        │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                        ├ [35] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : libsubid5@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : libsubid5 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsubid5@4.17.4-2ubuntu3?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 2e6a9fef7087b138 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:89bce477fa9a58c631171a88da23e728a43cd80983ad9f333edd
│                        │      │                   d0ed57e524e2 
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
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [36] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libsystemd-shared@259.5-0ubuntu3 
│                        │      ├ PkgName         : libsystemd-shared 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd-shared@259.5-0ubuntu3?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 6eccbb8daab13b4 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ba32baf543fae7d24890e7b3c00acba8b1c8ab56bc665a155032
│                        │      │                   a63497122104 
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
│                        │      ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                        ├ [37] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libsystemd0@259.5-0ubuntu3 
│                        │      ├ PkgName         : libsystemd0 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 68ed9dc5cf416dae 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:69e9a2e1df2e4f2a95a2c9099430f77e1c62f0ce39f65f2fad9e
│                        │      │                   bbc15afa426a 
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
│                        │      ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                        ├ [38] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libudev1@259.5-0ubuntu3 
│                        │      ├ PkgName         : libudev1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04 
│                        │      │                  ╰ UID : 419f3d2219f938db 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1cac078a45851a49df6699f4bd155032651aaed6195709397015
│                        │      │                   4879a39b2e47 
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
│                        │      ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                        ├ [39] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 41d4afb2fde363cf 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:99f6681e9b21ff77b7ab68f7d7eaad8c9dc501b33adef5a78d28
│                        │      │                   54f35aa5e1da 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ julia : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                        ├ [40] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 41d4afb2fde363cf 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2a59966cc1dd3e65c76ffcccfb7dd56487210b8aca6addade60f
│                        │      │                   2eee6d0bcb8d 
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
│                        │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                        ├ [41] ╭ VulnerabilityID : CVE-2026-1757 
│                        │      ├ PkgID           : libxml2-16@2.15.2+dfsg-0.1 
│                        │      ├ PkgName         : libxml2-16 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2-16@2.15.2%2Bdfsg-0.1?arch=amd
│                        │      │                  │       64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 9bfe0fc72832625d 
│                        │      ├ InstalledVersion: 2.15.2+dfsg-0.1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-1757 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1d2b5491511dd01e53aebd4c11e92890723886b3ac3a08ce0ba4
│                        │      │                   3b8f521b2cc6 
│                        │      ├ Title           : libxml2: Memory Leak Leading to Local Denial of Service in
│                        │      │                   xmllint Interactive Shell 
│                        │      ├ Description     : A flaw was identified in the interactive shell of the
│                        │      │                   xmllint utility, part of the libxml2 project, where memory
│                        │      │                   allocated for user input is not properly released under
│                        │      │                   certain conditions. When a user submits input consisting
│                        │      │                   only of whitespace, the program skips command execution but
│                        │      │                    fails to free the allocated buffer. Repeating this action
│                        │      │                   causes memory to continuously accumulate. Over time, this
│                        │      │                   can exhaust system memory and terminate the xmllint
│                        │      │                   process, creating a denial-of-service condition on the
│                        │      │                   local system. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-401 
│                        │      ├ VendorSeverity   ╭ amazon: 1 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 6.2 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7519 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-1757 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2435940 
│                        │      │                  ├ [3]: https://gitlab.gnome.org/GNOME/libxml2/-/issues/1009 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-1757 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-1757 
│                        │      ├ PublishedDate   : 2026-02-02T13:15:58.58Z 
│                        │      ╰ LastModifiedDate: 2026-04-22T10:16:50.683Z 
│                        ├ [42] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e1bfbadc9113c00a 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:42797feea184f2e49a852a314688543353e7901a98714f78ae08
│                        │      │                   2bd8f20adcb8 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ julia : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                        ├ [43] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e1bfbadc9113c00a 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4b32833eba4278d27a2bcb9cc002665278a4415ba05894ffa31b
│                        │      │                   8d0c9052114e 
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
│                        │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                        ├ [44] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : login.defs 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&d
│                        │      │                  │       istro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : eaf648d5e4e975f7 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:710f0466014ca3b7a740ed153c607e636e59043add357b76fe9e
│                        │      │                   3cdf580b8a7c 
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
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [45] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c69b23980117da6b9d9248fbeff16ef18dfbb2ff2b3a408bff3c
│                        │      │                   a49cbbb24c57 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ julia : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                        ├ [46] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f4b1b805b3e252ea9350e947aa20cbe3877d74bb572e97bf980d
│                        │      │                   7145c163bbfa 
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
│                        │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                        ├ [47] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : passwd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e6ebfac85406f0d5 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:377dfe3a2389d21591707db5c836fd684fdb52c0b1422c6b53a1
│                        │      │                   684c9252c36f 
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
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [48] ╭ VulnerabilityID : CVE-2018-6952 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : d95d6071755544be 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2018-6952 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a93ab1e50175ea142998b2574efc487144e5f27aefbb839a6e64
│                        │      │                   83c3a260ef07 
│                        │      ├ Title           : patch: Double free of memory in pch.c:another_hunk() causes
│                        │      │                    a crash 
│                        │      ├ Description     : A double free exists in the another_hunk function in pch.c
│                        │      │                   in GNU patch through 2.7.6. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-415 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ cbl-mariner: 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ oracle-oval: 1 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ CVSS             ╭ nvd    ╭ V2Vector: AV:N/AC:L/Au:N/C:N/I:N/A:P 
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
│                        │      ╰ LastModifiedDate: 2024-11-21T04:11:28.42Z 
│                        ├ [49] ╭ VulnerabilityID : CVE-2021-45261 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : d95d6071755544be 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-45261 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2fed5ef2d045bd0b2ac2af4bfacf44e7b65c6687fafeef6d91c5
│                        │      │                   b84087a96fec 
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
│                        │      ╰ LastModifiedDate: 2024-11-21T06:32:02.633Z 
│                        ├ [50] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : python3.14@3.14.4-1 
│                        │      ├ PkgName         : python3.14 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : 5c38e5558a798bb7 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e02abde9bae68db403d0f2ef0c145bf4192e4b95b2c814748842
│                        │      │                   ec82d1a2b701 
│                        │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                        │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                        │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                        │      │                    (a base class) and so does not use io.open_code() to read
│                        │      │                   the .pyc files. sys.audit handlers for this audit event
│                        │      │                   therefore do not fire. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-668 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 1 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/0
│                        │      │                  │       5/6 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19064 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/2449649 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/2457409 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/2457932 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/2458049 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                        │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                        │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                        │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                        │      │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                        │      │                  ├ [26]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-13837 
│                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-15282 
│                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-59375 
│                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-6075 
│                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-0672 
│                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-1502 
│                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-2297 
│                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-3644 
│                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4224 
│                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4519 
│                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4786 
│                        │      │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-6100 
│                        │      │                  ├ [39]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                        │      │                  ├ [40]: https://errata.rockylinux.org/RLSA-2026:19177 
│                        │      │                  ├ [41]: https://github.com/python/cpython/commit/482d6f8bdba
│                        │      │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                        │      │                  ├ [42]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                        │      │                  │       4bd69b1565647c18659c6a789ccd9 
│                        │      │                  ├ [43]: https://github.com/python/cpython/commit/876858c9f65
│                        │      │                  │       d9ab656c7fa639f268ce7856d89dd 
│                        │      │                  ├ [44]: https://github.com/python/cpython/commit/a51b1b512de
│                        │      │                  │       1d56b3714b65628a2eae2b07e535e 
│                        │      │                  ├ [45]: https://github.com/python/cpython/commit/e58e9802b9b
│                        │      │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                        │      │                  ├ [46]: https://github.com/python/cpython/issues/145506 
│                        │      │                  ├ [47]: https://github.com/python/cpython/pull/145507 
│                        │      │                  ├ [48]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                        │      │                  ├ [49]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                        │      │                  ├ [50]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                        │      │                  ╰ [51]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                        │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                        │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                        ├ [51] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : python3.14-minimal@3.14.4-1 
│                        │      ├ PkgName         : python3.14-minimal 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                        │      │                  │       4&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : da8e2190347b7c6 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:43b84061c89119f31efeef67046896425c832fe0a35a8caaa4c5
│                        │      │                   015d7b1ef4dd 
│                        │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                        │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                        │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                        │      │                    (a base class) and so does not use io.open_code() to read
│                        │      │                   the .pyc files. sys.audit handlers for this audit event
│                        │      │                   therefore do not fire. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-668 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 1 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/03/0
│                        │      │                  │       5/6 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19064 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/2449649 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/2457409 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/2457932 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/2458049 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                        │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                        │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2449649 
│                        │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                        │      │                  ├ [25]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                        │      │                  ├ [26]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-13837 
│                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-15282 
│                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-59375 
│                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-6075 
│                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-0672 
│                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-1502 
│                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-2297 
│                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-3644 
│                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4224 
│                        │      │                  ├ [36]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4519 
│                        │      │                  ├ [37]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4786 
│                        │      │                  ├ [38]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-6100 
│                        │      │                  ├ [39]: https://errata.almalinux.org/10/ALSA-2026-19064.html 
│                        │      │                  ├ [40]: https://errata.rockylinux.org/RLSA-2026:19177 
│                        │      │                  ├ [41]: https://github.com/python/cpython/commit/482d6f8bdba
│                        │      │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                        │      │                  ├ [42]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                        │      │                  │       4bd69b1565647c18659c6a789ccd9 
│                        │      │                  ├ [43]: https://github.com/python/cpython/commit/876858c9f65
│                        │      │                  │       d9ab656c7fa639f268ce7856d89dd 
│                        │      │                  ├ [44]: https://github.com/python/cpython/commit/a51b1b512de
│                        │      │                  │       1d56b3714b65628a2eae2b07e535e 
│                        │      │                  ├ [45]: https://github.com/python/cpython/commit/e58e9802b9b
│                        │      │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                        │      │                  ├ [46]: https://github.com/python/cpython/issues/145506 
│                        │      │                  ├ [47]: https://github.com/python/cpython/pull/145507 
│                        │      │                  ├ [48]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                        │      │                  ├ [49]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                        │      │                  ├ [50]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                        │      │                  ╰ [51]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                        │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                        │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                        ├ [52] ╭ VulnerabilityID : CVE-2026-35341 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0ec6022f1e5cd03059a60fbc5345dc88fa9875b4a87a959e2d33
│                        │      │                   517128f96185 
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
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35341 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35341 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:36.06Z 
│                        │      ╰ LastModifiedDate: 2026-04-24T19:05:55.067Z 
│                        ├ [53] ╭ VulnerabilityID : CVE-2026-35344 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:cf4cf3f65f90e6a7ed2c612b1e8e84102c07bab3e65d2a32f319
│                        │      │                   3d71e2f0642c 
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
│                        │      ╰ LastModifiedDate: 2026-05-04T20:09:48.593Z 
│                        ├ [54] ╭ VulnerabilityID : CVE-2026-35345 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e5164200ef8498984296cf4d368d14cf62edcb928e0e1b86d714
│                        │      │                   e955aca1a5ba 
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
│                        │      ╰ LastModifiedDate: 2026-05-04T20:04:25.093Z 
│                        ├ [55] ╭ VulnerabilityID : CVE-2026-35348 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:01f7cc7a16e953d7a3055061ffd3aed895e8908f7cfae4261ac5
│                        │      │                   8ab9673d0850 
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
│                        │      ╰ LastModifiedDate: 2026-04-24T18:57:20.927Z 
│                        ├ [56] ╭ VulnerabilityID : CVE-2026-35350 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:01dc5003b4e07b7b9d9dc215c73af7be5f5346ecedbb5646ee25
│                        │      │                   afb9e5267bd6 
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
│                        │      ╰ LastModifiedDate: 2026-04-24T19:04:01.207Z 
│                        ├ [57] ╭ VulnerabilityID : CVE-2026-35351 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a89dff77d7a06da71a03f3dce8b130d2b7827db18f2628b92009
│                        │      │                   fc13536e76e6 
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
│                        │      ╰ LastModifiedDate: 2026-04-27T12:28:10.22Z 
│                        ├ [58] ╭ VulnerabilityID : CVE-2026-35352 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b4ebcbaddfc23cfc212caa3ac7657f832c0eed978f94bcac38ca
│                        │      │                   5ea8665979a5 
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
│                        │      ╰ LastModifiedDate: 2026-05-04T18:16:28.37Z 
│                        ├ [59] ╭ VulnerabilityID : CVE-2026-35354 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:826d4d12ac1286cd425c88b39da9bfb31115273c8c73537ec1c0
│                        │      │                   89fcdb801dec 
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
│                        │      ╰ LastModifiedDate: 2026-04-24T19:04:08.917Z 
│                        ├ [60] ╭ VulnerabilityID : CVE-2026-35357 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2fb31f4f77775f973277ba77b7e3be79cf64d3a4d74db14b7fb7
│                        │      │                   f7529e9b78b1 
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
│                        │      ╰ LastModifiedDate: 2026-04-24T19:02:53.557Z 
│                        ├ [61] ╭ VulnerabilityID : CVE-2026-35359 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:74821a493725a39b7ab140f17d7a44a85a85e1bf438315896604
│                        │      │                   281fad67fd47 
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
│                        │      ╰ LastModifiedDate: 2026-04-24T19:02:25.72Z 
│                        ├ [62] ╭ VulnerabilityID : CVE-2026-35360 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e38da14aa035ece74430659926fe2ae2715c9e6cd61aebc53ae6
│                        │      │                   c5f08d0af06b 
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
│                        │      ╰ LastModifiedDate: 2026-04-24T19:02:11.56Z 
│                        ├ [63] ╭ VulnerabilityID : CVE-2026-35363 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2f99c486319b672348426a36ba1ce31077769a9633310c6dfb9f
│                        │      │                   073559c85fc0 
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
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35363 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35363 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:39.12Z 
│                        │      ╰ LastModifiedDate: 2026-04-24T19:02:00.463Z 
│                        ├ [64] ╭ VulnerabilityID : CVE-2026-35364 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1ca1cbe7a9af02884eeb582196a0bc98171ee7b6af8efe718322
│                        │      │                   d82b86122561 
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
│                        │      ╰ LastModifiedDate: 2026-04-24T19:19:11.777Z 
│                        ├ [65] ╭ VulnerabilityID : CVE-2026-35367 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6d25818455d71b7c90110c7345d90b33c3d4ba8d5edbd42a2225
│                        │      │                   f0d6add92f48 
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
│                        │      ╰ LastModifiedDate: 2026-04-24T19:19:05.067Z 
│                        ├ [66] ╭ VulnerabilityID : CVE-2026-35368 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:aff1a196c4c3b51acd50b0e4c78217f7678c3f9c6616616548fb
│                        │      │                   971257ef9f64 
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
│                        │      ╰ LastModifiedDate: 2026-04-24T19:18:55.67Z 
│                        ├ [67] ╭ VulnerabilityID : CVE-2026-35370 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8e2aa11d4eae4713751a2e27ecf0b8d023cf8f15092a8275dcca
│                        │      │                   aa5eb10916c9 
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
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35370 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35370 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:40.833Z 
│                        │      ╰ LastModifiedDate: 2026-05-04T20:02:44.33Z 
│                        ├ [68] ╭ VulnerabilityID : CVE-2026-35371 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:69524cc9008a57ef5357822cbfa1be732c28e7372a812500e579
│                        │      │                   a4811e2593fb 
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
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35371 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35371 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:40.987Z 
│                        │      ╰ LastModifiedDate: 2026-05-04T20:02:06.183Z 
│                        ├ [69] ╭ VulnerabilityID : CVE-2026-35373 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:168d2b06c8e55bb2ef0fb2e80a94f762b1764600d953ae62ec2d
│                        │      │                   193d550f2e1c 
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
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35373 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35373 
│                        │      ├ PublishedDate   : 2026-04-22T17:16:41.997Z 
│                        │      ╰ LastModifiedDate: 2026-05-04T20:01:25.93Z 
│                        ├ [70] ╭ VulnerabilityID : CVE-2026-35374 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e746ab32106af11dc21452dbb4286902cb5021444174bb918fe4
│                        │      │                   ab7f6edc2163 
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
│                        │      ╰ LastModifiedDate: 2026-05-04T19:22:14.457Z 
│                        ├ [71] ╭ VulnerabilityID : CVE-2026-35377 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:5a5c7f0e4092727fc3b124e5370f539c7347bfa285822aac4f63
│                        │      │                   0448f150515b 
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
│                        │      ╰ LastModifiedDate: 2026-04-24T19:06:46.293Z 
│                        ├ [72] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd@259.5-0ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : 567bbfa6d722dfe 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:5b74dbc7f4487a56f928af297ca6653aaadb412a4171474f17a8
│                        │      │                   23faf1c33929 
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
│                        │      ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                        ├ [73] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-cryptsetup@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-cryptsetup 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-cryptsetup@259.5-0ubuntu3?arc
│                        │      │                  │       h=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 788fdc4b75775ddd 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:87d1e8084ee563be55e16ad49340eaf335f80d84d4dc17508a43
│                        │      │                   149a1fe21444 
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
│                        │      ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                        ├ [74] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-resolved@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-resolved 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-resolved@259.5-0ubuntu3?arch=
│                        │      │                  │       amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 8ab06fe0951c7356 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ba20723afb629a269e622b42d27fcffd004b245914fd59f0d59d
│                        │      │                   991e6f251cd5 
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
│                        │      ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                        ├ [75] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-sysv@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-sysv 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-sysv@259.5-0ubuntu3?arch=amd6
│                        │      │                  │       4&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 671de75b107aaffc 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:90c7a14b76239ac312298fa33e8a5452050980670c41daadbe3c
│                        │      │                   e8b33b6894b7 
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
│                        │      ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                        ├ [76] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-timesyncd@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-timesyncd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-timesyncd@259.5-0ubuntu3?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : c6ea5d793fe24a49 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:88649274adb2d1dc3edfc99bcd454f7431d4c6d337c9030f2c64
│                        │      │                   8fe65eb56c46 
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
│                        │      ╰ LastModifiedDate: 2026-05-05T02:16:04.82Z 
│                        ├ [77] ╭ VulnerabilityID : CVE-2025-45582 
│                        │      ├ PkgID           : tar@1.35+dfsg-4 
│                        │      ├ PkgName         : tar 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : df8f3d12dd71b054 
│                        │      ├ InstalledVersion: 1.35+dfsg-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-45582 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:bb96c56893d0742aab5ea7067e55dd421ed27bd1ddf198428b18
│                        │      │                   43fe1123a36e 
│                        │      ├ Title           : tar: Tar path traversal 
│                        │      ├ Description     : GNU Tar through 1.35 allows file overwrite via directory
│                        │      │                   traversal in crafted TAR archives, with a certain two-step
│                        │      │                   process. First, the victim must extract an archive that
│                        │      │                   contains a ../ symlink to a critical directory. Second, the
│                        │      │                    victim must extract an archive that contains a critical
│                        │      │                   file, specified via a relative pathname that begins with
│                        │      │                   the symlink name and ends with that critical file's name.
│                        │      │                   Here, the extraction follows the symlink and overwrites the
│                        │      │                    critical file. This bypasses the protection mechanism of
│                        │      │                   "Member name contains '..'" that would occur for a single
│                        │      │                   TAR archive that attempted to specify the critical file via
│                        │      │                    a ../ approach. For example, the first archive can contain
│                        │      │                    "x -> ../../../../../home/victim/.ssh" and the second
│                        │      │                   archive can contain x/authorized_keys. This can affect
│                        │      │                   server applications that automatically extract any number
│                        │      │                   of user-supplied TAR archives, and were relying on the
│                        │      │                   blocking of traversal. This can also affect software
│                        │      │                   installation processes in which "tar xf" is run more than
│                        │      │                   once (e.g., when installing a package can automatically
│                        │      │                   install two dependencies that are set up as untrusted
│                        │      │                   tarballs instead of official packages). NOTE: the official
│                        │      │                   GNU Tar manual has an otherwise-empty directory for each
│                        │      │                   "tar xf" in its Security Rules of Thumb; however,
│                        │      │                   third-party advice leads users to run "tar xf" more than
│                        │      │                   once into the same directory. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-24 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:L/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 5.6 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/11/0
│                        │      │                  │       1/6 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:0067 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-45582 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2379592 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2379592 
│                        │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-45582 
│                        │      │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2026-0067.html 
│                        │      │                  ├ [7] : https://errata.rockylinux.org/RLSA-2026:0067 
│                        │      │                  ├ [8] : https://github.com/i900008/vulndb/blob/main/Gnu_tar_
│                        │      │                  │       vuln.md 
│                        │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2025-45582.html 
│                        │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2026-0067.html 
│                        │      │                  ├ [11]: https://lists.gnu.org/archive/html/bug-tar/2025-08/m
│                        │      │                  │       sg00012.html 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2025-45582 
│                        │      │                  ├ [13]: https://www.cve.org/CVERecord?id=CVE-2025-45582 
│                        │      │                  ├ [14]: https://www.gnu.org/software/tar/ 
│                        │      │                  ├ [15]: https://www.gnu.org/software/tar/manual/html_node/In
│                        │      │                  │       tegrity.html 
│                        │      │                  ├ [16]: https://www.gnu.org/software/tar/manual/html_node/In
│                        │      │                  │       tegrity.html#Integrity 
│                        │      │                  ╰ [17]: https://www.gnu.org/software/tar/manual/html_node/Se
│                        │      │                          curity-rules-of-thumb.html 
│                        │      ├ PublishedDate   : 2025-07-11T17:15:37.183Z 
│                        │      ╰ LastModifiedDate: 2025-11-02T01:15:32.307Z 
│                        ├ [78] ╭ VulnerabilityID : CVE-2026-5704 
│                        │      ├ PkgID           : tar@1.35+dfsg-4 
│                        │      ├ PkgName         : tar 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : df8f3d12dd71b054 
│                        │      ├ InstalledVersion: 1.35+dfsg-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5704 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e45d811398593eb402206a9d3e35f212b19389a20443cb0fcac4
│                        │      │                   b98b0cbcb8f3 
│                        │      ├ Title           : tar: tar: Hidden file injection via crafted archives 
│                        │      ├ Description     : A flaw was found in tar. A remote attacker could exploit
│                        │      │                   this vulnerability by crafting a malicious archive, leading
│                        │      │                    to hidden file injection with fully attacker-controlled
│                        │      │                   content. This bypasses pre-extraction inspection
│                        │      │                   mechanisms, potentially allowing an attacker to introduce
│                        │      │                   malicious files onto a system without detection. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-434 
│                        │      ├ VendorSeverity   ╭ nvd   : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                  │        │           H/A:N 
│                        │      │                  │        ╰ V3Score : 5.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 5 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/04/11
│                        │      │                  │      /10 
│                        │      │                  ├ [1]: http://www.openwall.com/lists/oss-security/2026/04/11
│                        │      │                  │      /11 
│                        │      │                  ├ [2]: http://www.openwall.com/lists/oss-security/2026/04/12/2 
│                        │      │                  ├ [3]: https://access.redhat.com/security/cve/CVE-2026-5704 
│                        │      │                  ├ [4]: https://bugzilla.redhat.com/show_bug.cgi?id=2455360 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-5704 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-5704 
│                        │      ├ PublishedDate   : 2026-04-06T16:16:42.14Z 
│                        │      ╰ LastModifiedDate: 2026-04-22T20:08:59.92Z 
│                        ├ [79] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : uidmap@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : uidmap 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/uidmap@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : d7cc4b1ad13c4c8d 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:843d5c438546d4bf4d6375e4236755d0587f449ab406b7dd6f55
│                        │      │                   ca832ab8f63c 
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
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [80] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e60e4dc5d69ef2119799a646f738da3408d2148392c696d7ab6a
│                        │      │                   56ab2f141901 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ julia : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 4.7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │      │                  ├ [1]: https://github.com/util-linux/util-linux/commit/5e390
│                        │      │                  │      467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │      │                  ├ [2]: https://github.com/util-linux/util-linux/releases/tag
│                        │      │                  │      /v2.41.4 
│                        │      │                  ├ [3]: https://github.com/util-linux/util-linux/security/adv
│                        │      │                  │      isories/GHSA-qq4x-vfq4-9h9g 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │      ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │      ╰ LastModifiedDate: 2026-04-22T16:08:55.1Z 
│                        ├ [81] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c4506264d47ab39b610f7ab84e289dff19d0fe14ab9775f3ce6f
│                        │      │                   4ac4ee30405a 
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
│                        │      ╰ LastModifiedDate: 2026-05-01T19:29:51.02Z 
│                        ├ [82] ╭ VulnerabilityID : CVE-2026-43961 
│                        │      ├ PkgID           : vim@2:9.1.2141-1ubuntu4.2 
│                        │      ├ PkgName         : vim 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.2141-1ubuntu4.2?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : e88fc86e1a9b7493 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43961 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6331782b644c5a8a058fc8290abb359a46dd37db48ddfaafca2d
│                        │      │                   39da98e2c070 
│                        │      ├ Description     : [Unknown description] 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ ubuntu: 2 
│                        │      ╰ References       ╭ [0]: https://github.com/vim/vim/security/advisories/GHSA-6
│                        │                         │      6hr-7p6x-x5j3 
│                        │                         ├ [1]: https://www.cve.org/CVERecord?id=CVE-2026-43961 
│                        │                         ╰ [2]: https://www.openwall.com/lists/oss-security/2026/05/1
│                        │                                4/7 
│                        ├ [83] ╭ VulnerabilityID : CVE-2026-46483 
│                        │      ├ PkgID           : vim@2:9.1.2141-1ubuntu4.2 
│                        │      ├ PkgName         : vim 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.2141-1ubuntu4.2?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : e88fc86e1a9b7493 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46483 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2a45d657dd4ec274708bd5011975d8c24431c7a45a6762982a43
│                        │      │                   228224efb77c 
│                        │      ├ Title           : vim: command injection when decompressing .tgz archives 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   9.2.0479, a command injection vulnerability exists in
│                        │      │                   tar#Vimuntar() in
│                        │      │                   runtime/autoload/tar.vim when decompressing .tgz archives
│                        │      │                   on Unix-like systems. The function builds :!gunzip and
│                        │      │                   :!gzip -d commands using shellescape(tartail) without the
│                        │      │                   {special} flag, allowing a crafted archive filename to
│                        │      │                   trigger Vim cmdline-special expansion and execute shell
│                        │      │                   commands in the user's context. This vulnerability is fixed
│                        │      │                    in 9.2.0479. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-78 
│                        │      │                  ╰ [1]: CWE-88 
│                        │      ├ VendorSeverity   ╭ nvd   : 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-46483 
│                        │      │                  ├ [1]: https://github.com/vim/vim/commit/3fb5e58fbc63d86a3e6
│                        │      │                  │      5f1a141b0d67af2aa38a1 
│                        │      │                  ├ [2]: https://github.com/vim/vim/commit/3fb5e58fbc63d86a3e6
│                        │      │                  │      5f1a141b0d67af2aa38a1 (v9.2.0479) 
│                        │      │                  ├ [3]: https://github.com/vim/vim/releases/tag/v9.2.0479 
│                        │      │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-2
│                        │      │                  │      fpv-9ff7-xg5w 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-46483 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-46483 
│                        │      ├ PublishedDate   : 2026-05-15T15:16:54.237Z 
│                        │      ╰ LastModifiedDate: 2026-05-19T12:27:28.72Z 
│                        ├ [84] ╭ VulnerabilityID : CVE-2026-43961 
│                        │      ├ PkgID           : vim-common@2:9.1.2141-1ubuntu4.2 
│                        │      ├ PkgName         : vim-common 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.2141-1ubuntu4.2?arch=a
│                        │      │                  │       ll&distro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : 556dc3f8f5b38f26 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43961 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:923fc388f448ee192a8947b166b13970ac59824b40a3a2f46271
│                        │      │                   4c86190d40db 
│                        │      ├ Description     : [Unknown description] 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ ubuntu: 2 
│                        │      ╰ References       ╭ [0]: https://github.com/vim/vim/security/advisories/GHSA-6
│                        │                         │      6hr-7p6x-x5j3 
│                        │                         ├ [1]: https://www.cve.org/CVERecord?id=CVE-2026-43961 
│                        │                         ╰ [2]: https://www.openwall.com/lists/oss-security/2026/05/1
│                        │                                4/7 
│                        ├ [85] ╭ VulnerabilityID : CVE-2026-46483 
│                        │      ├ PkgID           : vim-common@2:9.1.2141-1ubuntu4.2 
│                        │      ├ PkgName         : vim-common 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.2141-1ubuntu4.2?arch=a
│                        │      │                  │       ll&distro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : 556dc3f8f5b38f26 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46483 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:640e72c08104755683871b9676d94fb4a2e1d3cfda04756d5a4d
│                        │      │                   ee3dc61b9c2e 
│                        │      ├ Title           : vim: command injection when decompressing .tgz archives 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   9.2.0479, a command injection vulnerability exists in
│                        │      │                   tar#Vimuntar() in
│                        │      │                   runtime/autoload/tar.vim when decompressing .tgz archives
│                        │      │                   on Unix-like systems. The function builds :!gunzip and
│                        │      │                   :!gzip -d commands using shellescape(tartail) without the
│                        │      │                   {special} flag, allowing a crafted archive filename to
│                        │      │                   trigger Vim cmdline-special expansion and execute shell
│                        │      │                   commands in the user's context. This vulnerability is fixed
│                        │      │                    in 9.2.0479. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-78 
│                        │      │                  ╰ [1]: CWE-88 
│                        │      ├ VendorSeverity   ╭ nvd   : 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-46483 
│                        │      │                  ├ [1]: https://github.com/vim/vim/commit/3fb5e58fbc63d86a3e6
│                        │      │                  │      5f1a141b0d67af2aa38a1 
│                        │      │                  ├ [2]: https://github.com/vim/vim/commit/3fb5e58fbc63d86a3e6
│                        │      │                  │      5f1a141b0d67af2aa38a1 (v9.2.0479) 
│                        │      │                  ├ [3]: https://github.com/vim/vim/releases/tag/v9.2.0479 
│                        │      │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-2
│                        │      │                  │      fpv-9ff7-xg5w 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-46483 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-46483 
│                        │      ├ PublishedDate   : 2026-05-15T15:16:54.237Z 
│                        │      ╰ LastModifiedDate: 2026-05-19T12:27:28.72Z 
│                        ├ [86] ╭ VulnerabilityID : CVE-2026-43961 
│                        │      ├ PkgID           : vim-runtime@2:9.1.2141-1ubuntu4.2 
│                        │      ├ PkgName         : vim-runtime 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.2141-1ubuntu4.2?arch=
│                        │      │                  │       all&distro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : 2b8e057fcebcb567 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43961 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:5f5764068ccad2528526d8af213a8169b5883fe8dd281ab1b593
│                        │      │                   68073c64648a 
│                        │      ├ Description     : [Unknown description] 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ ubuntu: 2 
│                        │      ╰ References       ╭ [0]: https://github.com/vim/vim/security/advisories/GHSA-6
│                        │                         │      6hr-7p6x-x5j3 
│                        │                         ├ [1]: https://www.cve.org/CVERecord?id=CVE-2026-43961 
│                        │                         ╰ [2]: https://www.openwall.com/lists/oss-security/2026/05/1
│                        │                                4/7 
│                        ├ [87] ╭ VulnerabilityID : CVE-2026-46483 
│                        │      ├ PkgID           : vim-runtime@2:9.1.2141-1ubuntu4.2 
│                        │      ├ PkgName         : vim-runtime 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.2141-1ubuntu4.2?arch=
│                        │      │                  │       all&distro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : 2b8e057fcebcb567 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46483 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:bfe724050e5f8a5fef5d3e62b742b0af6bb864fc4047eda652a9
│                        │      │                   15a67435f09e 
│                        │      ├ Title           : vim: command injection when decompressing .tgz archives 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   9.2.0479, a command injection vulnerability exists in
│                        │      │                   tar#Vimuntar() in
│                        │      │                   runtime/autoload/tar.vim when decompressing .tgz archives
│                        │      │                   on Unix-like systems. The function builds :!gunzip and
│                        │      │                   :!gzip -d commands using shellescape(tartail) without the
│                        │      │                   {special} flag, allowing a crafted archive filename to
│                        │      │                   trigger Vim cmdline-special expansion and execute shell
│                        │      │                   commands in the user's context. This vulnerability is fixed
│                        │      │                    in 9.2.0479. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-78 
│                        │      │                  ╰ [1]: CWE-88 
│                        │      ├ VendorSeverity   ╭ nvd   : 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 7 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-46483 
│                        │      │                  ├ [1]: https://github.com/vim/vim/commit/3fb5e58fbc63d86a3e6
│                        │      │                  │      5f1a141b0d67af2aa38a1 
│                        │      │                  ├ [2]: https://github.com/vim/vim/commit/3fb5e58fbc63d86a3e6
│                        │      │                  │      5f1a141b0d67af2aa38a1 (v9.2.0479) 
│                        │      │                  ├ [3]: https://github.com/vim/vim/releases/tag/v9.2.0479 
│                        │      │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-2
│                        │      │                  │      fpv-9ff7-xg5w 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-46483 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-46483 
│                        │      ├ PublishedDate   : 2026-05-15T15:16:54.237Z 
│                        │      ╰ LastModifiedDate: 2026-05-19T12:27:28.72Z 
│                        ├ [88] ╭ VulnerabilityID : CVE-2021-31879 
│                        │      ├ PkgID           : wget@1.25.0-2ubuntu4 
│                        │      ├ PkgName         : wget 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/wget@1.25.0-2ubuntu4?arch=amd64&distr
│                        │      │                  │       o=ubuntu-26.04 
│                        │      │                  ╰ UID : a886bdd7bd7f93f6 
│                        │      ├ InstalledVersion: 1.25.0-2ubuntu4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-31879 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3f011459c450b8cfa56277a77153c6b8bc49aaaf2c2e4b0be304
│                        │      │                   a794ed4a2bac 
│                        │      ├ Title           : wget: authorization header disclosure on redirect 
│                        │      ├ Description     : GNU Wget through 1.21.1 does not omit the Authorization
│                        │      │                   header upon a redirect to a different origin, a related
│                        │      │                   issue to CVE-2018-1000007. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-601 
│                        │      ├ VendorSeverity   ╭ amazon     : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ nvd        : 2 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:P/I:P/A:N 
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
│                        │      ╰ LastModifiedDate: 2024-11-21T06:06:25.02Z 
│                        ├ [89] ╭ VulnerabilityID : CVE-2026-43961 
│                        │      ├ PkgID           : xxd@2:9.1.2141-1ubuntu4.2 
│                        │      ├ PkgName         : xxd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.2141-1ubuntu4.2?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : 39c0355d47243409 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-43961 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:76fe4da6d46e669a6541c69288769c38d2ef2ceb8d1ea219f8ee
│                        │      │                   c087f666261f 
│                        │      ├ Description     : [Unknown description] 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ ubuntu: 2 
│                        │      ╰ References       ╭ [0]: https://github.com/vim/vim/security/advisories/GHSA-6
│                        │                         │      6hr-7p6x-x5j3 
│                        │                         ├ [1]: https://www.cve.org/CVERecord?id=CVE-2026-43961 
│                        │                         ╰ [2]: https://www.openwall.com/lists/oss-security/2026/05/1
│                        │                                4/7 
│                        ╰ [90] ╭ VulnerabilityID : CVE-2026-46483 
│                               ├ PkgID           : xxd@2:9.1.2141-1ubuntu4.2 
│                               ├ PkgName         : xxd 
│                               ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.2141-1ubuntu4.2?arch=amd64&di
│                               │                  │       stro=ubuntu-26.04&epoch=2 
│                               │                  ╰ UID : 39c0355d47243409 
│                               ├ InstalledVersion: 2:9.1.2141-1ubuntu4.2 
│                               ├ Status          : affected 
│                               ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                               │                  │         70473847ed1715eab2460 
│                               │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                               │                            f04aee4f84681a64877c0 
│                               ├ SeveritySource  : ubuntu 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46483 
│                               ├ DataSource       ╭ ID  : ubuntu 
│                               │                  ├ Name: Ubuntu CVE Tracker 
│                               │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                               ├ Fingerprint     : sha256:eaca0caf297dab85114f33b6cc09b138981eadb6c7f23ac7d213
│                               │                   44cf4d92529d 
│                               ├ Title           : vim: command injection when decompressing .tgz archives 
│                               ├ Description     : Vim is an open source, command line text editor. Prior to
│                               │                   9.2.0479, a command injection vulnerability exists in
│                               │                   tar#Vimuntar() in
│                               │                   runtime/autoload/tar.vim when decompressing .tgz archives
│                               │                   on Unix-like systems. The function builds :!gunzip and
│                               │                   :!gzip -d commands using shellescape(tartail) without the
│                               │                   {special} flag, allowing a crafted archive filename to
│                               │                   trigger Vim cmdline-special expansion and execute shell
│                               │                   commands in the user's context. This vulnerability is fixed
│                               │                    in 9.2.0479. 
│                               ├ Severity        : MEDIUM 
│                               ├ CweIDs           ╭ [0]: CWE-78 
│                               │                  ╰ [1]: CWE-88 
│                               ├ VendorSeverity   ╭ nvd   : 3 
│                               │                  ├ redhat: 2 
│                               │                  ╰ ubuntu: 2 
│                               ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:
│                               │                  │        │           H/A:H 
│                               │                  │        ╰ V3Score : 7 
│                               │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:R/S:U/C:H/I:
│                               │                           │           H/A:H 
│                               │                           ╰ V3Score : 7 
│                               ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-46483 
│                               │                  ├ [1]: https://github.com/vim/vim/commit/3fb5e58fbc63d86a3e6
│                               │                  │      5f1a141b0d67af2aa38a1 
│                               │                  ├ [2]: https://github.com/vim/vim/commit/3fb5e58fbc63d86a3e6
│                               │                  │      5f1a141b0d67af2aa38a1 (v9.2.0479) 
│                               │                  ├ [3]: https://github.com/vim/vim/releases/tag/v9.2.0479 
│                               │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-2
│                               │                  │      fpv-9ff7-xg5w 
│                               │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-46483 
│                               │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-46483 
│                               ├ PublishedDate   : 2026-05-15T15:16:54.237Z 
│                               ╰ LastModifiedDate: 2026-05-19T12:27:28.72Z 
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
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-46680 
│                        │      ├ VendorIDs        ─ [0]: GHSA-fqw6-gf59-qr4w 
│                        │      ├ PkgID           : github.com/containerd/containerd/v2@v2.2.3 
│                        │      ├ PkgName         : github.com/containerd/containerd/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.3 
│                        │      │                  ╰ UID : baa14ee9769f7d12 
│                        │      ├ InstalledVersion: v2.2.3 
│                        │      ├ FixedVersion    : 2.0.9, 2.2.4, 2.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:9373723d5627bc0f8c85a93cd14efcd11ed789a2ec709dd5606f
│                        │      │                   b12f70d0b998 
│                        │      ├ Title           : containerd user ID handling bypass allows runAsNonRoot
│                        │      │                   evasion 
│                        │      ├ Description     : ### Impact
│                        │      │                   A bug was found in containerd where containers launched
│                        │      │                   with a numeric `User` directive that cannot be parsed as a
│                        │      │                   32-bit integer are incorrectly treated as a username. If a
│                        │      │                   crafted image provides an `/etc/passwd` file mapping this
│                        │      │                   large numeric string to root, the container ultimately runs
│                        │      │                    as root (UID 0). This allows the Kubernetes `runAsNonRoot`
│                        │      │                    restriction to be bypassed, causing unexpected behavior
│                        │      │                   for environments that require containers to run as a
│                        │      │                   non-root user.
│                        │      │                   
│                        │      │                   ### Patches
│                        │      │                   This bug has been fixed in the following containerd
│                        │      │                   versions:
│                        │      │                   * 2.3.1
│                        │      │                   * 2.2.4
│                        │      │                   * 2.0.9
│                        │      │                   * 1.7.32
│                        │      │                   Note: The containerd 2.1 release has reached its [end of
│                        │      │                   life](https://containerd.io/releases/#current-state-of-cont
│                        │      │                   ainerd-releases) and a fixed version is not provided.
│                        │      │                   Users should update to these versions to resolve the
│                        │      │                   issue.
│                        │      │                   ### Workarounds
│                        │      │                   Ensure that only trusted images are used and that only
│                        │      │                   trusted users have permissions to import images.
│                        │      │                   Alternatively, enforcing a specific numeric `runAsUser` in
│                        │      │                   the Kubernetes Pod `securityContext` overrides the `USER`
│                        │      │                   directive in the image and prevents the bypass. Newer
│                        │      │                   versions of Kubernetes, starting with 1.34, also appear to
│                        │      │                   enforce `runAsNonRoot` properly regardless of this bug.
│                        │      │                   ### Credits
│                        │      │                   The containerd project would like to thank Lei Wang
│                        │      │                   (@ssst0n3) for responsibly disclosing this issue in
│                        │      │                   accordance with the [containerd security
│                        │      │                   policy](https://github.com/containerd/project/blob/main/SEC
│                        │      │                   URITY.md).
│                        │      │                   ### Resources
│                        │      │                   * https://github.com/advisories/GHSA-265r-hfxg-fhmg
│                        │      │                   (CVE-2024-40635)
│                        │      │                   ### For more information
│                        │      │                   If there are any questions or comments about this
│                        │      │                   advisory:
│                        │      │                   * Open an issue in
│                        │      │                   [containerd](https://github.com/containerd/containerd/issue
│                        │      │                   s/new/choose)
│                        │      │                   * Send an email to
│                        │      │                   [security@containerd.io](mailto:security@containerd.io)
│                        │      │                   To report a security issue in containerd:
│                        │      │                   * [Report a new
│                        │      │                   vulnerability](https://github.com/containerd/containerd/sec
│                        │      │                   urity/advisories/new)
│                        │      │                   [security@containerd.io](mailto:security@containerd.io) 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:P/VC:H/V
│                        │      │                         │            I:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                         ╰ V40Score : 7.3 
│                        │      ╰ References       ╭ [0]: https://github.com/containerd/containerd 
│                        │                         ╰ [1]: https://github.com/containerd/containerd/security/adv
│                        │                                isories/GHSA-fqw6-gf59-qr4w 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-34040 
│                        │      ├ VendorIDs        ─ [0]: GHSA-x744-4wpc-v9h2 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ FixedVersion    : 29.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:564a2c7d4a9b56bf108a161fc3629ddb497bd26d7b7085a78925
│                        │      │                   85642fa5bd10 
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
│                        │      ╰ LastModifiedDate: 2026-04-03T16:51:28.67Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-41567 
│                        │      ├ VendorIDs        ─ [0]: GHSA-x86f-5xw2-fm2r 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:6cce58da8e8af4c9cc73e88e93fb2fea8573dbd648d37dc5b18a
│                        │      │                   3b8bfd1ac507 
│                        │      ├ Title           : Docker: `PUT /containers/{id}/archive` executes container
│                        │      │                   binary on the host 
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
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:H/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 7.2 
│                        │      ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │      │                  ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                         -x86f-5xw2-fm2r 
│                        │      ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │      ╰ LastModifiedDate: 2026-06-05T16:01:30.983Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-42306 
│                        │      ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:773861d69fde6ad30343262f7f4982db76c6eb56f5c512019654
│                        │      │                   e9d7f37bfdbf 
│                        │      ├ Title           : Docker: Race condition in docker cp allows bind mount
│                        │      │                   redirection to host path 
│                        │      ├ Description     : ## Summary
│                        │      │                   
│                        │      │                   A race condition during `docker cp` mount setup allows a
│                        │      │                   malicious container to redirect a bind mount target to an
│                        │      │                   arbitrary host path, potentially overwriting host files or
│                        │      │                   causing denial of service.
│                        │      │                   ## Details
│                        │      │                   When copying files into a container, the daemon sets up a
│                        │      │                   temporary filesystem view by bind-mounting volumes into a
│                        │      │                   private mount namespace. During this setup, the mount
│                        │      │                   destination is created inside the container root and then a
│                        │      │                    bind mount is attached using the container-relative path
│                        │      │                   resolved to an absolute host path.
│                        │      │                   Between mountpoint creation and the `mount()` syscall, a
│                        │      │                   process running inside the container can replace the
│                        │      │                   destination (or a parent path component) with a symlink
│                        │      │                   pointing to an arbitrary location on the host. The
│                        │      │                   `mount()` syscall follows the symlink, causing the volume
│                        │      │                   to be bind-mounted onto an arbitrary host path instead of
│                        │      │                   the intended container path.
│                        │      │                   ## Impact
│                        │      │                   A malicious container can redirect a volume bind mount to
│                        │      │                   an arbitrary host path. The impact depends on the volume
│                        │      │                   content and mount options:
│                        │      │                   - If the volume is writable, arbitrary host files at the
│                        │      │                   redirected path could be overwritten with the volume's
│                        │      │                   contents.
│                        │      │                   - If the volume is read-only, the host path is masked by
│                        │      │                   the mount for the duration of the operation, causing denial
│                        │      │                    of service.
│                        │      │                   - In all cases the mount is temporary (torn down after the
│                        │      │                   `docker cp` completes), but the effects of any writes
│                        │      │                   persist.
│                        │      │                   ### Conditions for exploitation
│                        │      │                   - A container must have at least one volume mount.
│                        │      │                   - A process inside the container must be able to rapidly
│                        │      │                   create and swap symlinks at the volume mount destination
│                        │      │                   path.
│                        │      │                   - An operator must initiate a `docker cp` into that
│                        │      │                   container, or call the `PUT /containers/{id}/archive` or
│                        │      │                   `HEAD /containers/{id}/archive` API endpoints.
│                        │      │                   ### Not affected
│                        │      │                   - Containers that do not have volume mounts are not
│                        │      │                   affected, as the race occurs during volume bind-mount
│                        │      │                   setup.
│                        │      │                   ## Workarounds
│                        │      │                   - Only run containers from trusted images.
│                        │      │                   - Avoid using `docker cp` with untrusted running
│                        │      │                   containers.
│                        │      │                   - Use authorization plugins to restrict access to the
│                        │      │                   archive API endpoints (`PUT /containers/{id}/archive`,
│                        │      │                   `HEAD /containers/{id}/archive`). 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7.2 
│                        │      ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                         ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │                                -rg2x-37c3-w2rh 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-33997 
│                        │      ├ VendorIDs        ─ [0]: GHSA-pxq6-2prw-chj9 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ FixedVersion    : 29.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:635d8dae8fd9877e9ed30b1d62a7a5fa11d9a074897d47fec7d2
│                        │      │                   23742afe7574 
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
│                        │      ├ CweIDs           ─ [0]: CWE-193 
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
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33997 
│                        │      │                  ├ [1]: https://docs.docker.com/engine/extend/legacy_plugins 
│                        │      │                  ├ [2]: https://github.com/moby/moby 
│                        │      │                  ├ [3]: https://github.com/moby/moby/commit/f4d6f25bf0c3fa12d
│                        │      │                  │      4968320a45685947756a22a 
│                        │      │                  ├ [4]: https://github.com/moby/moby/releases/tag/docker-v29.
│                        │      │                  │      3.1 
│                        │      │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -pxq6-2prw-chj9 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-33997 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-33997 
│                        │      ├ PublishedDate   : 2026-03-31T03:15:57.523Z 
│                        │      ╰ LastModifiedDate: 2026-04-03T17:23:21.307Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-41568 
│                        │      ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:923de5a9368ae617493ed4fda112ce145b839d3f0aa3cb03999b
│                        │      │                   3fd7084cee4c 
│                        │      ├ Title           : Docker: Race condition in docker cp allows creation of
│                        │      │                   arbitrary empty files on the host via symlink swap 
│                        │      ├ Description     : ## Summary
│                        │      │                   
│                        │      │                   A race condition during `docker cp` mount setup allows a
│                        │      │                   malicious container to create empty files or directories at
│                        │      │                    arbitrary absolute paths on the host filesystem.
│                        │      │                   This advisory covers the race during mountpoint creation.
│                        │      │                   The related race during the subsequent mount syscall is
│                        │      │                   tracked in GHSA-rg2x-37c3-w2rh
│                        │      │                   ## Details
│                        │      │                   When copying files into a container, the daemon sets up a
│                        │      │                   temporary filesystem view by bind-mounting volumes into a
│                        │      │                   private mount namespace. During this setup, the mount
│                        │      │                   destination path is first resolved within the container's
│                        │      │                   root filesystem using `GetResourcePath`, and then used to
│                        │      │                   create the mountpoint (file or directory) if it does not
│                        │      │                   already exist via `createIfNotExists`.
│                        │      │                   Between path resolution and mountpoint creation, a process
│                        │      │                   running inside the container can swap a path component for
│                        │      │                   a symlink pointing to an arbitrary location on the host.
│                        │      │                   Because `createIfNotExists` operates on the
│                        │      │                   already-resolved absolute path using standard `os.MkdirAll`
│                        │      │                    and `os.OpenFile` — which follow symlinks in intermediate
│                        │      │                   path components — the symlink is followed and the file or
│                        │      │                   directory is created outside the container root filesystem,
│                        │      │                    as root.
│                        │      │                   ## Impact
│                        │      │                   A malicious container can create empty files or directories
│                        │      │                    at arbitrary absolute paths on the host filesystem,
│                        │      │                   running as root. This enables persistent denial of service
│                        │      │                   — for example:
│                        │      │                   - Converting `/etc/docker/daemon.json` into a directory
│                        │      │                   prevents the daemon from restarting
│                        │      │                   - Creating `/etc/nologin` prevents user logins
│                        │      │                   - Overwriting critical system paths with empty files can
│                        │      │                   break host services
│                        │      │                   The container does not gain read or write access to
│                        │      │                   existing host files — only the ability to create new empty
│                        │      │                   files or directories at chosen paths.
│                        │      │                   ### Conditions for exploitation
│                        │      │                   - A container must be running with a process that can
│                        │      │                   rapidly create and swap symlinks at a volume mount
│                        │      │                   destination path.
│                        │      │                   - An operator must initiate a `docker cp` into that
│                        │      │                   container, or call the `PUT /containers/{id}/archive` or
│                        │      │                   `HEAD /containers/{id}/archive` API endpoints.
│                        │      │                   ### Not affected
│                        │      │                   - Containers that do not have volume mounts are not
│                        │      │                   affected, as the race occurs during volume bind-mount
│                        │      │                   setup.
│                        │      │                   ## Patches
│                        │      │                   Mountpoint creation is now scoped to the container root
│                        │      │                   using `os.Root` (Go 1.24+), which refuses to follow
│                        │      │                   symlinks that escape the opened root directory. All
│                        │      │                   filesystem operations in `createIfNotExists` (`MkdirAll`,
│                        │      │                   `OpenFile`) are performed through the `os.Root` handle, so
│                        │      │                   even if a symlink swap occurs after path resolution, the
│                        │      │                   creation stays confined to the container root.
│                        │      │                   ## Workarounds
│                        │      │                   - Only run containers from trusted images.
│                        │      │                   - Avoid using `docker cp` with untrusted running
│                        │      │                   containers.
│                        │      │                   - Use authorization plugins to restrict access to the
│                        │      │                   archive API endpoints (`PUT /containers/{id}/archive`,
│                        │      │                   `HEAD /containers/{id}/archive`). 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ ghsa: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 6 
│                        │      ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                         ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │                                -vp62-88p7-qqf5 
│                        ├ [6]  ╭ VulnerabilityID : GHSA-pmwq-pjrm-6p5r 
│                        │      ├ PkgID           : github.com/in-toto/in-toto-golang@v0.10.0 
│                        │      ├ PkgName         : github.com/in-toto/in-toto-golang 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/in-toto/in-toto-golang@v0.10.0 
│                        │      │                  ╰ UID : 2f00fd2b28b6e12f 
│                        │      ├ InstalledVersion: v0.10.0 
│                        │      ├ FixedVersion    : 0.11.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-pmwq-pjrm-6p5r 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:f04a650b76a8222e51e988fdeefef171faea7146a3344839e681
│                        │      │                   dc2dbf208ee6 
│                        │      ├ Title           : in-toto-golang and in-toto-python have inconsistent
│                        │      │                   negation behavior 
│                        │      ├ Description     : ### Impact
│                        │      │                   _What kind of vulnerability is it? Who is impacted?_
│                        │      │                   
│                        │      │                   in-toto-golang and in-toto-python both support glob
│                        │      │                   patterns in artifact rules to indicate the artifacts that a
│                        │      │                    rule applies to. Both support negations in character
│                        │      │                   classes to indicate what should *not* be matched, but they
│                        │      │                   used different operators to indicate the negation.
│                        │      │                   in-toto-python uses `!` while in-toto-golang used `^`. A
│                        │      │                   layout authored with the expectations of one implementation
│                        │      │                    can therefore exhibit different behavior in the other
│                        │      │                   implementation.
│                        │      │                   This impacts users in a specific set of circumstances where
│                        │      │                    two different implementations are used to verify the same
│                        │      │                   layout + attestation bundle at different stages of the same
│                        │      │                    pipeline. As a rule of thumb, we advise using a single
│                        │      │                   implementation across all aspects of a pipeline, from
│                        │      │                   layout creation to pipeline execution and verification to
│                        │      │                   prevent this class of bugs.
│                        │      │                   ### Patches
│                        │      │                   _Has the problem been patched? What versions should users
│                        │      │                   upgrade to?_
│                        │      │                   in-toto-golang has been updated to use `!` instead of `^`
│                        │      │                   to indicate negation. See
│                        │      │                   https://github.com/in-toto/in-toto-golang/pull/462. This is
│                        │      │                    part of v0.11.0. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ ghsa: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:N/I:H/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 4.1 
│                        │      ├ References       ╭ [0]: https://github.com/in-toto/in-toto-golang 
│                        │      │                  ├ [1]: https://github.com/in-toto/in-toto-golang/commit/36d7
│                        │      │                  │      82ffb2ca3adbffcdce1fd971c23319dd4469 
│                        │      │                  ├ [2]: https://github.com/in-toto/in-toto-golang/pull/462 
│                        │      │                  ╰ [3]: https://github.com/in-toto/in-toto-golang/security/ad
│                        │      │                         visories/GHSA-pmwq-pjrm-6p5r 
│                        │      ├ PublishedDate   : 2026-05-08T22:24:19Z 
│                        │      ╰ LastModifiedDate: 2026-05-08T22:24:19Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-39882 
│                        │      ├ VendorIDs        ─ [0]: GHSA-w8rr-5gcm-pp58 
│                        │      ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetr
│                        │      │                   ichttp@v1.42.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetr
│                        │      │                   ichttp 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/o
│                        │      │                  │       tlpmetric/otlpmetrichttp@v1.42.0 
│                        │      │                  ╰ UID : f0b837b62a848b5 
│                        │      ├ InstalledVersion: v1.42.0 
│                        │      ├ FixedVersion    : 1.43.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:aedf3388d6790ef4e4497ecfc148a466c6a1465e830628a11769
│                        │      │                   8c547996411e 
│                        │      ├ Title           : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    Prior to 1 ... 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    Prior to 1.43.0, the otlp HTTP exporters
│                        │      │                   (traces/metrics/logs) read the full HTTP response body into
│                        │      │                    an in-memory bytes.Buffer without a size cap. This is
│                        │      │                   exploitable for memory exhaustion when the configured
│                        │      │                   collector endpoint is attacker-controlled (or a network
│                        │      │                   attacker can mitm the exporter connection). This
│                        │      │                   vulnerability is fixed in 1.43.0. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-789 
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 2 
│                        │      │                  ╰ ghsa  : 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rel
│                        │      │                  │      eases/tag/v1.43.0 
│                        │      │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go 
│                        │      │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/pu
│                        │      │                  │      ll/8108 
│                        │      │                  ├ [3]: https://github.com/open-telemetry/opentelemetry-go/se
│                        │      │                  │      curity/advisories/GHSA-w8rr-5gcm-pp58 
│                        │      │                  ╰ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-39882 
│                        │      ├ PublishedDate   : 2026-04-08T21:17:00.547Z 
│                        │      ╰ LastModifiedDate: 2026-04-09T18:39:55.73Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-39882 
│                        │      ├ VendorIDs        ─ [0]: GHSA-w8rr-5gcm-pp58 
│                        │      ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptrace
│                        │      │                   http@v1.42.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptrace
│                        │      │                   http 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/o
│                        │      │                  │       tlptrace/otlptracehttp@v1.42.0 
│                        │      │                  ╰ UID : d74e0213d70ffe9b 
│                        │      ├ InstalledVersion: v1.42.0 
│                        │      ├ FixedVersion    : 1.43.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:a2e8f0f93c4e60596e145cfa18b112c06952546abf92a2a956c8
│                        │      │                   5ed1dba0e160 
│                        │      ├ Title           : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    Prior to 1 ... 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    Prior to 1.43.0, the otlp HTTP exporters
│                        │      │                   (traces/metrics/logs) read the full HTTP response body into
│                        │      │                    an in-memory bytes.Buffer without a size cap. This is
│                        │      │                   exploitable for memory exhaustion when the configured
│                        │      │                   collector endpoint is attacker-controlled (or a network
│                        │      │                   attacker can mitm the exporter connection). This
│                        │      │                   vulnerability is fixed in 1.43.0. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-789 
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 2 
│                        │      │                  ╰ ghsa  : 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rel
│                        │      │                  │      eases/tag/v1.43.0 
│                        │      │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go 
│                        │      │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/pu
│                        │      │                  │      ll/8108 
│                        │      │                  ├ [3]: https://github.com/open-telemetry/opentelemetry-go/se
│                        │      │                  │      curity/advisories/GHSA-w8rr-5gcm-pp58 
│                        │      │                  ╰ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-39882 
│                        │      ├ PublishedDate   : 2026-04-08T21:17:00.547Z 
│                        │      ╰ LastModifiedDate: 2026-04-09T18:39:55.73Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-42504 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : a666274d93d07c0d 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:ae645366a32986f9cefb8cb8c01d2bdb2469d221dbcdff4352b0
│                        │      │                   10c44bde9c66 
│                        │      ├ Title           : Decoding a maliciously-crafted MIME header containing many
│                        │      │                   invalid enc ... 
│                        │      ├ Description     : Decoding a maliciously-crafted MIME header containing many
│                        │      │                   invalid encoded-words can consume excessive CPU. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-407 
│                        │      ├ VendorSeverity   ─ bitnami: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/774481 
│                        │      │                  ├ [1]: https://go.dev/issue/79217 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                        │      │                  │      BcKw 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42504 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5038 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │      ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-27145 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5037 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : a666274d93d07c0d 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:aa5c6d10ac8b559a0a3bb29eb8f258ece73ab1186e09c1ca677a
│                        │      │                   97b06cf45627 
│                        │      ├ Title           : *x509.Certificate).VerifyHostname previously called
│                        │      │                   matchHostnames in ... 
│                        │      ├ Description     : (*x509.Certificate).VerifyHostname previously called
│                        │      │                   matchHostnames in a loop over all DNS Subject Alternative
│                        │      │                   Name (SAN) entries. This caused strings.Split(host, ".") to
│                        │      │                    execute repeatedly on the same input hostname. With a
│                        │      │                   large DNS SAN list, verification costs scaled quadratically
│                        │      │                    based on the number of SAN entries multiplied by the
│                        │      │                   hostname's label count. Because x509.Verify validates
│                        │      │                   hostnames before building the certificate chain, this
│                        │      │                   overhead occurred even for untrusted certificates. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ bitnami: 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :L/A:H 
│                        │      │                            ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/783621 
│                        │      │                  ├ [1]: https://go.dev/issue/79694 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                        │      │                  │      BcKw 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5037 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │      ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ╰ [11] ╭ VulnerabilityID : CVE-2026-42507 
│                               ├ VendorIDs        ─ [0]: GO-2026-5039 
│                               ├ PkgID           : stdlib@v1.26.3 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                               │                  ╰ UID : a666274d93d07c0d 
│                               ├ InstalledVersion: v1.26.3 
│                               ├ FixedVersion    : 1.25.11, 1.26.4 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                               │                  │         70473847ed1715eab2460 
│                               │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                               │                            f04aee4f84681a64877c0 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:50b31119f300ec1e3fb471689d9bdf867a8ec1930b0ff8aa3a8c
│                               │                   bd87be0ccea3 
│                               ├ Title           : When returning errors, functions in the net/textproto
│                               │                   package would in ... 
│                               ├ Description     : When returning errors, functions in the net/textproto
│                               │                   package would include its input as part of the error. This
│                               │                   might allow an attacker to inject misleading content to
│                               │                   errors that are printed or logged. 
│                               ├ Severity        : MEDIUM 
│                               ├ VendorSeverity   ─ bitnami: 2 
│                               ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                               │                            │           :L/A:N 
│                               │                            ╰ V3Score : 5.3 
│                               ├ References       ╭ [0]: https://go.dev/cl/777060 
│                               │                  ├ [1]: https://go.dev/issue/79346 
│                               │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                               │                  │      BcKw 
│                               │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
│                               │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5039 
│                               ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
│                               ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
├ [4]  ╭ Target  : usr/bin/docker-proxy 
│      ├ Class   : lang-pkgs 
│      ├ Type    : gobinary 
│      ╰ Packages 
├ [5]  ╭ Target  : usr/bin/dockerd 
│      ├ Class   : lang-pkgs 
│      ├ Type    : gobinary 
│      ╰ Packages 
├ [6]  ╭ Target         : usr/bin/helm 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-42504 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │     ├ PkgID           : stdlib@v1.26.3 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │     │                  ╰ UID : 84283d77d4e86645 
│                        │     ├ InstalledVersion: v1.26.3 
│                        │     ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:795ec88ba5355a85716a5ebac67298fcb8bb48b08567d373bf972
│                        │     │                   b43572fa966 
│                        │     ├ Title           : Decoding a maliciously-crafted MIME header containing many
│                        │     │                   invalid enc ... 
│                        │     ├ Description     : Decoding a maliciously-crafted MIME header containing many
│                        │     │                   invalid encoded-words can consume excessive CPU. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-407 
│                        │     ├ VendorSeverity   ─ bitnami: 3 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/774481 
│                        │     │                  ├ [1]: https://go.dev/issue/79217 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                        │     │                  │      cKw 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42504 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5038 
│                        │     ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │     ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-27145 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5037 
│                        │     ├ PkgID           : stdlib@v1.26.3 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │     │                  ╰ UID : 84283d77d4e86645 
│                        │     ├ InstalledVersion: v1.26.3 
│                        │     ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:ba5dbf20b909b075614bcbfc9251f70d3528bfc4e150dcf9fa10c
│                        │     │                   6f5fbf5f796 
│                        │     ├ Title           : *x509.Certificate).VerifyHostname previously called
│                        │     │                   matchHostnames in ... 
│                        │     ├ Description     : (*x509.Certificate).VerifyHostname previously called
│                        │     │                   matchHostnames in a loop over all DNS Subject Alternative
│                        │     │                   Name (SAN) entries. This caused strings.Split(host, ".") to
│                        │     │                   execute repeatedly on the same input hostname. With a large
│                        │     │                   DNS SAN list, verification costs scaled quadratically based
│                        │     │                   on the number of SAN entries multiplied by the hostname's
│                        │     │                   label count. Because x509.Verify validates hostnames before
│                        │     │                   building the certificate chain, this overhead occurred even
│                        │     │                   for untrusted certificates. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ VendorSeverity   ─ bitnami: 2 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           L/A:H 
│                        │     │                            ╰ V3Score : 6.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/783621 
│                        │     │                  ├ [1]: https://go.dev/issue/79694 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                        │     │                  │      cKw 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5037 
│                        │     ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │     ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ╰ [2] ╭ VulnerabilityID : CVE-2026-42507 
│                              ├ VendorIDs        ─ [0]: GO-2026-5039 
│                              ├ PkgID           : stdlib@v1.26.3 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                              │                  ╰ UID : 84283d77d4e86645 
│                              ├ InstalledVersion: v1.26.3 
│                              ├ FixedVersion    : 1.25.11, 1.26.4 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                              │                  │         0473847ed1715eab2460 
│                              │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                              │                            04aee4f84681a64877c0 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:a87eff06c5c9d92b8528e68588fb138e15a3cd28a6343847eb6bd
│                              │                   5dabd2ba9f7 
│                              ├ Title           : When returning errors, functions in the net/textproto
│                              │                   package would in ... 
│                              ├ Description     : When returning errors, functions in the net/textproto
│                              │                   package would include its input as part of the error. This
│                              │                   might allow an attacker to inject misleading content to
│                              │                   errors that are printed or logged. 
│                              ├ Severity        : MEDIUM 
│                              ├ VendorSeverity   ─ bitnami: 2 
│                              ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                              │                            │           L/A:N 
│                              │                            ╰ V3Score : 5.3 
│                              ├ References       ╭ [0]: https://go.dev/cl/777060 
│                              │                  ├ [1]: https://go.dev/issue/79346 
│                              │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                              │                  │      cKw 
│                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
│                              │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5039 
│                              ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
│                              ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
├ [7]  ╭ Target         : usr/bin/kubectl 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-33811 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4981 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : 11ef8a1a3b61856 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33811 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:9ad2cffb633a72a8adf66a1fe67e8555f09a2bd537c8acfec399
│                        │      │                   96b91d18f3bc 
│                        │      ├ Title           : net: golang: Go net package: Denial of Service via long
│                        │      │                   CNAME response in LookupCNAME 
│                        │      ├ Description     : When using LookupCNAME with the cgo DNS resolver, a very
│                        │      │                   long CNAME response can trigger a double-free of C memory
│                        │      │                   and a crash. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-415 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ╰ redhat     : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33811 
│                        │      │                  ├ [1]: https://go.dev/cl/767860 
│                        │      │                  ├ [2]: https://go.dev/issue/78803 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [4]: https://linux.oracle.com/cve/CVE-2026-33811.html 
│                        │      │                  ├ [5]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-33811 
│                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2026-4981 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-33811 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:42.77Z 
│                        │      ╰ LastModifiedDate: 2026-05-12T20:23:02.333Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-33814 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4918 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : 11ef8a1a3b61856 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:e8aee8f73caff5eaf3cf3a6a78eefcf899381981b9443be7b6b5
│                        │      │                   823ce6651155 
│                        │      ├ Title           : When processing HTTP/2 SETTINGS frames, transport will
│                        │      │                   enter an infini ... 
│                        │      ├ Description     : When processing HTTP/2 SETTINGS frames, transport will
│                        │      │                   enter an infinite loop of writing CONTINUATION frames if it
│                        │      │                    receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-835 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://github.com/golang/go/issues/78476 
│                        │      │                  ├ [1] : https://go-review.googlesource.com/c/go/+/761581 
│                        │      │                  ├ [2] : https://go-review.googlesource.com/c/net/+/761640 
│                        │      │                  ├ [3] : https://go.dev/cl/761581 
│                        │      │                  ├ [4] : https://go.dev/cl/761640 
│                        │      │                  ├ [5] : https://go.dev/issue/78476 
│                        │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/qcCIEX
│                        │      │                  │       so47M 
│                        │      │                  ├ [7] : https://linux.oracle.com/cve/CVE-2026-33814.html 
│                        │      │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │      │                  ├ [10]: https://pkg.go.dev/vuln/GO-2026-4918 
│                        │      │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T14:41:59.52Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-39820 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4986 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : 11ef8a1a3b61856 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39820 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:de6355657000c039fa751a805332cfd6d7d6e170cad004e8f0c7
│                        │      │                   117099e7ece7 
│                        │      ├ Title           : Well-crafted inputs reaching ParseAddress,
│                        │      │                   ParseAddressList, and Parse ... 
│                        │      ├ Description     : Well-crafted inputs reaching ParseAddress,
│                        │      │                   ParseAddressList, and ParseDate were able to trigger
│                        │      │                   excessive CPU exhaustion and memory allocations. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/759940 
│                        │      │                  ├ [1]: https://go.dev/issue/78566 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39820.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39820 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4986 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.187Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T15:10:58.65Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-39823 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4982 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : 11ef8a1a3b61856 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39823 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:8e14b1983ba077d60dc68ae13353260acae81181173cc317e1a4
│                        │      │                   b4d664e086fd 
│                        │      ├ Title           : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │      │                    correctly  ... 
│                        │      ├ Description     : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │      │                    correctly escaped inside of a <meta> tag's <content>
│                        │      │                   attribute. If the URL content were to insert ASCII
│                        │      │                   whitespaces around the '=' rune inside of the <content>
│                        │      │                   attribute, the escaper would fail to similarly escape it,
│                        │      │                   leading to XSS. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-79 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 6.1 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/769920 
│                        │      │                  ├ [1]: https://go.dev/issue/78913 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39823.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39823 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4982 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.29Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:58:45.697Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-39825 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4976 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : 11ef8a1a3b61856 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39825 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:2fbbb76e4587c9a28eb66d8aca01d9b69a002268f4d0bd3509fb
│                        │      │                   34af080a4692 
│                        │      ├ Title           : ReverseProxy can forward queries containing parameters not
│                        │      │                   visible to  ... 
│                        │      ├ Description     : ReverseProxy can forward queries containing parameters not
│                        │      │                   visible to Rewrite functions. When used with a Rewrite
│                        │      │                   function, or a Director function which parses query
│                        │      │                   parameters, ReverseProxy sanitizes the forwarded request to
│                        │      │                    remove query parameters which are not parsed by
│                        │      │                   url.ParseQuery. ReverseProxy does not take ParseQuery's
│                        │      │                   limit on the total number of query parameters (controlled
│                        │      │                   by GODEBUG=urlmaxqueryparams=N) into account. This can
│                        │      │                   permit ReverseProxy to forward a request containing a query
│                        │      │                    parameter that is not visible to the Rewrite function. For
│                        │      │                    example, the query "a1=x&a2=x&...&a10000=x&hidden=y" can
│                        │      │                   forward the parameter "hidden=y" while hiding it from the
│                        │      │                   proxy's Rewrite function. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/770541 
│                        │      │                  ├ [1]: https://go.dev/issue/78948 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39825.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39825 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4976 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.39Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:58:56.39Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-39826 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4980 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : 11ef8a1a3b61856 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39826 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:e333a5d79ec1db5613b001ab9bbbff926afc668ec622e8716aa6
│                        │      │                   a1f79d3a8029 
│                        │      ├ Title           : If a trusted template author were to write a <script> tag
│                        │      │                   containing a ... 
│                        │      ├ Description     : If a trusted template author were to write a <script> tag
│                        │      │                   containing an empty 'type' attribute or a 'type' attribute
│                        │      │                   with an ASCII whitespace, the execution of the template
│                        │      │                   would incorrectly escape any data passed into the <script>
│                        │      │                   block. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-116 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 6.1 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/771180 
│                        │      │                  ├ [1]: https://go.dev/issue/78981 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39826.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39826 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4980 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.49Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:59:07.48Z 
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-39836 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4971 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : 11ef8a1a3b61856 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39836 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:190c3c664f9ec6f52ffeeb2c12f1fecc1a21f77084ae87427b02
│                        │      │                   cae466ff5dda 
│                        │      ├ Title           : ELSA-2026-22112:  go-toolset:ol8 security update (IMPORTANT) 
│                        │      ├ Description     : The Dial and LookupPort functions panic on Windows when
│                        │      │                   provided with an input containing a NUL (0). 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-476 
│                        │      ├ VendorSeverity   ╭ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/775320 
│                        │      │                  ├ [1]: https://go.dev/issue/79006 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39836.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39836 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4971 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.593Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T15:11:10.31Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-42499 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4977 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : 11ef8a1a3b61856 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42499 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:591bc5a8b3efac1896c6a59644d2b128f9059654e2351955bf6e
│                        │      │                   e08603102685 
│                        │      ├ Title           : Pathological inputs could cause DoS through consumePhrase
│                        │      │                   when parsing ... 
│                        │      ├ Description     : Pathological inputs could cause DoS through consumePhrase
│                        │      │                   when parsing an email address according to RFC 5322. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/771520 
│                        │      │                  ├ [1]: https://go.dev/issue/78987 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-42499.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-42499 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4977 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:44.54Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:59:17.563Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-42504 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : 11ef8a1a3b61856 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:9cb69f9b4b949128c13eb4394075678e236cafc482639cfd06a2
│                        │      │                   3472c0cbc56a 
│                        │      ├ Title           : Decoding a maliciously-crafted MIME header containing many
│                        │      │                   invalid enc ... 
│                        │      ├ Description     : Decoding a maliciously-crafted MIME header containing many
│                        │      │                   invalid encoded-words can consume excessive CPU. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-407 
│                        │      ├ VendorSeverity   ─ bitnami: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/774481 
│                        │      │                  ├ [1]: https://go.dev/issue/79217 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                        │      │                  │      BcKw 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42504 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5038 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │      ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-27145 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5037 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : 11ef8a1a3b61856 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:20d7c74d1e2ed6b9e04f22bc9af0b9dc140b17bd61d97f978431
│                        │      │                   09c71086d629 
│                        │      ├ Title           : *x509.Certificate).VerifyHostname previously called
│                        │      │                   matchHostnames in ... 
│                        │      ├ Description     : (*x509.Certificate).VerifyHostname previously called
│                        │      │                   matchHostnames in a loop over all DNS Subject Alternative
│                        │      │                   Name (SAN) entries. This caused strings.Split(host, ".") to
│                        │      │                    execute repeatedly on the same input hostname. With a
│                        │      │                   large DNS SAN list, verification costs scaled quadratically
│                        │      │                    based on the number of SAN entries multiplied by the
│                        │      │                   hostname's label count. Because x509.Verify validates
│                        │      │                   hostnames before building the certificate chain, this
│                        │      │                   overhead occurred even for untrusted certificates. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ bitnami: 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :L/A:H 
│                        │      │                            ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/783621 
│                        │      │                  ├ [1]: https://go.dev/issue/79694 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                        │      │                  │      BcKw 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5037 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │      ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ╰ [10] ╭ VulnerabilityID : CVE-2026-42507 
│                               ├ VendorIDs        ─ [0]: GO-2026-5039 
│                               ├ PkgID           : stdlib@v1.26.2 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                               │                  ╰ UID : 11ef8a1a3b61856 
│                               ├ InstalledVersion: v1.26.2 
│                               ├ FixedVersion    : 1.25.11, 1.26.4 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                               │                  │         70473847ed1715eab2460 
│                               │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                               │                            f04aee4f84681a64877c0 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:70ca5c7eb25d5dff8d4ad2fbc11bc9254b9da3eaab6bcd674913
│                               │                   abfa04f0974b 
│                               ├ Title           : When returning errors, functions in the net/textproto
│                               │                   package would in ... 
│                               ├ Description     : When returning errors, functions in the net/textproto
│                               │                   package would include its input as part of the error. This
│                               │                   might allow an attacker to inject misleading content to
│                               │                   errors that are printed or logged. 
│                               ├ Severity        : MEDIUM 
│                               ├ VendorSeverity   ─ bitnami: 2 
│                               ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                               │                            │           :L/A:N 
│                               │                            ╰ V3Score : 5.3 
│                               ├ References       ╭ [0]: https://go.dev/cl/777060 
│                               │                  ├ [1]: https://go.dev/issue/79346 
│                               │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                               │                  │      BcKw 
│                               │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
│                               │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5039 
│                               ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
│                               ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
├ [8]  ╭ Target         : usr/bin/pebble 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-33811 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4981 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33811 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:9aff4e510881614de00e51782406b560a2b4521f3e0336debc86
│                        │      │                   7946b5c2b99f 
│                        │      ├ Title           : net: golang: Go net package: Denial of Service via long
│                        │      │                   CNAME response in LookupCNAME 
│                        │      ├ Description     : When using LookupCNAME with the cgo DNS resolver, a very
│                        │      │                   long CNAME response can trigger a double-free of C memory
│                        │      │                   and a crash. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-415 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ╰ redhat     : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33811 
│                        │      │                  ├ [1]: https://go.dev/cl/767860 
│                        │      │                  ├ [2]: https://go.dev/issue/78803 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [4]: https://linux.oracle.com/cve/CVE-2026-33811.html 
│                        │      │                  ├ [5]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-33811 
│                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2026-4981 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-33811 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:42.77Z 
│                        │      ╰ LastModifiedDate: 2026-05-12T20:23:02.333Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-33814 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4918 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:5d2e619511e5f0a25ed61c0ed2db5381875b8f6b5a82540f8dcd
│                        │      │                   7d501ff7b7a1 
│                        │      ├ Title           : When processing HTTP/2 SETTINGS frames, transport will
│                        │      │                   enter an infini ... 
│                        │      ├ Description     : When processing HTTP/2 SETTINGS frames, transport will
│                        │      │                   enter an infinite loop of writing CONTINUATION frames if it
│                        │      │                    receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-835 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://github.com/golang/go/issues/78476 
│                        │      │                  ├ [1] : https://go-review.googlesource.com/c/go/+/761581 
│                        │      │                  ├ [2] : https://go-review.googlesource.com/c/net/+/761640 
│                        │      │                  ├ [3] : https://go.dev/cl/761581 
│                        │      │                  ├ [4] : https://go.dev/cl/761640 
│                        │      │                  ├ [5] : https://go.dev/issue/78476 
│                        │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/qcCIEX
│                        │      │                  │       so47M 
│                        │      │                  ├ [7] : https://linux.oracle.com/cve/CVE-2026-33814.html 
│                        │      │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │      │                  ├ [10]: https://pkg.go.dev/vuln/GO-2026-4918 
│                        │      │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T14:41:59.52Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-39820 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4986 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39820 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:7bfdc7eac3fa9ffdfffd130830ba7917b85841da9b1666e42ef7
│                        │      │                   c5d0620cfb52 
│                        │      ├ Title           : Well-crafted inputs reaching ParseAddress,
│                        │      │                   ParseAddressList, and Parse ... 
│                        │      ├ Description     : Well-crafted inputs reaching ParseAddress,
│                        │      │                   ParseAddressList, and ParseDate were able to trigger
│                        │      │                   excessive CPU exhaustion and memory allocations. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/759940 
│                        │      │                  ├ [1]: https://go.dev/issue/78566 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39820.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39820 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4986 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.187Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T15:10:58.65Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-39823 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4982 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39823 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:95f33c0ad9982f2883eb1bd7f7e7c2beb25a380ad3ee33c6eab1
│                        │      │                   ffb5abc2a6a8 
│                        │      ├ Title           : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │      │                    correctly  ... 
│                        │      ├ Description     : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │      │                    correctly escaped inside of a <meta> tag's <content>
│                        │      │                   attribute. If the URL content were to insert ASCII
│                        │      │                   whitespaces around the '=' rune inside of the <content>
│                        │      │                   attribute, the escaper would fail to similarly escape it,
│                        │      │                   leading to XSS. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-79 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 6.1 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/769920 
│                        │      │                  ├ [1]: https://go.dev/issue/78913 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39823.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39823 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4982 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.29Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:58:45.697Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-39825 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4976 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39825 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:3c1f8134606fe719cb46a21971669eeb16eb628ae6cf99f3d879
│                        │      │                   9c30643dbf16 
│                        │      ├ Title           : ReverseProxy can forward queries containing parameters not
│                        │      │                   visible to  ... 
│                        │      ├ Description     : ReverseProxy can forward queries containing parameters not
│                        │      │                   visible to Rewrite functions. When used with a Rewrite
│                        │      │                   function, or a Director function which parses query
│                        │      │                   parameters, ReverseProxy sanitizes the forwarded request to
│                        │      │                    remove query parameters which are not parsed by
│                        │      │                   url.ParseQuery. ReverseProxy does not take ParseQuery's
│                        │      │                   limit on the total number of query parameters (controlled
│                        │      │                   by GODEBUG=urlmaxqueryparams=N) into account. This can
│                        │      │                   permit ReverseProxy to forward a request containing a query
│                        │      │                    parameter that is not visible to the Rewrite function. For
│                        │      │                    example, the query "a1=x&a2=x&...&a10000=x&hidden=y" can
│                        │      │                   forward the parameter "hidden=y" while hiding it from the
│                        │      │                   proxy's Rewrite function. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/770541 
│                        │      │                  ├ [1]: https://go.dev/issue/78948 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39825.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39825 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4976 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.39Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:58:56.39Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-39826 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4980 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39826 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:01dcabb568a78475883955d6e29ed77270cea9a1ef4c4a81957d
│                        │      │                   50a49a821853 
│                        │      ├ Title           : If a trusted template author were to write a <script> tag
│                        │      │                   containing a ... 
│                        │      ├ Description     : If a trusted template author were to write a <script> tag
│                        │      │                   containing an empty 'type' attribute or a 'type' attribute
│                        │      │                   with an ASCII whitespace, the execution of the template
│                        │      │                   would incorrectly escape any data passed into the <script>
│                        │      │                   block. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-116 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 6.1 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/771180 
│                        │      │                  ├ [1]: https://go.dev/issue/78981 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39826.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39826 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4980 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.49Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:59:07.48Z 
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-39836 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4971 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39836 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:2b905809c2168267c89726dcf719be80db9c05b8517843524c8e
│                        │      │                   60a830d0aa45 
│                        │      ├ Title           : ELSA-2026-22112:  go-toolset:ol8 security update (IMPORTANT) 
│                        │      ├ Description     : The Dial and LookupPort functions panic on Windows when
│                        │      │                   provided with an input containing a NUL (0). 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-476 
│                        │      ├ VendorSeverity   ╭ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/775320 
│                        │      │                  ├ [1]: https://go.dev/issue/79006 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-39836.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-39836 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4971 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.593Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T15:11:10.31Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-42499 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4977 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42499 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4b32a2268d873968d156ce775e40748bf0e660e1d35eb3da6fc9
│                        │      │                   c6af06f39332 
│                        │      ├ Title           : Pathological inputs could cause DoS through consumePhrase
│                        │      │                   when parsing ... 
│                        │      ├ Description     : Pathological inputs could cause DoS through consumePhrase
│                        │      │                   when parsing an email address according to RFC 5322. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ╰ oracle-oval: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/771520 
│                        │      │                  ├ [1]: https://go.dev/issue/78987 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://linux.oracle.com/cve/CVE-2026-42499.html 
│                        │      │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-42499 
│                        │      │                  ╰ [6]: https://pkg.go.dev/vuln/GO-2026-4977 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:44.54Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:59:17.563Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-42504 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:d2d16b63b1f8682f71e8506c8cb001e28720e9e8ef1a27bd53a6
│                        │      │                   d45367e3581c 
│                        │      ├ Title           : Decoding a maliciously-crafted MIME header containing many
│                        │      │                   invalid enc ... 
│                        │      ├ Description     : Decoding a maliciously-crafted MIME header containing many
│                        │      │                   invalid encoded-words can consume excessive CPU. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-407 
│                        │      ├ VendorSeverity   ─ bitnami: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/774481 
│                        │      │                  ├ [1]: https://go.dev/issue/79217 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                        │      │                  │      BcKw 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42504 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5038 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │      ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-27145 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5037 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:b0985aaa4d875a6cb27e0026e1de599e27d39dc769f5c621f40f
│                        │      │                   bef977700e39 
│                        │      ├ Title           : *x509.Certificate).VerifyHostname previously called
│                        │      │                   matchHostnames in ... 
│                        │      ├ Description     : (*x509.Certificate).VerifyHostname previously called
│                        │      │                   matchHostnames in a loop over all DNS Subject Alternative
│                        │      │                   Name (SAN) entries. This caused strings.Split(host, ".") to
│                        │      │                    execute repeatedly on the same input hostname. With a
│                        │      │                   large DNS SAN list, verification costs scaled quadratically
│                        │      │                    based on the number of SAN entries multiplied by the
│                        │      │                   hostname's label count. Because x509.Verify validates
│                        │      │                   hostnames before building the certificate chain, this
│                        │      │                   overhead occurred even for untrusted certificates. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ bitnami: 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :L/A:H 
│                        │      │                            ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/783621 
│                        │      │                  ├ [1]: https://go.dev/issue/79694 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                        │      │                  │      BcKw 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5037 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │      ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ╰ [10] ╭ VulnerabilityID : CVE-2026-42507 
│                               ├ VendorIDs        ─ [0]: GO-2026-5039 
│                               ├ PkgID           : stdlib@v1.26.2 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                               │                  ╰ UID : e5871284774cde90 
│                               ├ InstalledVersion: v1.26.2 
│                               ├ FixedVersion    : 1.25.11, 1.26.4 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                               │                  │         70473847ed1715eab2460 
│                               │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                               │                            f04aee4f84681a64877c0 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:afd9fe3c53ebdca177a9544b4a2fcbc78b12636bab312071fc3b
│                               │                   d105fdde56a1 
│                               ├ Title           : When returning errors, functions in the net/textproto
│                               │                   package would in ... 
│                               ├ Description     : When returning errors, functions in the net/textproto
│                               │                   package would include its input as part of the error. This
│                               │                   might allow an attacker to inject misleading content to
│                               │                   errors that are printed or logged. 
│                               ├ Severity        : MEDIUM 
│                               ├ VendorSeverity   ─ bitnami: 2 
│                               ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                               │                            │           :L/A:N 
│                               │                            ╰ V3Score : 5.3 
│                               ├ References       ╭ [0]: https://go.dev/cl/777060 
│                               │                  ├ [1]: https://go.dev/issue/79346 
│                               │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                               │                  │      BcKw 
│                               │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
│                               │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5039 
│                               ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
│                               ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
├ [9]  ╭ Target  : usr/bin/rootlesskit 
│      ├ Class   : lang-pkgs 
│      ├ Type    : gobinary 
│      ╰ Packages 
├ [10] ╭ Target         : usr/libexec/docker/cli-plugins/docker-buildx 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-46680 
│                        │     ├ VendorIDs        ─ [0]: GHSA-fqw6-gf59-qr4w 
│                        │     ├ PkgID           : github.com/containerd/containerd/v2@v2.2.3 
│                        │     ├ PkgName         : github.com/containerd/containerd/v2 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.3 
│                        │     │                  ╰ UID : 6dd9bf241ae25c46 
│                        │     ├ InstalledVersion: v2.2.3 
│                        │     ├ FixedVersion    : 2.0.9, 2.2.4, 2.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:0d686f32ecbb239e84dc5a001a4415fb03b8709245f1e552f021c
│                        │     │                   1b5ff4a6cdd 
│                        │     ├ Title           : containerd user ID handling bypass allows runAsNonRoot evasion 
│                        │     ├ Description     : ### Impact
│                        │     │                   A bug was found in containerd where containers launched with
│                        │     │                    a numeric `User` directive that cannot be parsed as a
│                        │     │                   32-bit integer are incorrectly treated as a username. If a
│                        │     │                   crafted image provides an `/etc/passwd` file mapping this
│                        │     │                   large numeric string to root, the container ultimately runs
│                        │     │                   as root (UID 0). This allows the Kubernetes `runAsNonRoot`
│                        │     │                   restriction to be bypassed, causing unexpected behavior for
│                        │     │                   environments that require containers to run as a non-root
│                        │     │                   user.
│                        │     │                   
│                        │     │                   ### Patches
│                        │     │                   This bug has been fixed in the following containerd
│                        │     │                   versions:
│                        │     │                   * 2.3.1
│                        │     │                   * 2.2.4
│                        │     │                   * 2.0.9
│                        │     │                   * 1.7.32
│                        │     │                   Note: The containerd 2.1 release has reached its [end of
│                        │     │                   life](https://containerd.io/releases/#current-state-of-conta
│                        │     │                   inerd-releases) and a fixed version is not provided.
│                        │     │                   Users should update to these versions to resolve the issue.
│                        │     │                   ### Workarounds
│                        │     │                   Ensure that only trusted images are used and that only
│                        │     │                   trusted users have permissions to import images.
│                        │     │                   Alternatively, enforcing a specific numeric `runAsUser` in
│                        │     │                   the Kubernetes Pod `securityContext` overrides the `USER`
│                        │     │                   directive in the image and prevents the bypass. Newer
│                        │     │                   versions of Kubernetes, starting with 1.34, also appear to
│                        │     │                   enforce `runAsNonRoot` properly regardless of this bug.
│                        │     │                   ### Credits
│                        │     │                   The containerd project would like to thank Lei Wang
│                        │     │                   (@ssst0n3) for responsibly disclosing this issue in
│                        │     │                   accordance with the [containerd security
│                        │     │                   policy](https://github.com/containerd/project/blob/main/SECU
│                        │     │                   RITY.md).
│                        │     │                   ### Resources
│                        │     │                   * https://github.com/advisories/GHSA-265r-hfxg-fhmg
│                        │     │                   (CVE-2024-40635)
│                        │     │                   ### For more information
│                        │     │                   If there are any questions or comments about this advisory:
│                        │     │                   * Open an issue in
│                        │     │                   [containerd](https://github.com/containerd/containerd/issues
│                        │     │                   /new/choose)
│                        │     │                   * Send an email to
│                        │     │                   [security@containerd.io](mailto:security@containerd.io)
│                        │     │                   To report a security issue in containerd:
│                        │     │                   * [Report a new
│                        │     │                   vulnerability](https://github.com/containerd/containerd/secu
│                        │     │                   rity/advisories/new)
│                        │     │                   [security@containerd.io](mailto:security@containerd.io) 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ─ ghsa: 3 
│                        │     ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:P/VC:H/VI
│                        │     │                         │            :H/VA:H/SC:N/SI:N/SA:N 
│                        │     │                         ╰ V40Score : 7.3 
│                        │     ╰ References       ╭ [0]: https://github.com/containerd/containerd 
│                        │                        ╰ [1]: https://github.com/containerd/containerd/security/advi
│                        │                               sories/GHSA-fqw6-gf59-qr4w 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-34040 
│                        │     ├ VendorIDs        ─ [0]: GHSA-x744-4wpc-v9h2 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d79e42149edb46968e425ed8d686840f4d95a7158dd25ad869164
│                        │     │                   e1fc78879c9 
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
│                        │     ╰ LastModifiedDate: 2026-04-03T16:51:28.67Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-41567 
│                        │     ├ VendorIDs        ─ [0]: GHSA-x86f-5xw2-fm2r 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:62b408ef024cb54eb8fe83a2ac825c7461426c5029ee9bbe5dfbe
│                        │     │                   1ccf68a2ed4 
│                        │     ├ Title           : Docker: `PUT /containers/{id}/archive` executes container
│                        │     │                   binary on the host 
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
│                        │     ├ VendorSeverity   ─ ghsa: 3 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:H/A:N 
│                        │     │                         ╰ V3Score : 7.2 
│                        │     ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │     │                  ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                         x86f-5xw2-fm2r 
│                        │     ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │     ╰ LastModifiedDate: 2026-06-05T16:01:30.983Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:38897207c50e09ac5fad46d78a3cd666f0434563e95096f889e47
│                        │     │                   b09f113b13c 
│                        │     ├ Title           : Docker: Race condition in docker cp allows bind mount
│                        │     │                   redirection to host path 
│                        │     ├ Description     : ## Summary
│                        │     │                   
│                        │     │                   A race condition during `docker cp` mount setup allows a
│                        │     │                   malicious container to redirect a bind mount target to an
│                        │     │                   arbitrary host path, potentially overwriting host files or
│                        │     │                   causing denial of service.
│                        │     │                   ## Details
│                        │     │                   When copying files into a container, the daemon sets up a
│                        │     │                   temporary filesystem view by bind-mounting volumes into a
│                        │     │                   private mount namespace. During this setup, the mount
│                        │     │                   destination is created inside the container root and then a
│                        │     │                   bind mount is attached using the container-relative path
│                        │     │                   resolved to an absolute host path.
│                        │     │                   Between mountpoint creation and the `mount()` syscall, a
│                        │     │                   process running inside the container can replace the
│                        │     │                   destination (or a parent path component) with a symlink
│                        │     │                   pointing to an arbitrary location on the host. The `mount()`
│                        │     │                    syscall follows the symlink, causing the volume to be
│                        │     │                   bind-mounted onto an arbitrary host path instead of the
│                        │     │                   intended container path.
│                        │     │                   ## Impact
│                        │     │                   A malicious container can redirect a volume bind mount to an
│                        │     │                    arbitrary host path. The impact depends on the volume
│                        │     │                   content and mount options:
│                        │     │                   - If the volume is writable, arbitrary host files at the
│                        │     │                   redirected path could be overwritten with the volume's
│                        │     │                   contents.
│                        │     │                   - If the volume is read-only, the host path is masked by the
│                        │     │                    mount for the duration of the operation, causing denial of
│                        │     │                   service.
│                        │     │                   - In all cases the mount is temporary (torn down after the
│                        │     │                   `docker cp` completes), but the effects of any writes
│                        │     │                   persist.
│                        │     │                   ### Conditions for exploitation
│                        │     │                   - A container must have at least one volume mount.
│                        │     │                   - A process inside the container must be able to rapidly
│                        │     │                   create and swap symlinks at the volume mount destination
│                        │     │                   path.
│                        │     │                   - An operator must initiate a `docker cp` into that
│                        │     │                   container, or call the `PUT /containers/{id}/archive` or
│                        │     │                   `HEAD /containers/{id}/archive` API endpoints.
│                        │     │                   ### Not affected
│                        │     │                   - Containers that do not have volume mounts are not
│                        │     │                   affected, as the race occurs during volume bind-mount
│                        │     │                   setup.
│                        │     │                   ## Workarounds
│                        │     │                   - Only run containers from trusted images.
│                        │     │                   - Avoid using `docker cp` with untrusted running
│                        │     │                   containers.
│                        │     │                   - Use authorization plugins to restrict access to the
│                        │     │                   archive API endpoints (`PUT /containers/{id}/archive`, `HEAD
│                        │     │                    /containers/{id}/archive`). 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ─ ghsa: 3 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/A:H 
│                        │     │                         ╰ V3Score : 7.2 
│                        │     ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                        ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │                               rg2x-37c3-w2rh 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-33997 
│                        │     ├ VendorIDs        ─ [0]: GHSA-pxq6-2prw-chj9 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:682a3be13934f188ceadcc677c2128dfca885a701e2d606dc10a2
│                        │     │                   a18bfee8a9c 
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
│                        │     ├ CweIDs           ─ [0]: CWE-193 
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
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33997 
│                        │     │                  ├ [1]: https://docs.docker.com/engine/extend/legacy_plugins 
│                        │     │                  ├ [2]: https://github.com/moby/moby 
│                        │     │                  ├ [3]: https://github.com/moby/moby/commit/f4d6f25bf0c3fa12d4
│                        │     │                  │      968320a45685947756a22a 
│                        │     │                  ├ [4]: https://github.com/moby/moby/releases/tag/docker-v29.3.1 
│                        │     │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      pxq6-2prw-chj9 
│                        │     │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-33997 
│                        │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-33997 
│                        │     ├ PublishedDate   : 2026-03-31T03:15:57.523Z 
│                        │     ╰ LastModifiedDate: 2026-04-03T17:23:21.307Z 
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-41568 
│                        │     ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:b2ee6295cdca42eb5404509cb7e98d7dff1cf0b2dff21b3e757b4
│                        │     │                   5ba67555360 
│                        │     ├ Title           : Docker: Race condition in docker cp allows creation of
│                        │     │                   arbitrary empty files on the host via symlink swap 
│                        │     ├ Description     : ## Summary
│                        │     │                   
│                        │     │                   A race condition during `docker cp` mount setup allows a
│                        │     │                   malicious container to create empty files or directories at
│                        │     │                   arbitrary absolute paths on the host filesystem.
│                        │     │                   This advisory covers the race during mountpoint creation.
│                        │     │                   The related race during the subsequent mount syscall is
│                        │     │                   tracked in GHSA-rg2x-37c3-w2rh
│                        │     │                   ## Details
│                        │     │                   When copying files into a container, the daemon sets up a
│                        │     │                   temporary filesystem view by bind-mounting volumes into a
│                        │     │                   private mount namespace. During this setup, the mount
│                        │     │                   destination path is first resolved within the container's
│                        │     │                   root filesystem using `GetResourcePath`, and then used to
│                        │     │                   create the mountpoint (file or directory) if it does not
│                        │     │                   already exist via `createIfNotExists`.
│                        │     │                   Between path resolution and mountpoint creation, a process
│                        │     │                   running inside the container can swap a path component for a
│                        │     │                    symlink pointing to an arbitrary location on the host.
│                        │     │                   Because `createIfNotExists` operates on the already-resolved
│                        │     │                    absolute path using standard `os.MkdirAll` and
│                        │     │                   `os.OpenFile` — which follow symlinks in intermediate path
│                        │     │                   components — the symlink is followed and the file or
│                        │     │                   directory is created outside the container root filesystem,
│                        │     │                   as root.
│                        │     │                   ## Impact
│                        │     │                   A malicious container can create empty files or directories
│                        │     │                   at arbitrary absolute paths on the host filesystem, running
│                        │     │                   as root. This enables persistent denial of service — for
│                        │     │                   example:
│                        │     │                   - Converting `/etc/docker/daemon.json` into a directory
│                        │     │                   prevents the daemon from restarting
│                        │     │                   - Creating `/etc/nologin` prevents user logins
│                        │     │                   - Overwriting critical system paths with empty files can
│                        │     │                   break host services
│                        │     │                   The container does not gain read or write access to existing
│                        │     │                    host files — only the ability to create new empty files or
│                        │     │                   directories at chosen paths.
│                        │     │                   ### Conditions for exploitation
│                        │     │                   - A container must be running with a process that can
│                        │     │                   rapidly create and swap symlinks at a volume mount
│                        │     │                   destination path.
│                        │     │                   - An operator must initiate a `docker cp` into that
│                        │     │                   container, or call the `PUT /containers/{id}/archive` or
│                        │     │                   `HEAD /containers/{id}/archive` API endpoints.
│                        │     │                   ### Not affected
│                        │     │                   - Containers that do not have volume mounts are not
│                        │     │                   affected, as the race occurs during volume bind-mount
│                        │     │                   setup.
│                        │     │                   ## Patches
│                        │     │                   Mountpoint creation is now scoped to the container root
│                        │     │                   using `os.Root` (Go 1.24+), which refuses to follow symlinks
│                        │     │                    that escape the opened root directory. All filesystem
│                        │     │                   operations in `createIfNotExists` (`MkdirAll`, `OpenFile`)
│                        │     │                   are performed through the `os.Root` handle, so even if a
│                        │     │                   symlink swap occurs after path resolution, the creation
│                        │     │                   stays confined to the container root.
│                        │     │                   ## Workarounds
│                        │     │                   - Only run containers from trusted images.
│                        │     │                   - Avoid using `docker cp` with untrusted running
│                        │     │                   containers.
│                        │     │                   - Use authorization plugins to restrict access to the
│                        │     │                   archive API endpoints (`PUT /containers/{id}/archive`, `HEAD
│                        │     │                    /containers/{id}/archive`). 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ VendorSeverity   ─ ghsa: 2 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L/A:H 
│                        │     │                         ╰ V3Score : 6 
│                        │     ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                        ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │                               vp62-88p7-qqf5 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-42504 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │     ├ PkgID           : stdlib@v1.26.3 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │     │                  ╰ UID : d06133606ce496f9 
│                        │     ├ InstalledVersion: v1.26.3 
│                        │     ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:dfcb7a5f5e51b196fa684f1baec618ddf657d04402bfcf9b6efd3
│                        │     │                   72533697aeb 
│                        │     ├ Title           : Decoding a maliciously-crafted MIME header containing many
│                        │     │                   invalid enc ... 
│                        │     ├ Description     : Decoding a maliciously-crafted MIME header containing many
│                        │     │                   invalid encoded-words can consume excessive CPU. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-407 
│                        │     ├ VendorSeverity   ─ bitnami: 3 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/774481 
│                        │     │                  ├ [1]: https://go.dev/issue/79217 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                        │     │                  │      cKw 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42504 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5038 
│                        │     ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │     ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ├ [7] ╭ VulnerabilityID : CVE-2026-27145 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5037 
│                        │     ├ PkgID           : stdlib@v1.26.3 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │     │                  ╰ UID : d06133606ce496f9 
│                        │     ├ InstalledVersion: v1.26.3 
│                        │     ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:9c892bf7c4d1b1de1ed9053f8f5b30a39067f179503521ba2af7d
│                        │     │                   0e1bdbac7e3 
│                        │     ├ Title           : *x509.Certificate).VerifyHostname previously called
│                        │     │                   matchHostnames in ... 
│                        │     ├ Description     : (*x509.Certificate).VerifyHostname previously called
│                        │     │                   matchHostnames in a loop over all DNS Subject Alternative
│                        │     │                   Name (SAN) entries. This caused strings.Split(host, ".") to
│                        │     │                   execute repeatedly on the same input hostname. With a large
│                        │     │                   DNS SAN list, verification costs scaled quadratically based
│                        │     │                   on the number of SAN entries multiplied by the hostname's
│                        │     │                   label count. Because x509.Verify validates hostnames before
│                        │     │                   building the certificate chain, this overhead occurred even
│                        │     │                   for untrusted certificates. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ VendorSeverity   ─ bitnami: 2 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           L/A:H 
│                        │     │                            ╰ V3Score : 6.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/783621 
│                        │     │                  ├ [1]: https://go.dev/issue/79694 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                        │     │                  │      cKw 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5037 
│                        │     ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │     ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ╰ [8] ╭ VulnerabilityID : CVE-2026-42507 
│                              ├ VendorIDs        ─ [0]: GO-2026-5039 
│                              ├ PkgID           : stdlib@v1.26.3 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                              │                  ╰ UID : d06133606ce496f9 
│                              ├ InstalledVersion: v1.26.3 
│                              ├ FixedVersion    : 1.25.11, 1.26.4 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                              │                  │         0473847ed1715eab2460 
│                              │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                              │                            04aee4f84681a64877c0 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:ec54730a03e5a3b3443b9ae19a70507d6ecd5b10cd74ee19875cd
│                              │                   85b92e91d61 
│                              ├ Title           : When returning errors, functions in the net/textproto
│                              │                   package would in ... 
│                              ├ Description     : When returning errors, functions in the net/textproto
│                              │                   package would include its input as part of the error. This
│                              │                   might allow an attacker to inject misleading content to
│                              │                   errors that are printed or logged. 
│                              ├ Severity        : MEDIUM 
│                              ├ VendorSeverity   ─ bitnami: 2 
│                              ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                              │                            │           L/A:N 
│                              │                            ╰ V3Score : 5.3 
│                              ├ References       ╭ [0]: https://go.dev/cl/777060 
│                              │                  ├ [1]: https://go.dev/issue/79346 
│                              │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                              │                  │      cKw 
│                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
│                              │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5039 
│                              ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
│                              ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
├ [11] ╭ Target         : usr/libexec/docker/cli-plugins/docker-compose 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-46680 
│                        │      ├ VendorIDs        ─ [0]: GHSA-fqw6-gf59-qr4w 
│                        │      ├ PkgID           : github.com/containerd/containerd/v2@v2.2.3 
│                        │      ├ PkgName         : github.com/containerd/containerd/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.3 
│                        │      │                  ╰ UID : cc87f8b48ff9655b 
│                        │      ├ InstalledVersion: v2.2.3 
│                        │      ├ FixedVersion    : 2.0.9, 2.2.4, 2.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:a4612486f0fd56f4c157afb43f549ea3be3d7438ee377e6d724b
│                        │      │                   1c2da0f4367e 
│                        │      ├ Title           : containerd user ID handling bypass allows runAsNonRoot
│                        │      │                   evasion 
│                        │      ├ Description     : ### Impact
│                        │      │                   A bug was found in containerd where containers launched
│                        │      │                   with a numeric `User` directive that cannot be parsed as a
│                        │      │                   32-bit integer are incorrectly treated as a username. If a
│                        │      │                   crafted image provides an `/etc/passwd` file mapping this
│                        │      │                   large numeric string to root, the container ultimately runs
│                        │      │                    as root (UID 0). This allows the Kubernetes `runAsNonRoot`
│                        │      │                    restriction to be bypassed, causing unexpected behavior
│                        │      │                   for environments that require containers to run as a
│                        │      │                   non-root user.
│                        │      │                   
│                        │      │                   ### Patches
│                        │      │                   This bug has been fixed in the following containerd
│                        │      │                   versions:
│                        │      │                   * 2.3.1
│                        │      │                   * 2.2.4
│                        │      │                   * 2.0.9
│                        │      │                   * 1.7.32
│                        │      │                   Note: The containerd 2.1 release has reached its [end of
│                        │      │                   life](https://containerd.io/releases/#current-state-of-cont
│                        │      │                   ainerd-releases) and a fixed version is not provided.
│                        │      │                   Users should update to these versions to resolve the
│                        │      │                   issue.
│                        │      │                   ### Workarounds
│                        │      │                   Ensure that only trusted images are used and that only
│                        │      │                   trusted users have permissions to import images.
│                        │      │                   Alternatively, enforcing a specific numeric `runAsUser` in
│                        │      │                   the Kubernetes Pod `securityContext` overrides the `USER`
│                        │      │                   directive in the image and prevents the bypass. Newer
│                        │      │                   versions of Kubernetes, starting with 1.34, also appear to
│                        │      │                   enforce `runAsNonRoot` properly regardless of this bug.
│                        │      │                   ### Credits
│                        │      │                   The containerd project would like to thank Lei Wang
│                        │      │                   (@ssst0n3) for responsibly disclosing this issue in
│                        │      │                   accordance with the [containerd security
│                        │      │                   policy](https://github.com/containerd/project/blob/main/SEC
│                        │      │                   URITY.md).
│                        │      │                   ### Resources
│                        │      │                   * https://github.com/advisories/GHSA-265r-hfxg-fhmg
│                        │      │                   (CVE-2024-40635)
│                        │      │                   ### For more information
│                        │      │                   If there are any questions or comments about this
│                        │      │                   advisory:
│                        │      │                   * Open an issue in
│                        │      │                   [containerd](https://github.com/containerd/containerd/issue
│                        │      │                   s/new/choose)
│                        │      │                   * Send an email to
│                        │      │                   [security@containerd.io](mailto:security@containerd.io)
│                        │      │                   To report a security issue in containerd:
│                        │      │                   * [Report a new
│                        │      │                   vulnerability](https://github.com/containerd/containerd/sec
│                        │      │                   urity/advisories/new)
│                        │      │                   [security@containerd.io](mailto:security@containerd.io) 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:P/VC:H/V
│                        │      │                         │            I:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                         ╰ V40Score : 7.3 
│                        │      ╰ References       ╭ [0]: https://github.com/containerd/containerd 
│                        │                         ╰ [1]: https://github.com/containerd/containerd/security/adv
│                        │                                isories/GHSA-fqw6-gf59-qr4w 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-34040 
│                        │      ├ VendorIDs        ─ [0]: GHSA-x744-4wpc-v9h2 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 400928cba457dac1 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ FixedVersion    : 29.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:0fd62ebdb52cc7baa6e80962147b823b3248cfa6506201fa5deb
│                        │      │                   67066e913594 
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
│                        │      ╰ LastModifiedDate: 2026-04-03T16:51:28.67Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-41567 
│                        │      ├ VendorIDs        ─ [0]: GHSA-x86f-5xw2-fm2r 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 400928cba457dac1 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:471d749ffe3c69ca5d1b4411186b092dac5e8066f8566ee6afb3
│                        │      │                   2ab67e854810 
│                        │      ├ Title           : Docker: `PUT /containers/{id}/archive` executes container
│                        │      │                   binary on the host 
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
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:H/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 7.2 
│                        │      ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │      │                  ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                         -x86f-5xw2-fm2r 
│                        │      ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │      ╰ LastModifiedDate: 2026-06-05T16:01:30.983Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-42306 
│                        │      ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 400928cba457dac1 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:839755fd584cbe594796a6747a4d7db2d7023db7995e0dd03633
│                        │      │                   ddf3ae5fbc96 
│                        │      ├ Title           : Docker: Race condition in docker cp allows bind mount
│                        │      │                   redirection to host path 
│                        │      ├ Description     : ## Summary
│                        │      │                   
│                        │      │                   A race condition during `docker cp` mount setup allows a
│                        │      │                   malicious container to redirect a bind mount target to an
│                        │      │                   arbitrary host path, potentially overwriting host files or
│                        │      │                   causing denial of service.
│                        │      │                   ## Details
│                        │      │                   When copying files into a container, the daemon sets up a
│                        │      │                   temporary filesystem view by bind-mounting volumes into a
│                        │      │                   private mount namespace. During this setup, the mount
│                        │      │                   destination is created inside the container root and then a
│                        │      │                    bind mount is attached using the container-relative path
│                        │      │                   resolved to an absolute host path.
│                        │      │                   Between mountpoint creation and the `mount()` syscall, a
│                        │      │                   process running inside the container can replace the
│                        │      │                   destination (or a parent path component) with a symlink
│                        │      │                   pointing to an arbitrary location on the host. The
│                        │      │                   `mount()` syscall follows the symlink, causing the volume
│                        │      │                   to be bind-mounted onto an arbitrary host path instead of
│                        │      │                   the intended container path.
│                        │      │                   ## Impact
│                        │      │                   A malicious container can redirect a volume bind mount to
│                        │      │                   an arbitrary host path. The impact depends on the volume
│                        │      │                   content and mount options:
│                        │      │                   - If the volume is writable, arbitrary host files at the
│                        │      │                   redirected path could be overwritten with the volume's
│                        │      │                   contents.
│                        │      │                   - If the volume is read-only, the host path is masked by
│                        │      │                   the mount for the duration of the operation, causing denial
│                        │      │                    of service.
│                        │      │                   - In all cases the mount is temporary (torn down after the
│                        │      │                   `docker cp` completes), but the effects of any writes
│                        │      │                   persist.
│                        │      │                   ### Conditions for exploitation
│                        │      │                   - A container must have at least one volume mount.
│                        │      │                   - A process inside the container must be able to rapidly
│                        │      │                   create and swap symlinks at the volume mount destination
│                        │      │                   path.
│                        │      │                   - An operator must initiate a `docker cp` into that
│                        │      │                   container, or call the `PUT /containers/{id}/archive` or
│                        │      │                   `HEAD /containers/{id}/archive` API endpoints.
│                        │      │                   ### Not affected
│                        │      │                   - Containers that do not have volume mounts are not
│                        │      │                   affected, as the race occurs during volume bind-mount
│                        │      │                   setup.
│                        │      │                   ## Workarounds
│                        │      │                   - Only run containers from trusted images.
│                        │      │                   - Avoid using `docker cp` with untrusted running
│                        │      │                   containers.
│                        │      │                   - Use authorization plugins to restrict access to the
│                        │      │                   archive API endpoints (`PUT /containers/{id}/archive`,
│                        │      │                   `HEAD /containers/{id}/archive`). 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7.2 
│                        │      ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                         ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │                                -rg2x-37c3-w2rh 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-33997 
│                        │      ├ VendorIDs        ─ [0]: GHSA-pxq6-2prw-chj9 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 400928cba457dac1 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ FixedVersion    : 29.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:2be82aaf0dd79049bfbe497e342cee8af06bc6b5d4571bd57ba2
│                        │      │                   7661c52ab7e7 
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
│                        │      ├ CweIDs           ─ [0]: CWE-193 
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
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33997 
│                        │      │                  ├ [1]: https://docs.docker.com/engine/extend/legacy_plugins 
│                        │      │                  ├ [2]: https://github.com/moby/moby 
│                        │      │                  ├ [3]: https://github.com/moby/moby/commit/f4d6f25bf0c3fa12d
│                        │      │                  │      4968320a45685947756a22a 
│                        │      │                  ├ [4]: https://github.com/moby/moby/releases/tag/docker-v29.
│                        │      │                  │      3.1 
│                        │      │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -pxq6-2prw-chj9 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-33997 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-33997 
│                        │      ├ PublishedDate   : 2026-03-31T03:15:57.523Z 
│                        │      ╰ LastModifiedDate: 2026-04-03T17:23:21.307Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-41568 
│                        │      ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 400928cba457dac1 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:c151a834f2eeec1b6a4b5c33a417ca9741bbbb421547365919ff
│                        │      │                   17203cf79dbc 
│                        │      ├ Title           : Docker: Race condition in docker cp allows creation of
│                        │      │                   arbitrary empty files on the host via symlink swap 
│                        │      ├ Description     : ## Summary
│                        │      │                   
│                        │      │                   A race condition during `docker cp` mount setup allows a
│                        │      │                   malicious container to create empty files or directories at
│                        │      │                    arbitrary absolute paths on the host filesystem.
│                        │      │                   This advisory covers the race during mountpoint creation.
│                        │      │                   The related race during the subsequent mount syscall is
│                        │      │                   tracked in GHSA-rg2x-37c3-w2rh
│                        │      │                   ## Details
│                        │      │                   When copying files into a container, the daemon sets up a
│                        │      │                   temporary filesystem view by bind-mounting volumes into a
│                        │      │                   private mount namespace. During this setup, the mount
│                        │      │                   destination path is first resolved within the container's
│                        │      │                   root filesystem using `GetResourcePath`, and then used to
│                        │      │                   create the mountpoint (file or directory) if it does not
│                        │      │                   already exist via `createIfNotExists`.
│                        │      │                   Between path resolution and mountpoint creation, a process
│                        │      │                   running inside the container can swap a path component for
│                        │      │                   a symlink pointing to an arbitrary location on the host.
│                        │      │                   Because `createIfNotExists` operates on the
│                        │      │                   already-resolved absolute path using standard `os.MkdirAll`
│                        │      │                    and `os.OpenFile` — which follow symlinks in intermediate
│                        │      │                   path components — the symlink is followed and the file or
│                        │      │                   directory is created outside the container root filesystem,
│                        │      │                    as root.
│                        │      │                   ## Impact
│                        │      │                   A malicious container can create empty files or directories
│                        │      │                    at arbitrary absolute paths on the host filesystem,
│                        │      │                   running as root. This enables persistent denial of service
│                        │      │                   — for example:
│                        │      │                   - Converting `/etc/docker/daemon.json` into a directory
│                        │      │                   prevents the daemon from restarting
│                        │      │                   - Creating `/etc/nologin` prevents user logins
│                        │      │                   - Overwriting critical system paths with empty files can
│                        │      │                   break host services
│                        │      │                   The container does not gain read or write access to
│                        │      │                   existing host files — only the ability to create new empty
│                        │      │                   files or directories at chosen paths.
│                        │      │                   ### Conditions for exploitation
│                        │      │                   - A container must be running with a process that can
│                        │      │                   rapidly create and swap symlinks at a volume mount
│                        │      │                   destination path.
│                        │      │                   - An operator must initiate a `docker cp` into that
│                        │      │                   container, or call the `PUT /containers/{id}/archive` or
│                        │      │                   `HEAD /containers/{id}/archive` API endpoints.
│                        │      │                   ### Not affected
│                        │      │                   - Containers that do not have volume mounts are not
│                        │      │                   affected, as the race occurs during volume bind-mount
│                        │      │                   setup.
│                        │      │                   ## Patches
│                        │      │                   Mountpoint creation is now scoped to the container root
│                        │      │                   using `os.Root` (Go 1.24+), which refuses to follow
│                        │      │                   symlinks that escape the opened root directory. All
│                        │      │                   filesystem operations in `createIfNotExists` (`MkdirAll`,
│                        │      │                   `OpenFile`) are performed through the `os.Root` handle, so
│                        │      │                   even if a symlink swap occurs after path resolution, the
│                        │      │                   creation stays confined to the container root.
│                        │      │                   ## Workarounds
│                        │      │                   - Only run containers from trusted images.
│                        │      │                   - Avoid using `docker cp` with untrusted running
│                        │      │                   containers.
│                        │      │                   - Use authorization plugins to restrict access to the
│                        │      │                   archive API endpoints (`PUT /containers/{id}/archive`,
│                        │      │                   `HEAD /containers/{id}/archive`). 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ ghsa: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 6 
│                        │      ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                         ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │                                -vp62-88p7-qqf5 
│                        ├ [6]  ╭ VulnerabilityID : GHSA-pmwq-pjrm-6p5r 
│                        │      ├ PkgID           : github.com/in-toto/in-toto-golang@v0.10.0 
│                        │      ├ PkgName         : github.com/in-toto/in-toto-golang 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/in-toto/in-toto-golang@v0.10.0 
│                        │      │                  ╰ UID : 3aa4f93341f1d696 
│                        │      ├ InstalledVersion: v0.10.0 
│                        │      ├ FixedVersion    : 0.11.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-pmwq-pjrm-6p5r 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:53c2385f9920baada0f6cb2dff9f02a037540cb96ffe4f2a59c4
│                        │      │                   1a5cebe8e7b3 
│                        │      ├ Title           : in-toto-golang and in-toto-python have inconsistent
│                        │      │                   negation behavior 
│                        │      ├ Description     : ### Impact
│                        │      │                   _What kind of vulnerability is it? Who is impacted?_
│                        │      │                   
│                        │      │                   in-toto-golang and in-toto-python both support glob
│                        │      │                   patterns in artifact rules to indicate the artifacts that a
│                        │      │                    rule applies to. Both support negations in character
│                        │      │                   classes to indicate what should *not* be matched, but they
│                        │      │                   used different operators to indicate the negation.
│                        │      │                   in-toto-python uses `!` while in-toto-golang used `^`. A
│                        │      │                   layout authored with the expectations of one implementation
│                        │      │                    can therefore exhibit different behavior in the other
│                        │      │                   implementation.
│                        │      │                   This impacts users in a specific set of circumstances where
│                        │      │                    two different implementations are used to verify the same
│                        │      │                   layout + attestation bundle at different stages of the same
│                        │      │                    pipeline. As a rule of thumb, we advise using a single
│                        │      │                   implementation across all aspects of a pipeline, from
│                        │      │                   layout creation to pipeline execution and verification to
│                        │      │                   prevent this class of bugs.
│                        │      │                   ### Patches
│                        │      │                   _Has the problem been patched? What versions should users
│                        │      │                   upgrade to?_
│                        │      │                   in-toto-golang has been updated to use `!` instead of `^`
│                        │      │                   to indicate negation. See
│                        │      │                   https://github.com/in-toto/in-toto-golang/pull/462. This is
│                        │      │                    part of v0.11.0. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ ghsa: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:N/I:H/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 4.1 
│                        │      ├ References       ╭ [0]: https://github.com/in-toto/in-toto-golang 
│                        │      │                  ├ [1]: https://github.com/in-toto/in-toto-golang/commit/36d7
│                        │      │                  │      82ffb2ca3adbffcdce1fd971c23319dd4469 
│                        │      │                  ├ [2]: https://github.com/in-toto/in-toto-golang/pull/462 
│                        │      │                  ╰ [3]: https://github.com/in-toto/in-toto-golang/security/ad
│                        │      │                         visories/GHSA-pmwq-pjrm-6p5r 
│                        │      ├ PublishedDate   : 2026-05-08T22:24:19Z 
│                        │      ╰ LastModifiedDate: 2026-05-08T22:24:19Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-39882 
│                        │      ├ VendorIDs        ─ [0]: GHSA-w8rr-5gcm-pp58 
│                        │      ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetr
│                        │      │                   ichttp@v1.42.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetr
│                        │      │                   ichttp 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/o
│                        │      │                  │       tlpmetric/otlpmetrichttp@v1.42.0 
│                        │      │                  ╰ UID : c7bf06bf9efcf280 
│                        │      ├ InstalledVersion: v1.42.0 
│                        │      ├ FixedVersion    : 1.43.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:457d811fa73c51dca3ab5d65699110f31e887760d04798b41088
│                        │      │                   aaa8ffaefff3 
│                        │      ├ Title           : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    Prior to 1 ... 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    Prior to 1.43.0, the otlp HTTP exporters
│                        │      │                   (traces/metrics/logs) read the full HTTP response body into
│                        │      │                    an in-memory bytes.Buffer without a size cap. This is
│                        │      │                   exploitable for memory exhaustion when the configured
│                        │      │                   collector endpoint is attacker-controlled (or a network
│                        │      │                   attacker can mitm the exporter connection). This
│                        │      │                   vulnerability is fixed in 1.43.0. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-789 
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 2 
│                        │      │                  ╰ ghsa  : 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rel
│                        │      │                  │      eases/tag/v1.43.0 
│                        │      │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go 
│                        │      │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/pu
│                        │      │                  │      ll/8108 
│                        │      │                  ├ [3]: https://github.com/open-telemetry/opentelemetry-go/se
│                        │      │                  │      curity/advisories/GHSA-w8rr-5gcm-pp58 
│                        │      │                  ╰ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-39882 
│                        │      ├ PublishedDate   : 2026-04-08T21:17:00.547Z 
│                        │      ╰ LastModifiedDate: 2026-04-09T18:39:55.73Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-39882 
│                        │      ├ VendorIDs        ─ [0]: GHSA-w8rr-5gcm-pp58 
│                        │      ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptrace
│                        │      │                   http@v1.42.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptrace
│                        │      │                   http 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/o
│                        │      │                  │       tlptrace/otlptracehttp@v1.42.0 
│                        │      │                  ╰ UID : 4b01a5ca5690cd2e 
│                        │      ├ InstalledVersion: v1.42.0 
│                        │      ├ FixedVersion    : 1.43.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:b6d29da5e43424c49584bccfb385af11bc7ef901512b4a22a0a2
│                        │      │                   619c48aef228 
│                        │      ├ Title           : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    Prior to 1 ... 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    Prior to 1.43.0, the otlp HTTP exporters
│                        │      │                   (traces/metrics/logs) read the full HTTP response body into
│                        │      │                    an in-memory bytes.Buffer without a size cap. This is
│                        │      │                   exploitable for memory exhaustion when the configured
│                        │      │                   collector endpoint is attacker-controlled (or a network
│                        │      │                   attacker can mitm the exporter connection). This
│                        │      │                   vulnerability is fixed in 1.43.0. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-789 
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 2 
│                        │      │                  ╰ ghsa  : 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rel
│                        │      │                  │      eases/tag/v1.43.0 
│                        │      │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go 
│                        │      │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/pu
│                        │      │                  │      ll/8108 
│                        │      │                  ├ [3]: https://github.com/open-telemetry/opentelemetry-go/se
│                        │      │                  │      curity/advisories/GHSA-w8rr-5gcm-pp58 
│                        │      │                  ╰ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-39882 
│                        │      ├ PublishedDate   : 2026-04-08T21:17:00.547Z 
│                        │      ╰ LastModifiedDate: 2026-04-09T18:39:55.73Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-42504 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 48e8f283e29e9cb8 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:2cd155e500639505733eefa5bfe8adbc4f55b56e25e98f879a30
│                        │      │                   6848ef39b787 
│                        │      ├ Title           : Decoding a maliciously-crafted MIME header containing many
│                        │      │                   invalid enc ... 
│                        │      ├ Description     : Decoding a maliciously-crafted MIME header containing many
│                        │      │                   invalid encoded-words can consume excessive CPU. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-407 
│                        │      ├ VendorSeverity   ─ bitnami: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/774481 
│                        │      │                  ├ [1]: https://go.dev/issue/79217 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                        │      │                  │      BcKw 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42504 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5038 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │      ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-27145 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5037 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 48e8f283e29e9cb8 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                        │      │                  │         70473847ed1715eab2460 
│                        │      │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                        │      │                            f04aee4f84681a64877c0 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0efe2cac55c5a9509f16dd4dee0a7477882a53d1802f50733d7a
│                        │      │                   a58cfdae1016 
│                        │      ├ Title           : *x509.Certificate).VerifyHostname previously called
│                        │      │                   matchHostnames in ... 
│                        │      ├ Description     : (*x509.Certificate).VerifyHostname previously called
│                        │      │                   matchHostnames in a loop over all DNS Subject Alternative
│                        │      │                   Name (SAN) entries. This caused strings.Split(host, ".") to
│                        │      │                    execute repeatedly on the same input hostname. With a
│                        │      │                   large DNS SAN list, verification costs scaled quadratically
│                        │      │                    based on the number of SAN entries multiplied by the
│                        │      │                   hostname's label count. Because x509.Verify validates
│                        │      │                   hostnames before building the certificate chain, this
│                        │      │                   overhead occurred even for untrusted certificates. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ bitnami: 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :L/A:H 
│                        │      │                            ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/783621 
│                        │      │                  ├ [1]: https://go.dev/issue/79694 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                        │      │                  │      BcKw 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5037 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │      ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ╰ [11] ╭ VulnerabilityID : CVE-2026-42507 
│                               ├ VendorIDs        ─ [0]: GO-2026-5039 
│                               ├ PkgID           : stdlib@v1.26.3 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                               │                  ╰ UID : 48e8f283e29e9cb8 
│                               ├ InstalledVersion: v1.26.3 
│                               ├ FixedVersion    : 1.25.11, 1.26.4 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e
│                               │                  │         70473847ed1715eab2460 
│                               │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0
│                               │                            f04aee4f84681a64877c0 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:d77cdd630f108e871ae776e90717165d92016a61b8d5f3a2d2cb
│                               │                   e759cf6c780d 
│                               ├ Title           : When returning errors, functions in the net/textproto
│                               │                   package would in ... 
│                               ├ Description     : When returning errors, functions in the net/textproto
│                               │                   package would include its input as part of the error. This
│                               │                   might allow an attacker to inject misleading content to
│                               │                   errors that are printed or logged. 
│                               ├ Severity        : MEDIUM 
│                               ├ VendorSeverity   ─ bitnami: 2 
│                               ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                               │                            │           :L/A:N 
│                               │                            ╰ V3Score : 5.3 
│                               ├ References       ╭ [0]: https://go.dev/cl/777060 
│                               │                  ├ [1]: https://go.dev/issue/79346 
│                               │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmc
│                               │                  │      BcKw 
│                               │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
│                               │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5039 
│                               ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
│                               ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
├ [12] ╭ Target         : usr/libexec/docker/cli-plugins/docker-model 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-46680 
│                        │     ├ VendorIDs        ─ [0]: GHSA-fqw6-gf59-qr4w 
│                        │     ├ PkgID           : github.com/containerd/containerd/v2@v2.2.3 
│                        │     ├ PkgName         : github.com/containerd/containerd/v2 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.3 
│                        │     │                  ╰ UID : c32411b5dd5bfab 
│                        │     ├ InstalledVersion: v2.2.3 
│                        │     ├ FixedVersion    : 2.0.9, 2.2.4, 2.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:c9fd3c694bf97227d4f9be7d36fbf906fe0f6d0699836ad1fb558
│                        │     │                   b877141d43f 
│                        │     ├ Title           : containerd user ID handling bypass allows runAsNonRoot evasion 
│                        │     ├ Description     : ### Impact
│                        │     │                   A bug was found in containerd where containers launched with
│                        │     │                    a numeric `User` directive that cannot be parsed as a
│                        │     │                   32-bit integer are incorrectly treated as a username. If a
│                        │     │                   crafted image provides an `/etc/passwd` file mapping this
│                        │     │                   large numeric string to root, the container ultimately runs
│                        │     │                   as root (UID 0). This allows the Kubernetes `runAsNonRoot`
│                        │     │                   restriction to be bypassed, causing unexpected behavior for
│                        │     │                   environments that require containers to run as a non-root
│                        │     │                   user.
│                        │     │                   
│                        │     │                   ### Patches
│                        │     │                   This bug has been fixed in the following containerd
│                        │     │                   versions:
│                        │     │                   * 2.3.1
│                        │     │                   * 2.2.4
│                        │     │                   * 2.0.9
│                        │     │                   * 1.7.32
│                        │     │                   Note: The containerd 2.1 release has reached its [end of
│                        │     │                   life](https://containerd.io/releases/#current-state-of-conta
│                        │     │                   inerd-releases) and a fixed version is not provided.
│                        │     │                   Users should update to these versions to resolve the issue.
│                        │     │                   ### Workarounds
│                        │     │                   Ensure that only trusted images are used and that only
│                        │     │                   trusted users have permissions to import images.
│                        │     │                   Alternatively, enforcing a specific numeric `runAsUser` in
│                        │     │                   the Kubernetes Pod `securityContext` overrides the `USER`
│                        │     │                   directive in the image and prevents the bypass. Newer
│                        │     │                   versions of Kubernetes, starting with 1.34, also appear to
│                        │     │                   enforce `runAsNonRoot` properly regardless of this bug.
│                        │     │                   ### Credits
│                        │     │                   The containerd project would like to thank Lei Wang
│                        │     │                   (@ssst0n3) for responsibly disclosing this issue in
│                        │     │                   accordance with the [containerd security
│                        │     │                   policy](https://github.com/containerd/project/blob/main/SECU
│                        │     │                   RITY.md).
│                        │     │                   ### Resources
│                        │     │                   * https://github.com/advisories/GHSA-265r-hfxg-fhmg
│                        │     │                   (CVE-2024-40635)
│                        │     │                   ### For more information
│                        │     │                   If there are any questions or comments about this advisory:
│                        │     │                   * Open an issue in
│                        │     │                   [containerd](https://github.com/containerd/containerd/issues
│                        │     │                   /new/choose)
│                        │     │                   * Send an email to
│                        │     │                   [security@containerd.io](mailto:security@containerd.io)
│                        │     │                   To report a security issue in containerd:
│                        │     │                   * [Report a new
│                        │     │                   vulnerability](https://github.com/containerd/containerd/secu
│                        │     │                   rity/advisories/new)
│                        │     │                   [security@containerd.io](mailto:security@containerd.io) 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ─ ghsa: 3 
│                        │     ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:P/VC:H/VI
│                        │     │                         │            :H/VA:H/SC:N/SI:N/SA:N 
│                        │     │                         ╰ V40Score : 7.3 
│                        │     ╰ References       ╭ [0]: https://github.com/containerd/containerd 
│                        │                        ╰ [1]: https://github.com/containerd/containerd/security/advi
│                        │                               sories/GHSA-fqw6-gf59-qr4w 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-39883 
│                        │     ├ VendorIDs        ─ [0]: GHSA-hfvc-g4fc-pqhx 
│                        │     ├ PkgID           : go.opentelemetry.io/otel/sdk@v1.41.0 
│                        │     ├ PkgName         : go.opentelemetry.io/otel/sdk 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/sdk@v1.41.0 
│                        │     │                  ╰ UID : ea6b798525776578 
│                        │     ├ InstalledVersion: v1.41.0 
│                        │     ├ FixedVersion    : 1.43.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39883 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:ed8ed8dc2342184c0ac909b4efebf9b405198951195f111e25a3b
│                        │     │                   b8e4a427908 
│                        │     ├ Title           : opentelemetry-go: BSD kenv command not using absolute path
│                        │     │                   enables PATH hijacking 
│                        │     ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │     │                   From 1.15.0 to 1.42.0, the fix for CVE-2026-24051 changed
│                        │     │                   the Darwin ioreg command to use an absolute path but left
│                        │     │                   the BSD kenv command using a bare name, allowing the same
│                        │     │                   PATH hijacking attack on BSD and Solaris platforms. This
│                        │     │                   vulnerability is fixed in 1.43.0. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-426 
│                        │     ├ VendorSeverity   ╭ ghsa: 3 
│                        │     │                  ╰ nvd : 3 
│                        │     ├ CVSS             ╭ ghsa ╭ V40Vector: CVSS:4.0/AV:L/AC:H/AT:N/PR:L/UI:N/VC:H/VI
│                        │     │                  │      │            :H/VA:H/SC:N/SI:N/SA:N 
│                        │     │                  │      ╰ V40Score : 7.3 
│                        │     │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H 
│                        │     │                         ╰ V3Score : 7 
│                        │     ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rele
│                        │     │                  │      ases/tag/v1.43.0 
│                        │     │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go 
│                        │     │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/sec
│                        │     │                  │      urity/advisories/GHSA-hfvc-g4fc-pqhx 
│                        │     │                  ╰ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39883 
│                        │     ├ PublishedDate   : 2026-04-08T21:17:00.697Z 
│                        │     ╰ LastModifiedDate: 2026-04-10T21:16:27.12Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-42504 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │     ├ PkgID           : stdlib@v1.25.10 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.10 
│                        │     │                  ╰ UID : 33cc471c5269284 
│                        │     ├ InstalledVersion: v1.25.10 
│                        │     ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:55c1ef09fc948cb125e3d9aeb1cf57d748254bbe45c856c64b140
│                        │     │                   562b15ca359 
│                        │     ├ Title           : Decoding a maliciously-crafted MIME header containing many
│                        │     │                   invalid enc ... 
│                        │     ├ Description     : Decoding a maliciously-crafted MIME header containing many
│                        │     │                   invalid encoded-words can consume excessive CPU. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-407 
│                        │     ├ VendorSeverity   ─ bitnami: 3 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/774481 
│                        │     │                  ├ [1]: https://go.dev/issue/79217 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                        │     │                  │      cKw 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42504 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5038 
│                        │     ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │     ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-27145 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5037 
│                        │     ├ PkgID           : stdlib@v1.25.10 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.10 
│                        │     │                  ╰ UID : 33cc471c5269284 
│                        │     ├ InstalledVersion: v1.25.10 
│                        │     ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:f6805100592edb86dc5ab86bd43967b2501df17456766ed3c2cb3
│                        │     │                   293873c103f 
│                        │     ├ Title           : *x509.Certificate).VerifyHostname previously called
│                        │     │                   matchHostnames in ... 
│                        │     ├ Description     : (*x509.Certificate).VerifyHostname previously called
│                        │     │                   matchHostnames in a loop over all DNS Subject Alternative
│                        │     │                   Name (SAN) entries. This caused strings.Split(host, ".") to
│                        │     │                   execute repeatedly on the same input hostname. With a large
│                        │     │                   DNS SAN list, verification costs scaled quadratically based
│                        │     │                   on the number of SAN entries multiplied by the hostname's
│                        │     │                   label count. Because x509.Verify validates hostnames before
│                        │     │                   building the certificate chain, this overhead occurred even
│                        │     │                   for untrusted certificates. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ VendorSeverity   ─ bitnami: 2 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           L/A:H 
│                        │     │                            ╰ V3Score : 6.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/783621 
│                        │     │                  ├ [1]: https://go.dev/issue/79694 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                        │     │                  │      cKw 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5037 
│                        │     ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │     ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ╰ [4] ╭ VulnerabilityID : CVE-2026-42507 
│                              ├ VendorIDs        ─ [0]: GO-2026-5039 
│                              ├ PkgID           : stdlib@v1.25.10 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.25.10 
│                              │                  ╰ UID : 33cc471c5269284 
│                              ├ InstalledVersion: v1.25.10 
│                              ├ FixedVersion    : 1.25.11, 1.26.4 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                              │                  │         0473847ed1715eab2460 
│                              │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                              │                            04aee4f84681a64877c0 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:f3d81db606f1a8f822fd845f56ecf40f34bb4ccdcece7f15121f1
│                              │                   9550c3de779 
│                              ├ Title           : When returning errors, functions in the net/textproto
│                              │                   package would in ... 
│                              ├ Description     : When returning errors, functions in the net/textproto
│                              │                   package would include its input as part of the error. This
│                              │                   might allow an attacker to inject misleading content to
│                              │                   errors that are printed or logged. 
│                              ├ Severity        : MEDIUM 
│                              ├ VendorSeverity   ─ bitnami: 2 
│                              ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                              │                            │           L/A:N 
│                              │                            ╰ V3Score : 5.3 
│                              ├ References       ╭ [0]: https://go.dev/cl/777060 
│                              │                  ├ [1]: https://go.dev/issue/79346 
│                              │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                              │                  │      cKw 
│                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
│                              │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5039 
│                              ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
│                              ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
├ [13] ╭ Target         : usr/local/bin/k3d 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2025-15558 
│                        │     ├ VendorIDs        ─ [0]: GHSA-p436-gjf2-799p 
│                        │     ├ PkgID           : github.com/docker/cli@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/cli 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/cli@v28.5.2%2Bincompatible 
│                        │     │                  ╰ UID : 207ecb2699a7f1fb 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.2.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-15558 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:76c29edf3535c492cf9c9e91470256a4dc2767ce98d08000bec16
│                        │     │                   d36c1124834 
│                        │     ├ Title           : docker/cli: Docker CLI for Windows: Privilege escalation via
│                        │     │                    malicious plugin binaries 
│                        │     ├ Description     : Docker CLI for Windows searches for plugin binaries in
│                        │     │                   C:\ProgramData\Docker\cli-plugins, a directory that does not
│                        │     │                    exist by default. A low-privileged attacker can create this
│                        │     │                    directory and place malicious CLI plugin binaries
│                        │     │                   (docker-compose.exe, docker-buildx.exe, etc.) that are
│                        │     │                   executed when a victim user opens Docker Desktop or invokes
│                        │     │                   Docker CLI plugin features, and allow privilege-escalation
│                        │     │                   if the docker CLI is executed as a privileged user.
│                        │     │                   
│                        │     │                   This issue affects Docker CLI: through 29.1.5 and Windows
│                        │     │                   binaries acting as a CLI-plugin manager using the 
│                        │     │                   github.com/docker/cli/cli-plugins/manager
│                        │     │                   https://pkg.go.dev/github.com/docker/cli@v29.1.5+incompatibl
│                        │     │                   e/cli-plugins/manager  package, such as Docker Compose.
│                        │     │                   This issue does not impact non-Windows binaries, and
│                        │     │                   projects not using the plugin-manager code. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-427 
│                        │     ├ VendorSeverity   ╭ bitnami: 3 
│                        │     │                  ├ ghsa   : 3 
│                        │     │                  ├ nvd    : 3 
│                        │     │                  ╰ redhat : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:P/VC:H
│                        │     │                  │         │            /VI:H/VA:H/SC:N/SI:N/SA:N/AU:N/R:U 
│                        │     │                  │         ╰ V40Score : 7 
│                        │     │                  ├ ghsa    ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:L/UI:P/VC:H
│                        │     │                  │         │            /VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │     │                  │         ╰ V40Score : 7 
│                        │     │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:R/S:U/C:H/I:
│                        │     │                  │         │           H/A:H 
│                        │     │                  │         ╰ V3Score : 8 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:H/I:
│                        │     │                            │           H/A:H 
│                        │     │                            ╰ V3Score : 7.3 
│                        │     ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-15558 
│                        │     │                  ├ [1] : https://docs.docker.com/desktop/release-notes 
│                        │     │                  ├ [2] : https://docs.docker.com/desktop/release-notes/ 
│                        │     │                  ├ [3] : https://github.com/docker/cli 
│                        │     │                  ├ [4] : https://github.com/docker/cli/commit/13759330b1f7e7cb
│                        │     │                  │       0d67047ea42c5482548ba7fa 
│                        │     │                  ├ [5] : https://github.com/docker/cli/pull/6713 
│                        │     │                  ├ [6] : https://github.com/docker/cli/security/advisories/GHS
│                        │     │                  │       A-p436-gjf2-799p 
│                        │     │                  ├ [7] : https://github.com/docker/compose/pull/12300 
│                        │     │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2025-15558 
│                        │     │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-15558 
│                        │     │                  ├ [10]: https://www.zerodayinitiative.com/advisories/ZDI-CAN-
│                        │     │                  │       28304 
│                        │     │                  ╰ [11]: https://www.zerodayinitiative.com/advisories/ZDI-CAN-
│                        │     │                          28304/ 
│                        │     ├ PublishedDate   : 2026-03-04T17:16:14.763Z 
│                        │     ╰ LastModifiedDate: 2026-03-09T17:38:15.95Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-34040 
│                        │     ├ VendorIDs        ─ [0]: GHSA-x744-4wpc-v9h2 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 92f0c95daedf9834 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:df7432412cc62adff55c7a937e9a649f939cc8e34065365068e93
│                        │     │                   17294a7a1c8 
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
│                        │     ╰ LastModifiedDate: 2026-04-03T16:51:28.67Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-41567 
│                        │     ├ VendorIDs        ─ [0]: GHSA-x86f-5xw2-fm2r 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 92f0c95daedf9834 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:66175697d0a3f6a6d0c900134c92310e78c5f19c7d5065534904c
│                        │     │                   063fa9c8ea2 
│                        │     ├ Title           : Docker: `PUT /containers/{id}/archive` executes container
│                        │     │                   binary on the host 
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
│                        │     ├ VendorSeverity   ─ ghsa: 3 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:H/A:N 
│                        │     │                         ╰ V3Score : 7.2 
│                        │     ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │     │                  ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                         x86f-5xw2-fm2r 
│                        │     ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │     ╰ LastModifiedDate: 2026-06-05T16:01:30.983Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 92f0c95daedf9834 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:c9eaecfb1dea2735d97d806e1b416f70a7dae05a91809a3d89c7e
│                        │     │                   2ed028962d7 
│                        │     ├ Title           : Docker: Race condition in docker cp allows bind mount
│                        │     │                   redirection to host path 
│                        │     ├ Description     : ## Summary
│                        │     │                   
│                        │     │                   A race condition during `docker cp` mount setup allows a
│                        │     │                   malicious container to redirect a bind mount target to an
│                        │     │                   arbitrary host path, potentially overwriting host files or
│                        │     │                   causing denial of service.
│                        │     │                   ## Details
│                        │     │                   When copying files into a container, the daemon sets up a
│                        │     │                   temporary filesystem view by bind-mounting volumes into a
│                        │     │                   private mount namespace. During this setup, the mount
│                        │     │                   destination is created inside the container root and then a
│                        │     │                   bind mount is attached using the container-relative path
│                        │     │                   resolved to an absolute host path.
│                        │     │                   Between mountpoint creation and the `mount()` syscall, a
│                        │     │                   process running inside the container can replace the
│                        │     │                   destination (or a parent path component) with a symlink
│                        │     │                   pointing to an arbitrary location on the host. The `mount()`
│                        │     │                    syscall follows the symlink, causing the volume to be
│                        │     │                   bind-mounted onto an arbitrary host path instead of the
│                        │     │                   intended container path.
│                        │     │                   ## Impact
│                        │     │                   A malicious container can redirect a volume bind mount to an
│                        │     │                    arbitrary host path. The impact depends on the volume
│                        │     │                   content and mount options:
│                        │     │                   - If the volume is writable, arbitrary host files at the
│                        │     │                   redirected path could be overwritten with the volume's
│                        │     │                   contents.
│                        │     │                   - If the volume is read-only, the host path is masked by the
│                        │     │                    mount for the duration of the operation, causing denial of
│                        │     │                   service.
│                        │     │                   - In all cases the mount is temporary (torn down after the
│                        │     │                   `docker cp` completes), but the effects of any writes
│                        │     │                   persist.
│                        │     │                   ### Conditions for exploitation
│                        │     │                   - A container must have at least one volume mount.
│                        │     │                   - A process inside the container must be able to rapidly
│                        │     │                   create and swap symlinks at the volume mount destination
│                        │     │                   path.
│                        │     │                   - An operator must initiate a `docker cp` into that
│                        │     │                   container, or call the `PUT /containers/{id}/archive` or
│                        │     │                   `HEAD /containers/{id}/archive` API endpoints.
│                        │     │                   ### Not affected
│                        │     │                   - Containers that do not have volume mounts are not
│                        │     │                   affected, as the race occurs during volume bind-mount
│                        │     │                   setup.
│                        │     │                   ## Workarounds
│                        │     │                   - Only run containers from trusted images.
│                        │     │                   - Avoid using `docker cp` with untrusted running
│                        │     │                   containers.
│                        │     │                   - Use authorization plugins to restrict access to the
│                        │     │                   archive API endpoints (`PUT /containers/{id}/archive`, `HEAD
│                        │     │                    /containers/{id}/archive`). 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ─ ghsa: 3 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/A:H 
│                        │     │                         ╰ V3Score : 7.2 
│                        │     ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                        ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │                               rg2x-37c3-w2rh 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-33997 
│                        │     ├ VendorIDs        ─ [0]: GHSA-pxq6-2prw-chj9 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 92f0c95daedf9834 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:339074b0915c153d386402acd789c92770f48bc6ff3697393a9c1
│                        │     │                   6db2fceff58 
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
│                        │     ├ CweIDs           ─ [0]: CWE-193 
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
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33997 
│                        │     │                  ├ [1]: https://docs.docker.com/engine/extend/legacy_plugins 
│                        │     │                  ├ [2]: https://github.com/moby/moby 
│                        │     │                  ├ [3]: https://github.com/moby/moby/commit/f4d6f25bf0c3fa12d4
│                        │     │                  │      968320a45685947756a22a 
│                        │     │                  ├ [4]: https://github.com/moby/moby/releases/tag/docker-v29.3.1 
│                        │     │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      pxq6-2prw-chj9 
│                        │     │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-33997 
│                        │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-33997 
│                        │     ├ PublishedDate   : 2026-03-31T03:15:57.523Z 
│                        │     ╰ LastModifiedDate: 2026-04-03T17:23:21.307Z 
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-41568 
│                        │     ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 92f0c95daedf9834 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:df6b0e51a7dfdd8185a1176c023d2a172b852f8c57c8c30888283
│                        │     │                   c8f5738d687 
│                        │     ├ Title           : Docker: Race condition in docker cp allows creation of
│                        │     │                   arbitrary empty files on the host via symlink swap 
│                        │     ├ Description     : ## Summary
│                        │     │                   
│                        │     │                   A race condition during `docker cp` mount setup allows a
│                        │     │                   malicious container to create empty files or directories at
│                        │     │                   arbitrary absolute paths on the host filesystem.
│                        │     │                   This advisory covers the race during mountpoint creation.
│                        │     │                   The related race during the subsequent mount syscall is
│                        │     │                   tracked in GHSA-rg2x-37c3-w2rh
│                        │     │                   ## Details
│                        │     │                   When copying files into a container, the daemon sets up a
│                        │     │                   temporary filesystem view by bind-mounting volumes into a
│                        │     │                   private mount namespace. During this setup, the mount
│                        │     │                   destination path is first resolved within the container's
│                        │     │                   root filesystem using `GetResourcePath`, and then used to
│                        │     │                   create the mountpoint (file or directory) if it does not
│                        │     │                   already exist via `createIfNotExists`.
│                        │     │                   Between path resolution and mountpoint creation, a process
│                        │     │                   running inside the container can swap a path component for a
│                        │     │                    symlink pointing to an arbitrary location on the host.
│                        │     │                   Because `createIfNotExists` operates on the already-resolved
│                        │     │                    absolute path using standard `os.MkdirAll` and
│                        │     │                   `os.OpenFile` — which follow symlinks in intermediate path
│                        │     │                   components — the symlink is followed and the file or
│                        │     │                   directory is created outside the container root filesystem,
│                        │     │                   as root.
│                        │     │                   ## Impact
│                        │     │                   A malicious container can create empty files or directories
│                        │     │                   at arbitrary absolute paths on the host filesystem, running
│                        │     │                   as root. This enables persistent denial of service — for
│                        │     │                   example:
│                        │     │                   - Converting `/etc/docker/daemon.json` into a directory
│                        │     │                   prevents the daemon from restarting
│                        │     │                   - Creating `/etc/nologin` prevents user logins
│                        │     │                   - Overwriting critical system paths with empty files can
│                        │     │                   break host services
│                        │     │                   The container does not gain read or write access to existing
│                        │     │                    host files — only the ability to create new empty files or
│                        │     │                   directories at chosen paths.
│                        │     │                   ### Conditions for exploitation
│                        │     │                   - A container must be running with a process that can
│                        │     │                   rapidly create and swap symlinks at a volume mount
│                        │     │                   destination path.
│                        │     │                   - An operator must initiate a `docker cp` into that
│                        │     │                   container, or call the `PUT /containers/{id}/archive` or
│                        │     │                   `HEAD /containers/{id}/archive` API endpoints.
│                        │     │                   ### Not affected
│                        │     │                   - Containers that do not have volume mounts are not
│                        │     │                   affected, as the race occurs during volume bind-mount
│                        │     │                   setup.
│                        │     │                   ## Patches
│                        │     │                   Mountpoint creation is now scoped to the container root
│                        │     │                   using `os.Root` (Go 1.24+), which refuses to follow symlinks
│                        │     │                    that escape the opened root directory. All filesystem
│                        │     │                   operations in `createIfNotExists` (`MkdirAll`, `OpenFile`)
│                        │     │                   are performed through the `os.Root` handle, so even if a
│                        │     │                   symlink swap occurs after path resolution, the creation
│                        │     │                   stays confined to the container root.
│                        │     │                   ## Workarounds
│                        │     │                   - Only run containers from trusted images.
│                        │     │                   - Avoid using `docker cp` with untrusted running
│                        │     │                   containers.
│                        │     │                   - Use authorization plugins to restrict access to the
│                        │     │                   archive API endpoints (`PUT /containers/{id}/archive`, `HEAD
│                        │     │                    /containers/{id}/archive`). 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ VendorSeverity   ─ ghsa: 2 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L/A:H 
│                        │     │                         ╰ V3Score : 6 
│                        │     ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                        ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │                               vp62-88p7-qqf5 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-42504 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │     ├ PkgID           : stdlib@v1.26.3 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │     │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │     ├ InstalledVersion: v1.26.3 
│                        │     ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:b5f0f91c9dc577e22f4b05e81d317459bd7e51b15fa797391c1f7
│                        │     │                   e2447ce6bed 
│                        │     ├ Title           : Decoding a maliciously-crafted MIME header containing many
│                        │     │                   invalid enc ... 
│                        │     ├ Description     : Decoding a maliciously-crafted MIME header containing many
│                        │     │                   invalid encoded-words can consume excessive CPU. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-407 
│                        │     ├ VendorSeverity   ─ bitnami: 3 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/774481 
│                        │     │                  ├ [1]: https://go.dev/issue/79217 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                        │     │                  │      cKw 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42504 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5038 
│                        │     ├ PublishedDate   : 2026-06-02T23:16:37.927Z 
│                        │     ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ├ [7] ╭ VulnerabilityID : CVE-2026-27145 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5037 
│                        │     ├ PkgID           : stdlib@v1.26.3 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │     │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │     ├ InstalledVersion: v1.26.3 
│                        │     ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                        │     │                  │         0473847ed1715eab2460 
│                        │     │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                        │     │                            04aee4f84681a64877c0 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:2a49f77502c356cec9c4567a36df0274884aad091eb5b05454dea
│                        │     │                   4899a4840d7 
│                        │     ├ Title           : *x509.Certificate).VerifyHostname previously called
│                        │     │                   matchHostnames in ... 
│                        │     ├ Description     : (*x509.Certificate).VerifyHostname previously called
│                        │     │                   matchHostnames in a loop over all DNS Subject Alternative
│                        │     │                   Name (SAN) entries. This caused strings.Split(host, ".") to
│                        │     │                   execute repeatedly on the same input hostname. With a large
│                        │     │                   DNS SAN list, verification costs scaled quadratically based
│                        │     │                   on the number of SAN entries multiplied by the hostname's
│                        │     │                   label count. Because x509.Verify validates hostnames before
│                        │     │                   building the certificate chain, this overhead occurred even
│                        │     │                   for untrusted certificates. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ VendorSeverity   ─ bitnami: 2 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           L/A:H 
│                        │     │                            ╰ V3Score : 6.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/783621 
│                        │     │                  ├ [1]: https://go.dev/issue/79694 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                        │     │                  │      cKw 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5037 
│                        │     ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │     ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
│                        ╰ [8] ╭ VulnerabilityID : CVE-2026-42507 
│                              ├ VendorIDs        ─ [0]: GO-2026-5039 
│                              ├ PkgID           : stdlib@v1.26.3 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                              │                  ╰ UID : 3dcf59cf5482f2c5 
│                              ├ InstalledVersion: v1.26.3 
│                              ├ FixedVersion    : 1.25.11, 1.26.4 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e7
│                              │                  │         0473847ed1715eab2460 
│                              │                  ╰ DiffID: sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f
│                              │                            04aee4f84681a64877c0 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:45189471623f25f67d2418e6e7a12ca37049b6adac35d9b9764af
│                              │                   8f83aaa7577 
│                              ├ Title           : When returning errors, functions in the net/textproto
│                              │                   package would in ... 
│                              ├ Description     : When returning errors, functions in the net/textproto
│                              │                   package would include its input as part of the error. This
│                              │                   might allow an attacker to inject misleading content to
│                              │                   errors that are printed or logged. 
│                              ├ Severity        : MEDIUM 
│                              ├ VendorSeverity   ─ bitnami: 2 
│                              ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                              │                            │           L/A:N 
│                              │                            ╰ V3Score : 5.3 
│                              ├ References       ╭ [0]: https://go.dev/cl/777060 
│                              │                  ├ [1]: https://go.dev/issue/79346 
│                              │                  ├ [2]: https://groups.google.com/g/golang-announce/c/tKs3rmcB
│                              │                  │      cKw 
│                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
│                              │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-5039 
│                              ├ PublishedDate   : 2026-06-02T23:16:38.027Z 
│                              ╰ LastModifiedDate: 2026-06-04T16:15:50.143Z 
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
│                      ├ Layer     ╭ Digest   : sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e70473847ed171
│                      │           │            5eab2460 
│                      │           ├ DiffID   : sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f04aee4f84681
│                      │           │            a64877c0 
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
│                      ├ Layer     ╭ Digest   : sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e70473847ed171
│                      │           │            5eab2460 
│                      │           ├ DiffID   : sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f04aee4f84681
│                      │           │            a64877c0 
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
                       ├ Layer     ╭ Digest   : sha256:6feec86f1001464d66dcf81f950e11f1ac9364d926e70473847ed171
                       │           │            5eab2460 
                       │           ├ DiffID   : sha256:a6e1619daa28c6604ad09c523b0b61049e9a61855d0f04aee4f84681
                       │           │            a64877c0 
                       │           ╰ CreatedBy: COPY / / # buildkit 
                       ╰ Offset   : 36 
```
