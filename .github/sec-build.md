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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d6e0072f07bc326b0c10a3af36ce9d9a65bf2e3982aa3c4e090e
│                        │      │                   f2abdf422bf8 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6edc0b90ce4b96f71e18c180425124296f09eff55e5771d9bdb7
│                        │      │                   3bf7e8eb363e 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:5e8b0304cdc71d6439021813e7bbf68037997d8cff7ca099f59a
│                        │      │                   04284b407961 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e20a7667f4a114ca364ee5b1f7e9aaa4d037db44e993b8192e09
│                        │      │                   e921c48c765e 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ee7a3fc5fd2c89b7f7c06d3dd4e98d4e97a7d2f116376e875794
│                        │      │                   3f3b60ba341c 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:12e44e39254b9b4b26fcdd86fd6760c0f9011cffc39888b3b6df
│                        │      │                   5da2a3989e89 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:14732dedb8ad6712e3fa3faa404c35f473eb30b3f96aaecf8f23
│                        │      │                   7509ac9a80fd 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20587 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [5] : https://errata.almalinux.org/8/ALSA-2026-20587.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:20587 
│                        │      │                  ├ [7] : https://inbox.sourceware.org/libc-announce/76814edf-
│                        │      │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [8] : https://linux.oracle.com/cve/CVE-2026-4046.html 
│                        │      │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                        │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [11]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                        │      │                  │       gconv-extra/ 
│                        │      │                  ├ [12]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [13]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [14]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a3db902e8fdcb3346a72ae1be92592e38bd08e5f2b5f0f00ab11
│                        │      │                   9fbc9c43afc6 
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
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3]: https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [6]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/03/2
│                        │      │                         3/2 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e66ae89041bf5e94900ed1fd0bc8871e48ed77cdeb54305ac303
│                        │      │                   88f6cb0a081e 
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
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3]: https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [6]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/03/2
│                        │      │                         3/2 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b6724db3441b7f302953cb8593a980fc04815547f3b7abad7e10
│                        │      │                   836a1e9b8616 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6b0600f3ddffa8942a159301947b752ee6021c185980695fc6e6
│                        │      │                   f0a5a07cbf07 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6cfb6c32ade926a4dcf336766d3f196f4d76fab3820e484d9e32
│                        │      │                   0e55b3980b23 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20587 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [5] : https://errata.almalinux.org/8/ALSA-2026-20587.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:20587 
│                        │      │                  ├ [7] : https://inbox.sourceware.org/libc-announce/76814edf-
│                        │      │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [8] : https://linux.oracle.com/cve/CVE-2026-4046.html 
│                        │      │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                        │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [11]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                        │      │                  │       gconv-extra/ 
│                        │      │                  ├ [12]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [13]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [14]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1763db9bf87538e7555db160960d88fdd32650e349af5bf4b3f0
│                        │      │                   941701e97b60 
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
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3]: https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [6]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/03/2
│                        │      │                         3/2 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:29ef53768036dfa9b3f6fc65c18843d113fb85d72e92cb14f276
│                        │      │                   3cc513b90420 
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
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3]: https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [6]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/03/2
│                        │      │                         3/2 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e77e9de51a4fc10e7daf9e922c71b31a30abc8c01ac9e5094a6b
│                        │      │                   604424bd51b8 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:42420ec8f80c81919c258866ea539885012c225534a763470651
│                        │      │                   25bfbca0fc7c 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8d4e64683aa4aa54bbf9fd9c45be10f1d33bb2d3eaee4215244b
│                        │      │                   cde7bb5bfce5 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20587 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [5] : https://errata.almalinux.org/8/ALSA-2026-20587.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:20587 
│                        │      │                  ├ [7] : https://inbox.sourceware.org/libc-announce/76814edf-
│                        │      │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [8] : https://linux.oracle.com/cve/CVE-2026-4046.html 
│                        │      │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                        │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [11]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                        │      │                  │       gconv-extra/ 
│                        │      │                  ├ [12]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [13]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [14]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c3887c584b65f6b483fe44017ccead5fcbf48effb9d70eaaf013
│                        │      │                   bea2bbc2b3cc 
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
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3]: https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [6]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/03/2
│                        │      │                         3/2 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:93207a1ae1f2a33eb746fdcb9884e4b8a376c8de3f341fec59b0
│                        │      │                   5bdb947ed1fa 
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
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:19061 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3]: https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4]: https://errata.almalinux.org/10/ALSA-2026-19061.html 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [6]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [8]: https://www.openwall.com/lists/oss-security/2026/03/2
│                        │      │                         3/2 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1106622a585672b953160b6e645f041396531ded8483b6d59f97
│                        │      │                   d765b1d0876b 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c14ff235c1b5f244a0edb1b2196e34129f5a2a87fd628bca4173
│                        │      │                   aa6e5420483d 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:04436eac5fc05aeaace184cc55058d01179bd89062bcdb05204f
│                        │      │                   ecd46f98ec6e 
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
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-1352 
│                        │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2025-1352 
│                        │      │                  ├ [2]: https://sourceware.org/bugzilla/attachment.cgi?id=15923 
│                        │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=32650 
│                        │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=32650
│                        │      │                  │      #c2 
│                        │      │                  ├ [5]: https://vuldb.com/?ctiid.295960 
│                        │      │                  ├ [6]: https://vuldb.com/?id.295960 
│                        │      │                  ├ [7]: https://vuldb.com/?submit.495965 
│                        │      │                  ├ [8]: https://www.cve.org/CVERecord?id=CVE-2025-1352 
│                        │      │                  ╰ [9]: https://www.gnu.org/ 
│                        │      ├ PublishedDate   : 2025-02-16T15:15:09.133Z 
│                        │      ╰ LastModifiedDate: 2025-11-03T20:34:23.89Z 
│                        ├ [22] ╭ VulnerabilityID : CVE-2025-1376 
│                        │      ├ PkgID           : libelf1t64@0.194-4 
│                        │      ├ PkgName         : libelf1t64 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro=
│                        │      │                  │       ubuntu-26.04 
│                        │      │                  ╰ UID : 855cfee3bc864065 
│                        │      ├ InstalledVersion: 0.194-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1376 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0a0c89713a7072872a1538037dac1c1b7e34bc2b571d756dd8f7
│                        │      │                   7718c73f3ca3 
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
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-1376 
│                        │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2025-1376 
│                        │      │                  ├ [2]: https://sourceware.org/bugzilla/attachment.cgi?id=15940 
│                        │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=32672 
│                        │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=32672
│                        │      │                  │      #c3 
│                        │      │                  ├ [5]: https://vuldb.com/?ctiid.295984 
│                        │      │                  ├ [6]: https://vuldb.com/?id.295984 
│                        │      │                  ├ [7]: https://vuldb.com/?submit.497538 
│                        │      │                  ├ [8]: https://www.cve.org/CVERecord?id=CVE-2025-1376 
│                        │      │                  ╰ [9]: https://www.gnu.org/ 
│                        │      ├ PublishedDate   : 2025-02-17T05:15:09.807Z 
│                        │      ╰ LastModifiedDate: 2025-11-04T20:21:18.26Z 
│                        ├ [23] ╭ VulnerabilityID : CVE-2025-66382 
│                        │      ├ PkgID           : libexpat1@2.7.4-1 
│                        │      ├ PkgName         : libexpat1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : c17b9d4b5a8b1286 
│                        │      ├ InstalledVersion: 2.7.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:14f11115f9dcd7b2dd3a0b72414ada394ba7c7d933a283c372a7
│                        │      │                   4c2ba2d884ea 
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
│                        │      │                  ├ [3]: https://github.com/libexpat/libexpat/issues/1076 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-66382 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-66382 
│                        │      ├ PublishedDate   : 2025-11-28T07:15:57.9Z 
│                        │      ╰ LastModifiedDate: 2026-05-12T13:17:23.933Z 
│                        ├ [24] ╭ VulnerabilityID : CVE-2024-2236 
│                        │      ├ PkgID           : libgcrypt20@1.12.0-2ubuntu0.1 
│                        │      ├ PkgName         : libgcrypt20 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2ubuntu0.1?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : df31886cccfcce83 
│                        │      ├ InstalledVersion: 1.12.0-2ubuntu0.1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:89da493d8eaa6a7026de09460b497e14632397c53778f9d2b10e
│                        │      │                   9bfa40830a4e 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-22185 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:44ca899809dcd587aca8518b4a2b8f86c36b2e751dd87212ff9e
│                        │      │                   beaf0d494b89 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e47241198e4c260e8f350f986e6299c16d63f2c97fd95997cd51
│                        │      │                   977e8dbc78be 
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
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2e237ebea770c2046fd878cfcb804cc3aba245278bf9484f96d3
│                        │      │                   452adebdcb58 
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
│                        ├ [28] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14@3.14.4-1?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : 698bf98ba5451f67 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:93846b67815a450bb3685ddc60b4a2a113e4fdc9dd7aba4de5fd
│                        │      │                   a039361d25b9 
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
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19177 
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
│                        │      │                  ├ [39]: https://errata.almalinux.org/9/ALSA-2026-19177.html 
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
│                        ├ [29] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14-minimal 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                        │      │                  │       md64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : edd92b8f9e06659 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0b3520c082ce2e3b52dbe3569c030b03d37667856aba98adb5f1
│                        │      │                   0491be20c483 
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
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19177 
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
│                        │      │                  ├ [39]: https://errata.almalinux.org/9/ALSA-2026-19177.html 
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
│                        ├ [30] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14-stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : d9cfb9637e1a0676 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6f69c44dbb82dd9630ddb8a69c647a1e89c50c24cd04ce359b9a
│                        │      │                   a14d4029e146 
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
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19177 
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
│                        │      │                  ├ [39]: https://errata.almalinux.org/9/ALSA-2026-19177.html 
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
│                        ├ [31] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ff5e7b67d2385233 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1abbae06c271188fcd0b95724257981253e537d88d51afd27a02
│                        │      │                   abb1ccc83a9b 
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
│                        ├ [32] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ff5e7b67d2385233 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ceb34d67913df53f40a2857968332803d0b1ff757557bd34f05f
│                        │      │                   39ec011c7723 
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
│                        ├ [33] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : libsubid5@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : libsubid5 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsubid5@4.17.4-2ubuntu3?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 2e6a9fef7087b138 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f3b299ae37e9c418efebd2da0f2ad4f5526887a7bd658d446d9e
│                        │      │                   b48e2982cfdc 
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
│                        ├ [34] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 41d4afb2fde363cf 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:542e100401623fbe056b0f1c1e6b9c7e72413c38ded40a5119b2
│                        │      │                   2a204e624ba3 
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
│                        ├ [35] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 41d4afb2fde363cf 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ede850a1a046f570fc6b1ff37270e0a8436835d91125584eff7a
│                        │      │                   3b8705f43aac 
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
│                        ├ [36] ╭ VulnerabilityID : CVE-2026-1757 
│                        │      ├ PkgID           : libxml2-16@2.15.2+dfsg-0.1 
│                        │      ├ PkgName         : libxml2-16 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2-16@2.15.2%2Bdfsg-0.1?arch=amd
│                        │      │                  │       64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 9bfe0fc72832625d 
│                        │      ├ InstalledVersion: 2.15.2+dfsg-0.1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-1757 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9db19e344967e1b644a6e74d37f6894591eae07a142984b17521
│                        │      │                   6eddf0dd8440 
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
│                        ├ [37] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e1bfbadc9113c00a 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:93b68776e3c2eebcf4e77744b0501eedbc28bc0499e833283350
│                        │      │                   322c2215a29c 
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
│                        ├ [38] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e1bfbadc9113c00a 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3583dcd9034a789b400b7cc66fb704ebe661bd2656f3c221c3cc
│                        │      │                   7fe4eb363f95 
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
│                        ├ [39] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : login.defs 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&d
│                        │      │                  │       istro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : eaf648d5e4e975f7 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d037cd2801998d9776e711f6e3271d9e77bdaabf85e903282e1b
│                        │      │                   bd92fedf207e 
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
│                        ├ [40] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c9a246f978302e62e8cd777d6147e099951ca5b7dd56ffe48415
│                        │      │                   5dfeb430bb9c 
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
│                        ├ [41] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:540bba22d3395cb5e646387c822189c236add4ae9f949a69403a
│                        │      │                   35251f235f81 
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
│                        ├ [42] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : passwd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e6ebfac85406f0d5 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e0158de7f847af97ab7b8388719052cd29671a55e1cc0d6f2632
│                        │      │                   8169da71347c 
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
│                        ├ [43] ╭ VulnerabilityID : CVE-2018-6952 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : d95d6071755544be 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2018-6952 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a1ba17c55eac83ad7f6b2074882085942cc7c5ceace2d8eb9289
│                        │      │                   ac5af0accad9 
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
│                        ├ [44] ╭ VulnerabilityID : CVE-2021-45261 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : d95d6071755544be 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-45261 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b3aebd2c20e544e8587352f7dd045e6158e40a7fece7095fd879
│                        │      │                   fc27defd3927 
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
│                        ├ [45] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : python3.14@3.14.4-1 
│                        │      ├ PkgName         : python3.14 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : 5c38e5558a798bb7 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:10ca403c388d1544a4a7da4ce71642f43fdf71cb2be158db9f5e
│                        │      │                   f376bf31a759 
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
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19177 
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
│                        │      │                  ├ [39]: https://errata.almalinux.org/9/ALSA-2026-19177.html 
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
│                        ├ [46] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : python3.14-minimal@3.14.4-1 
│                        │      ├ PkgName         : python3.14-minimal 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                        │      │                  │       4&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : da8e2190347b7c6 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:858db46d9b150767d9b37e02a079751024373dab96c9c3ed762b
│                        │      │                   cf59ce4c1ba5 
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
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:19177 
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
│                        │      │                  ├ [39]: https://errata.almalinux.org/9/ALSA-2026-19177.html 
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
│                        ├ [47] ╭ VulnerabilityID : CVE-2026-35341 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:32cb8ea21b594bd9d140ef55420ee6025668dbdb439bb25363c0
│                        │      │                   5e08b9b23412 
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
│                        ├ [48] ╭ VulnerabilityID : CVE-2026-35344 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:fad32fb3a0f40db9fb9b49d9752bfedfc47274898c7c5a6036fa
│                        │      │                   986216570328 
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
│                        ├ [49] ╭ VulnerabilityID : CVE-2026-35345 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:7537cf28994270472596644deac8a2730d6ca38f1ccb893db0dd
│                        │      │                   9d67585839b9 
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
│                        ├ [50] ╭ VulnerabilityID : CVE-2026-35348 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:478d3c1515c163d747d372ae85f16375132c6f12c69b6a85aba8
│                        │      │                   8000ad82ba3a 
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
│                        ├ [51] ╭ VulnerabilityID : CVE-2026-35350 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:24e58018f3d634c2316d1661d02f660db310a9551f4275e7f9d1
│                        │      │                   d8ff2e24608c 
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
│                        ├ [52] ╭ VulnerabilityID : CVE-2026-35351 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:156fccf0e81bbbbc798f05bb07e7df852218431faca4aca5bf9e
│                        │      │                   ea5e16ab63e5 
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
│                        ├ [53] ╭ VulnerabilityID : CVE-2026-35352 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2a25462d9331d6ad31a16ec7e55e136b0c51f02f9a511344f68c
│                        │      │                   4f715a001b64 
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
│                        ├ [54] ╭ VulnerabilityID : CVE-2026-35354 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:36ad720da6e2788c490cdbc7ad65bc705806a35ae0a28851e14e
│                        │      │                   ff6ca141bbf1 
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
│                        ├ [55] ╭ VulnerabilityID : CVE-2026-35357 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ff88b61adc38513e72ff20f535947e2d1444cbdf20c2221fd204
│                        │      │                   cdc44e8e13b5 
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
│                        ├ [56] ╭ VulnerabilityID : CVE-2026-35359 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2cdb5991aed9d95eb55b450ea5fdf8eb567e2c376e3810b502fc
│                        │      │                   c51c1e41d06c 
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
│                        ├ [57] ╭ VulnerabilityID : CVE-2026-35360 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:73a106bf68e3355e31a8dcd3f1213834abbb17a49d2e159b010e
│                        │      │                   9d525e8a5bc2 
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
│                        ├ [58] ╭ VulnerabilityID : CVE-2026-35363 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e971c0595bcfb77a59da1ef373047dd0239b7780224072e6ebd8
│                        │      │                   55b199889987 
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
│                        ├ [59] ╭ VulnerabilityID : CVE-2026-35364 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c30132ffd0286e8c39793ddc33bc158d1df0fcffeee6b7b24703
│                        │      │                   f0e9705e6da6 
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
│                        ├ [60] ╭ VulnerabilityID : CVE-2026-35367 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1c7164724bf48a615ee3fd04661c6a7acfd2f7b28ce65674b8e9
│                        │      │                   85f82adaa935 
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
│                        ├ [61] ╭ VulnerabilityID : CVE-2026-35368 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a693e3382feb7042c6ea1bb26ec8adc3cfde611282007df9a947
│                        │      │                   7caf4b59c3c6 
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
│                        ├ [62] ╭ VulnerabilityID : CVE-2026-35370 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:27c92ff75c523f0526073841b27f2166a4501a381f85ca534ab6
│                        │      │                   18e8377cc4c1 
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
│                        ├ [63] ╭ VulnerabilityID : CVE-2026-35371 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f2d7cf9f0e3f8efff87ca4f6249b23d0a2a41bd385c1490da324
│                        │      │                   5e7b80abffb1 
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
│                        ├ [64] ╭ VulnerabilityID : CVE-2026-35373 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:066d0207139984d794dcc40b1cf0a9b39ef1ccf8c7c657800062
│                        │      │                   4f47945747a2 
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
│                        ├ [65] ╭ VulnerabilityID : CVE-2026-35374 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:19c4a5aac6d03e588cb8b5ab0e75c25fd46480fcd63728ccb535
│                        │      │                   08f897872ebe 
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
│                        ├ [66] ╭ VulnerabilityID : CVE-2026-35377 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f399fb77eeff60598f76440e6e58f68c744307db54994c833ea6
│                        │      │                   c3e9000cc341 
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
│                        ├ [67] ╭ VulnerabilityID : CVE-2025-45582 
│                        │      ├ PkgID           : tar@1.35+dfsg-4 
│                        │      ├ PkgName         : tar 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : df8f3d12dd71b054 
│                        │      ├ InstalledVersion: 1.35+dfsg-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-45582 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b402e8c3629bb22d004c44642526e9e96d02c3385f40ab6aa8a3
│                        │      │                   4095a37c628f 
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
│                        ├ [68] ╭ VulnerabilityID : CVE-2026-5704 
│                        │      ├ PkgID           : tar@1.35+dfsg-4 
│                        │      ├ PkgName         : tar 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : df8f3d12dd71b054 
│                        │      ├ InstalledVersion: 1.35+dfsg-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5704 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:27b571a06fd0ee1cb8bd32278e3a1c864b47db892be68a4d5a9f
│                        │      │                   f0dca1c285d2 
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
│                        ├ [69] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : uidmap@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : uidmap 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/uidmap@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : d7cc4b1ad13c4c8d 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:54ed01fdd81709b04db3c19721cb11cb1f69561db8b3af64cdb3
│                        │      │                   348e12d67f9d 
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
│                        ├ [70] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:44ae67d80d478ca312db47a3ea4ee279d2f8ed94c05a268a5931
│                        │      │                   d5f6cd4764c3 
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
│                        ├ [71] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a2a826707b0e14ec87685d910d44614f975d37d95961f6bf5a4d
│                        │      │                   7e37d73b2668 
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
│                        ╰ [72] ╭ VulnerabilityID : CVE-2021-31879 
│                               ├ PkgID           : wget@1.25.0-2ubuntu4 
│                               ├ PkgName         : wget 
│                               ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/wget@1.25.0-2ubuntu4?arch=amd64&distr
│                               │                  │       o=ubuntu-26.04 
│                               │                  ╰ UID : a886bdd7bd7f93f6 
│                               ├ InstalledVersion: 1.25.0-2ubuntu4 
│                               ├ Status          : affected 
│                               ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                               │                  │         4c2a7112bc86c63eb8b82 
│                               │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                               │                            ec496429992e7cc10387f 
│                               ├ SeveritySource  : ubuntu 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-31879 
│                               ├ DataSource       ╭ ID  : ubuntu 
│                               │                  ├ Name: Ubuntu CVE Tracker 
│                               │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                               ├ Fingerprint     : sha256:3c38ddf6996ec0524e2257bc03194a9aba320ebb1f1b034bfffd
│                               │                   8965afffa11a 
│                               ├ Title           : wget: authorization header disclosure on redirect 
│                               ├ Description     : GNU Wget through 1.21.1 does not omit the Authorization
│                               │                   header upon a redirect to a different origin, a related
│                               │                   issue to CVE-2018-1000007. 
│                               ├ Severity        : MEDIUM 
│                               ├ CweIDs           ─ [0]: CWE-601 
│                               ├ VendorSeverity   ╭ amazon     : 2 
│                               │                  ├ cbl-mariner: 2 
│                               │                  ├ nvd        : 2 
│                               │                  ├ photon     : 2 
│                               │                  ├ redhat     : 2 
│                               │                  ╰ ubuntu     : 2 
│                               ├ CVSS             ╭ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:P/I:P/A:N 
│                               │                  │        ├ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                               │                  │        │           L/A:N 
│                               │                  │        ├ V2Score : 5.8 
│                               │                  │        ╰ V3Score : 6.1 
│                               │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I:
│                               │                           │           N/A:N 
│                               │                           ╰ V3Score : 6.5 
│                               ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2021-31879 
│                               │                  ├ [1]: https://mail.gnu.org/archive/html/bug-wget/2021-02/ms
│                               │                  │      g00002.html 
│                               │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2021-31879 
│                               │                  ├ [3]: https://savannah.gnu.org/bugs/?56909 
│                               │                  ├ [4]: https://security.netapp.com/advisory/ntap-20210618-00
│                               │                  │      02/ 
│                               │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2021-31879 
│                               ├ PublishedDate   : 2021-04-29T05:15:08.707Z 
│                               ╰ LastModifiedDate: 2024-11-21T06:06:25.02Z 
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
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-46680 
│                        │     ├ VendorIDs        ─ [0]: GHSA-fqw6-gf59-qr4w 
│                        │     ├ PkgID           : github.com/containerd/containerd/v2@v2.2.3 
│                        │     ├ PkgName         : github.com/containerd/containerd/v2 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.3 
│                        │     │                  ╰ UID : baa14ee9769f7d12 
│                        │     ├ InstalledVersion: v2.2.3 
│                        │     ├ FixedVersion    : 2.0.9, 2.2.4, 2.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:11373c033ffe2e4543b021f7d857c4536dbf1e8d8ee7e02c1794b
│                        │     │                   1688af59d5e 
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
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:50fd3cb8c20af5d20f390ade3b9e9d636ae2f0fb58107b523aadc
│                        │     │                   a56e1c1da8b 
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
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d13566cc4d9d2a94dce64867fc2ecd2a79ea0ba6eaeadd0f070f5
│                        │     │                   9135ea8d895 
│                        │     ├ Title           : Docker: `PUT /containers/{id}/archive` executes container
│                        │     │                   binary on the host 
│                        │     ├ Description     : ## Summary
│                        │     │                   
│                        │     │                   When a user uploads a compressed archive into a container, a
│                        │     │                    malicious image can execute arbitrary code with daemon
│                        │     │                   (host root) privileges.
│                        │     │                   ## Details
│                        │     │                   When handling `PUT /containers/{id}/archive` requests with
│                        │     │                   compressed archives, the daemon decompresses them using
│                        │     │                   external system binaries. Due to incorrect ordering of
│                        │     │                   operations, these binaries are resolved from the container's
│                        │     │                    filesystem rather than the host's. A container image that
│                        │     │                   includes a trojanized decompression binary can achieve code
│                        │     │                   execution as the daemon process whenever a compressed
│                        │     │                   archive is uploaded to that container.
│                        │     │                   The executed binary runs with the daemon's full privileges,
│                        │     │                   including host root UID and unrestricted capabilities.
│                        │     │                   ## Impact
│                        │     │                   Arbitrary code execution as host root, crossing the
│                        │     │                   container-to-host trust boundary.
│                        │     │                   ### Conditions for exploitation
│                        │     │                   - A user must run a container from a malicious image that
│                        │     │                   contains a trojanized decompression binary.
│                        │     │                   - The user must then upload a compressed archive (xz or
│                        │     │                   gzip) into that container, either by piping a compressed
│                        │     │                   archive via `docker cp -` or by calling the `PUT
│                        │     │                   /containers/{id}/archive` API directly with compressed
│                        │     │                   content.
│                        │     │                   ### Not affected
│                        │     │                   Standard `docker cp` usage is **not** affected, because the
│                        │     │                   CLI sends uncompressed tar by default:
│                        │     │                   ```
│                        │     │                   docker cp ./file.txt mycontainer:/file.txt
│                        │     │                   This can only be exploited when explicitly passing a xz or
│                        │     │                   gzip-compressed archive to `docker cp` or the `PUT
│                        │     │                   /containers/{id}/archive` API, for example:
│                        │     │                   cat archive.tar.xz | docker cp - mycontainer:/dir
│                        │     │                   Decompression formats using pure Go implementations (bzip2,
│                        │     │                   zstd, and gzip when the container image does not contain an
│                        │     │                   `unpigz` binary) are also not affected.
│                        │     │                   ## Workarounds
│                        │     │                   - Only run containers from trusted images.
│                        │     │                   - Use authorization plugins to limit access to the `PUT
│                        │     │                   /containers/{id}/archive` endpoint.
│                        │     │                   - Avoid piping compressed archives into containers created
│                        │     │                   from untrusted images. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ─ ghsa: 3 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:H/A:N 
│                        │     │                         ╰ V3Score : 7.2 
│                        │     ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                        ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │                               x86f-5xw2-fm2r 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:f4f0f87aadfe705648361d6c60aaec711e7a70f56aa0e0bebb56e
│                        │     │                   fffe74cda88 
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
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:2ddeb7bcb9eab77d0a9400a57d32e977a5d836c3d928268d8a16a
│                        │     │                   3b6e7386ca3 
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
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:7376242e43877c8270d505cb2ce0b5ad0d7b537d19b8401a42cf0
│                        │     │                   26d8181914d 
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
│                        ├ [6] ╭ VulnerabilityID : GHSA-pmwq-pjrm-6p5r 
│                        │     ├ PkgID           : github.com/in-toto/in-toto-golang@v0.10.0 
│                        │     ├ PkgName         : github.com/in-toto/in-toto-golang 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/in-toto/in-toto-golang@v0.10.0 
│                        │     │                  ╰ UID : 2f00fd2b28b6e12f 
│                        │     ├ InstalledVersion: v0.10.0 
│                        │     ├ FixedVersion    : 0.11.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://github.com/advisories/GHSA-pmwq-pjrm-6p5r 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:7002d4cfefcea62a040c4e1df36ab8f8870d91d74b4a04a6b8f8d
│                        │     │                   46a647c148b 
│                        │     ├ Title           : in-toto-golang and in-toto-python have inconsistent negation
│                        │     │                    behavior 
│                        │     ├ Description     : ### Impact
│                        │     │                   _What kind of vulnerability is it? Who is impacted?_
│                        │     │                   
│                        │     │                   in-toto-golang and in-toto-python both support glob patterns
│                        │     │                    in artifact rules to indicate the artifacts that a rule
│                        │     │                   applies to. Both support negations in character classes to
│                        │     │                   indicate what should *not* be matched, but they used
│                        │     │                   different operators to indicate the negation. in-toto-python
│                        │     │                    uses `!` while in-toto-golang used `^`. A layout authored
│                        │     │                   with the expectations of one implementation can therefore
│                        │     │                   exhibit different behavior in the other implementation.
│                        │     │                   This impacts users in a specific set of circumstances where
│                        │     │                   two different implementations are used to verify the same
│                        │     │                   layout + attestation bundle at different stages of the same
│                        │     │                   pipeline. As a rule of thumb, we advise using a single
│                        │     │                   implementation across all aspects of a pipeline, from layout
│                        │     │                    creation to pipeline execution and verification to prevent
│                        │     │                   this class of bugs.
│                        │     │                   ### Patches
│                        │     │                   _Has the problem been patched? What versions should users
│                        │     │                   upgrade to?_
│                        │     │                   in-toto-golang has been updated to use `!` instead of `^` to
│                        │     │                    indicate negation. See
│                        │     │                   https://github.com/in-toto/in-toto-golang/pull/462. This is
│                        │     │                   part of v0.11.0. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ VendorSeverity   ─ ghsa: 2 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:N/I:H/A:N 
│                        │     │                         ╰ V3Score : 4.1 
│                        │     ├ References       ╭ [0]: https://github.com/in-toto/in-toto-golang 
│                        │     │                  ├ [1]: https://github.com/in-toto/in-toto-golang/commit/36d78
│                        │     │                  │      2ffb2ca3adbffcdce1fd971c23319dd4469 
│                        │     │                  ├ [2]: https://github.com/in-toto/in-toto-golang/pull/462 
│                        │     │                  ╰ [3]: https://github.com/in-toto/in-toto-golang/security/adv
│                        │     │                         isories/GHSA-pmwq-pjrm-6p5r 
│                        │     ├ PublishedDate   : 2026-05-08T22:24:19Z 
│                        │     ╰ LastModifiedDate: 2026-05-08T22:24:19Z 
│                        ├ [7] ╭ VulnerabilityID : CVE-2026-39882 
│                        │     ├ VendorIDs        ─ [0]: GHSA-w8rr-5gcm-pp58 
│                        │     ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetri
│                        │     │                   chttp@v1.42.0 
│                        │     ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetri
│                        │     │                   chttp 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/ot
│                        │     │                  │       lpmetric/otlpmetrichttp@v1.42.0 
│                        │     │                  ╰ UID : f0b837b62a848b5 
│                        │     ├ InstalledVersion: v1.42.0 
│                        │     ├ FixedVersion    : 1.43.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:e3b374f8e4b89c0183264137880d3b155a90def2a6a5fba30ac48
│                        │     │                   ce104f277e4 
│                        │     ├ Title           : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │     │                   Prior to 1 ... 
│                        │     ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │     │                   Prior to 1.43.0, the otlp HTTP exporters
│                        │     │                   (traces/metrics/logs) read the full HTTP response body into
│                        │     │                   an in-memory bytes.Buffer without a size cap. This is
│                        │     │                   exploitable for memory exhaustion when the configured
│                        │     │                   collector endpoint is attacker-controlled (or a network
│                        │     │                   attacker can mitm the exporter connection). This
│                        │     │                   vulnerability is fixed in 1.43.0. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs           ─ [0]: CWE-789 
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ azure : 2 
│                        │     │                  ╰ ghsa  : 2 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H 
│                        │     │                         ╰ V3Score : 5.3 
│                        │     ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rele
│                        │     │                  │      ases/tag/v1.43.0 
│                        │     │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go 
│                        │     │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/pul
│                        │     │                  │      l/8108 
│                        │     │                  ├ [3]: https://github.com/open-telemetry/opentelemetry-go/sec
│                        │     │                  │      urity/advisories/GHSA-w8rr-5gcm-pp58 
│                        │     │                  ╰ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-39882 
│                        │     ├ PublishedDate   : 2026-04-08T21:17:00.547Z 
│                        │     ╰ LastModifiedDate: 2026-04-09T18:39:55.73Z 
│                        ╰ [8] ╭ VulnerabilityID : CVE-2026-39882 
│                              ├ VendorIDs        ─ [0]: GHSA-w8rr-5gcm-pp58 
│                              ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptraceh
│                              │                   ttp@v1.42.0 
│                              ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptraceh
│                              │                   ttp 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/ot
│                              │                  │       lptrace/otlptracehttp@v1.42.0 
│                              │                  ╰ UID : d74e0213d70ffe9b 
│                              ├ InstalledVersion: v1.42.0 
│                              ├ FixedVersion    : 1.43.0 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                              │                  │         c2a7112bc86c63eb8b82 
│                              │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                              │                            c496429992e7cc10387f 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:3c06dd2d64aed8b299d22a1f3c82678ec6d024a9ef5d777b70d5f
│                              │                   080e7e040d4 
│                              ├ Title           : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                              │                   Prior to 1 ... 
│                              ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                              │                   Prior to 1.43.0, the otlp HTTP exporters
│                              │                   (traces/metrics/logs) read the full HTTP response body into
│                              │                   an in-memory bytes.Buffer without a size cap. This is
│                              │                   exploitable for memory exhaustion when the configured
│                              │                   collector endpoint is attacker-controlled (or a network
│                              │                   attacker can mitm the exporter connection). This
│                              │                   vulnerability is fixed in 1.43.0. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-789 
│                              ├ VendorSeverity   ╭ amazon: 3 
│                              │                  ├ azure : 2 
│                              │                  ╰ ghsa  : 2 
│                              ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H 
│                              │                         ╰ V3Score : 5.3 
│                              ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rele
│                              │                  │      ases/tag/v1.43.0 
│                              │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go 
│                              │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/pul
│                              │                  │      l/8108 
│                              │                  ├ [3]: https://github.com/open-telemetry/opentelemetry-go/sec
│                              │                  │      urity/advisories/GHSA-w8rr-5gcm-pp58 
│                              │                  ╰ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-39882 
│                              ├ PublishedDate   : 2026-04-08T21:17:00.547Z 
│                              ╰ LastModifiedDate: 2026-04-09T18:39:55.73Z 
├ [4]  ╭ Target  : usr/bin/docker-proxy 
│      ├ Class   : lang-pkgs 
│      ├ Type    : gobinary 
│      ╰ Packages 
├ [5]  ╭ Target         : usr/bin/dockerd 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ─ [0] ╭ VulnerabilityID : CVE-2026-46680 
│                              ├ VendorIDs        ─ [0]: GHSA-fqw6-gf59-qr4w 
│                              ├ PkgID           : github.com/containerd/containerd/v2@v2.2.3 
│                              ├ PkgName         : github.com/containerd/containerd/v2 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.3 
│                              │                  ╰ UID : b8c30379d4fd8d44 
│                              ├ InstalledVersion: v2.2.3 
│                              ├ FixedVersion    : 2.0.9, 2.2.4, 2.3.1 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                              │                  │         c2a7112bc86c63eb8b82 
│                              │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                              │                            c496429992e7cc10387f 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:8fb05bae8b669f52b068880f90f20f412b44a3417fe397b1edd8b
│                              │                   fb145c77200 
│                              ├ Title           : containerd user ID handling bypass allows runAsNonRoot evasion 
│                              ├ Description     : ### Impact
│                              │                   A bug was found in containerd where containers launched with
│                              │                    a numeric `User` directive that cannot be parsed as a
│                              │                   32-bit integer are incorrectly treated as a username. If a
│                              │                   crafted image provides an `/etc/passwd` file mapping this
│                              │                   large numeric string to root, the container ultimately runs
│                              │                   as root (UID 0). This allows the Kubernetes `runAsNonRoot`
│                              │                   restriction to be bypassed, causing unexpected behavior for
│                              │                   environments that require containers to run as a non-root
│                              │                   user.
│                              │                   
│                              │                   ### Patches
│                              │                   This bug has been fixed in the following containerd
│                              │                   versions:
│                              │                   * 2.3.1
│                              │                   * 2.2.4
│                              │                   * 2.0.9
│                              │                   * 1.7.32
│                              │                   Note: The containerd 2.1 release has reached its [end of
│                              │                   life](https://containerd.io/releases/#current-state-of-conta
│                              │                   inerd-releases) and a fixed version is not provided.
│                              │                   Users should update to these versions to resolve the issue.
│                              │                   ### Workarounds
│                              │                   Ensure that only trusted images are used and that only
│                              │                   trusted users have permissions to import images.
│                              │                   Alternatively, enforcing a specific numeric `runAsUser` in
│                              │                   the Kubernetes Pod `securityContext` overrides the `USER`
│                              │                   directive in the image and prevents the bypass. Newer
│                              │                   versions of Kubernetes, starting with 1.34, also appear to
│                              │                   enforce `runAsNonRoot` properly regardless of this bug.
│                              │                   ### Credits
│                              │                   The containerd project would like to thank Lei Wang
│                              │                   (@ssst0n3) for responsibly disclosing this issue in
│                              │                   accordance with the [containerd security
│                              │                   policy](https://github.com/containerd/project/blob/main/SECU
│                              │                   RITY.md).
│                              │                   ### Resources
│                              │                   * https://github.com/advisories/GHSA-265r-hfxg-fhmg
│                              │                   (CVE-2024-40635)
│                              │                   ### For more information
│                              │                   If there are any questions or comments about this advisory:
│                              │                   * Open an issue in
│                              │                   [containerd](https://github.com/containerd/containerd/issues
│                              │                   /new/choose)
│                              │                   * Send an email to
│                              │                   [security@containerd.io](mailto:security@containerd.io)
│                              │                   To report a security issue in containerd:
│                              │                   * [Report a new
│                              │                   vulnerability](https://github.com/containerd/containerd/secu
│                              │                   rity/advisories/new)
│                              │                   [security@containerd.io](mailto:security@containerd.io) 
│                              ├ Severity        : HIGH 
│                              ├ VendorSeverity   ─ ghsa: 3 
│                              ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:P/PR:N/UI:P/VC:H/VI
│                              │                         │            :H/VA:H/SC:N/SI:N/SA:N 
│                              │                         ╰ V40Score : 7.3 
│                              ╰ References       ╭ [0]: https://github.com/containerd/containerd 
│                                                 ╰ [1]: https://github.com/containerd/containerd/security/advi
│                                                        sories/GHSA-fqw6-gf59-qr4w 
├ [6]  ╭ Target  : usr/bin/helm 
│      ├ Class   : lang-pkgs 
│      ├ Type    : gobinary 
│      ╰ Packages 
├ [7]  ╭ Target         : usr/bin/kubectl 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-33811 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4981 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : 11ef8a1a3b61856 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33811 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:790582d942e23d4ea37668d0588ee948f5e45a5a4c2ffbb2757c9
│                        │     │                   a4183b82097 
│                        │     ├ Title           : net: golang: Go net package: Denial of Service via long
│                        │     │                   CNAME response in LookupCNAME 
│                        │     ├ Description     : When using LookupCNAME with the cgo DNS resolver, a very
│                        │     │                   long CNAME response can trigger a double-free of C memory
│                        │     │                   and a crash. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-415 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ├ bitnami: 3 
│                        │     │                  ├ nvd    : 3 
│                        │     │                  ╰ redhat : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33811 
│                        │     │                  ├ [1]: https://go.dev/cl/767860 
│                        │     │                  ├ [2]: https://go.dev/issue/78803 
│                        │     │                  ├ [3]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-33811 
│                        │     │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-4981 
│                        │     │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-33811 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:42.77Z 
│                        │     ╰ LastModifiedDate: 2026-05-12T20:23:02.333Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-33814 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4918 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : 11ef8a1a3b61856 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:a928816bf867e7fa625a9e2513323689119874e099aaa0a6ebaec
│                        │     │                   9a843d58a50 
│                        │     ├ Title           : When processing HTTP/2 SETTINGS frames, transport will enter
│                        │     │                    an infini ... 
│                        │     ├ Description     : When processing HTTP/2 SETTINGS frames, transport will enter
│                        │     │                    an infinite loop of writing CONTINUATION frames if it
│                        │     │                   receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-835 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ├ azure  : 3 
│                        │     │                  ├ bitnami: 3 
│                        │     │                  ├ nvd    : 3 
│                        │     │                  ╰ ubuntu : 2 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://github.com/golang/go/issues/78476 
│                        │     │                  ├ [1]: https://go-review.googlesource.com/c/go/+/761581 
│                        │     │                  ├ [2]: https://go-review.googlesource.com/c/net/+/761640 
│                        │     │                  ├ [3]: https://go.dev/cl/761581 
│                        │     │                  ├ [4]: https://go.dev/cl/761640 
│                        │     │                  ├ [5]: https://go.dev/issue/78476 
│                        │     │                  ├ [6]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │     │                  ├ [8]: https://pkg.go.dev/vuln/GO-2026-4918 
│                        │     │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T14:41:59.52Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-39820 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4986 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : 11ef8a1a3b61856 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39820 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:9f9d90a39b3c878e88303e3ea0c23b9d9f8ab032ee0a7509c14bc
│                        │     │                   c61dc857b94 
│                        │     ├ Title           : Well-crafted inputs reaching ParseAddress, ParseAddressList,
│                        │     │                    and Parse ... 
│                        │     ├ Description     : Well-crafted inputs reaching ParseAddress, ParseAddressList,
│                        │     │                    and ParseDate were able to trigger excessive CPU exhaustion
│                        │     │                    and memory allocations. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-770 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ├ bitnami: 3 
│                        │     │                  ╰ nvd    : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/759940 
│                        │     │                  ├ [1]: https://go.dev/issue/78566 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39820 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4986 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:43.187Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T15:10:58.65Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-39823 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4982 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : 11ef8a1a3b61856 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39823 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:a748c49ef74257959ab13235e707f3d6f4d9a0e2912d08d57c6c7
│                        │     │                   bb0f23f6b19 
│                        │     ├ Title           : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │     │                   correctly  ... 
│                        │     ├ Description     : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │     │                   correctly escaped inside of a <meta> tag's <content>
│                        │     │                   attribute. If the URL content were to insert ASCII
│                        │     │                   whitespaces around the '=' rune inside of the <content>
│                        │     │                   attribute, the escaper would fail to similarly escape it,
│                        │     │                   leading to XSS. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-79 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ╰ bitnami: 2 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                        │     │                            │           L/A:N 
│                        │     │                            ╰ V3Score : 6.1 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/769920 
│                        │     │                  ├ [1]: https://go.dev/issue/78913 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39823 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4982 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:43.29Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T16:58:45.697Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-39825 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4976 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : 11ef8a1a3b61856 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39825 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:230d1c237783acbbb286ab1604bd06466c8724ee6f79977b379ff
│                        │     │                   01ea9125c75 
│                        │     ├ Title           : ReverseProxy can forward queries containing parameters not
│                        │     │                   visible to  ... 
│                        │     ├ Description     : ReverseProxy can forward queries containing parameters not
│                        │     │                   visible to Rewrite functions. When used with a Rewrite
│                        │     │                   function, or a Director function which parses query
│                        │     │                   parameters, ReverseProxy sanitizes the forwarded request to
│                        │     │                   remove query parameters which are not parsed by
│                        │     │                   url.ParseQuery. ReverseProxy does not take ParseQuery's
│                        │     │                   limit on the total number of query parameters (controlled by
│                        │     │                    GODEBUG=urlmaxqueryparams=N) into account. This can permit
│                        │     │                   ReverseProxy to forward a request containing a query
│                        │     │                   parameter that is not visible to the Rewrite function. For
│                        │     │                   example, the query "a1=x&a2=x&...&a10000=x&hidden=y" can
│                        │     │                   forward the parameter "hidden=y" while hiding it from the
│                        │     │                   proxy's Rewrite function. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ╰ bitnami: 2 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                        │     │                            │           N/A:N 
│                        │     │                            ╰ V3Score : 5.3 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/770541 
│                        │     │                  ├ [1]: https://go.dev/issue/78948 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39825 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4976 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:43.39Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T16:58:56.39Z 
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-39826 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4980 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : 11ef8a1a3b61856 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39826 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:225bf735614eae3a3457651a5b76d8e1f6186d1abc75f21798018
│                        │     │                   2df38843061 
│                        │     ├ Title           : If a trusted template author were to write a <script> tag
│                        │     │                   containing a ... 
│                        │     ├ Description     : If a trusted template author were to write a <script> tag
│                        │     │                   containing an empty 'type' attribute or a 'type' attribute
│                        │     │                   with an ASCII whitespace, the execution of the template
│                        │     │                   would incorrectly escape any data passed into the <script>
│                        │     │                   block. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-116 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ╰ bitnami: 2 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                        │     │                            │           L/A:N 
│                        │     │                            ╰ V3Score : 6.1 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/771180 
│                        │     │                  ├ [1]: https://go.dev/issue/78981 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39826 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4980 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:43.49Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T16:59:07.48Z 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-39836 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4971 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : 11ef8a1a3b61856 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39836 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:993a683a560ed9df2636f7c7cc82305d72215ad28b205435a921b
│                        │     │                   796f65d59c5 
│                        │     ├ Title           : Panic in Dial and LookupPort when handling NUL byte on
│                        │     │                   Windows in net 
│                        │     ├ Description     : The Dial and LookupPort functions panic on Windows when
│                        │     │                   provided with an input containing a NUL (0). 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-476 
│                        │     ├ VendorSeverity   ╭ bitnami: 3 
│                        │     │                  ╰ nvd    : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/775320 
│                        │     │                  ├ [1]: https://go.dev/issue/79006 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39836 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4971 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:43.593Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T15:11:10.31Z 
│                        ╰ [7] ╭ VulnerabilityID : CVE-2026-42499 
│                              ├ VendorIDs        ─ [0]: GO-2026-4977 
│                              ├ PkgID           : stdlib@v1.26.2 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                              │                  ╰ UID : 11ef8a1a3b61856 
│                              ├ InstalledVersion: v1.26.2 
│                              ├ FixedVersion    : 1.25.10, 1.26.3 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                              │                  │         c2a7112bc86c63eb8b82 
│                              │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                              │                            c496429992e7cc10387f 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42499 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:8a9abf14db1dee5916d32ba9ceb56a0aad0cfdc6b22f000091835
│                              │                   a04ef1b91f9 
│                              ├ Title           : Pathological inputs could cause DoS through consumePhrase
│                              │                   when parsing ... 
│                              ├ Description     : Pathological inputs could cause DoS through consumePhrase
│                              │                   when parsing an email address according to RFC 5322. 
│                              ├ Severity        : HIGH 
│                              ├ VendorSeverity   ╭ amazon : 3 
│                              │                  ╰ bitnami: 3 
│                              ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                              │                            │           N/A:H 
│                              │                            ╰ V3Score : 7.5 
│                              ├ References       ╭ [0]: https://go.dev/cl/771520 
│                              │                  ├ [1]: https://go.dev/issue/78987 
│                              │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                              │                  │      47M 
│                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42499 
│                              │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4977 
│                              ├ PublishedDate   : 2026-05-07T20:16:44.54Z 
│                              ╰ LastModifiedDate: 2026-05-13T16:59:17.563Z 
├ [8]  ╭ Target         : usr/bin/pebble 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-33811 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4981 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : e5871284774cde90 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33811 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:5d110c9ba27593205debf39b90fcd79c937e0631bee99042cef12
│                        │     │                   a65397c7b8d 
│                        │     ├ Title           : net: golang: Go net package: Denial of Service via long
│                        │     │                   CNAME response in LookupCNAME 
│                        │     ├ Description     : When using LookupCNAME with the cgo DNS resolver, a very
│                        │     │                   long CNAME response can trigger a double-free of C memory
│                        │     │                   and a crash. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-415 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ├ bitnami: 3 
│                        │     │                  ├ nvd    : 3 
│                        │     │                  ╰ redhat : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33811 
│                        │     │                  ├ [1]: https://go.dev/cl/767860 
│                        │     │                  ├ [2]: https://go.dev/issue/78803 
│                        │     │                  ├ [3]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-33811 
│                        │     │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-4981 
│                        │     │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-33811 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:42.77Z 
│                        │     ╰ LastModifiedDate: 2026-05-12T20:23:02.333Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-33814 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4918 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : e5871284774cde90 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:6f91d5d3e1d516e5114af30ffc667c0b19855f60dbbc0d5f6cc57
│                        │     │                   8264f6b3d8b 
│                        │     ├ Title           : When processing HTTP/2 SETTINGS frames, transport will enter
│                        │     │                    an infini ... 
│                        │     ├ Description     : When processing HTTP/2 SETTINGS frames, transport will enter
│                        │     │                    an infinite loop of writing CONTINUATION frames if it
│                        │     │                   receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-835 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ├ azure  : 3 
│                        │     │                  ├ bitnami: 3 
│                        │     │                  ├ nvd    : 3 
│                        │     │                  ╰ ubuntu : 2 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://github.com/golang/go/issues/78476 
│                        │     │                  ├ [1]: https://go-review.googlesource.com/c/go/+/761581 
│                        │     │                  ├ [2]: https://go-review.googlesource.com/c/net/+/761640 
│                        │     │                  ├ [3]: https://go.dev/cl/761581 
│                        │     │                  ├ [4]: https://go.dev/cl/761640 
│                        │     │                  ├ [5]: https://go.dev/issue/78476 
│                        │     │                  ├ [6]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │     │                  ├ [8]: https://pkg.go.dev/vuln/GO-2026-4918 
│                        │     │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T14:41:59.52Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-39820 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4986 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : e5871284774cde90 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39820 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:a6152152f29b1fe6cf55795ef47b449543138c269c0285ce5f10d
│                        │     │                   6d939976061 
│                        │     ├ Title           : Well-crafted inputs reaching ParseAddress, ParseAddressList,
│                        │     │                    and Parse ... 
│                        │     ├ Description     : Well-crafted inputs reaching ParseAddress, ParseAddressList,
│                        │     │                    and ParseDate were able to trigger excessive CPU exhaustion
│                        │     │                    and memory allocations. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-770 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ├ bitnami: 3 
│                        │     │                  ╰ nvd    : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/759940 
│                        │     │                  ├ [1]: https://go.dev/issue/78566 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39820 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4986 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:43.187Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T15:10:58.65Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-39823 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4982 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : e5871284774cde90 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39823 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:6a101aeb4d773730be033a58ba7313106476cb868a7f7145383c6
│                        │     │                   e8841bdbf52 
│                        │     ├ Title           : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │     │                   correctly  ... 
│                        │     ├ Description     : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │     │                   correctly escaped inside of a <meta> tag's <content>
│                        │     │                   attribute. If the URL content were to insert ASCII
│                        │     │                   whitespaces around the '=' rune inside of the <content>
│                        │     │                   attribute, the escaper would fail to similarly escape it,
│                        │     │                   leading to XSS. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-79 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ╰ bitnami: 2 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                        │     │                            │           L/A:N 
│                        │     │                            ╰ V3Score : 6.1 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/769920 
│                        │     │                  ├ [1]: https://go.dev/issue/78913 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39823 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4982 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:43.29Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T16:58:45.697Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-39825 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4976 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : e5871284774cde90 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39825 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:29a426f7d2c3250c488cd7a61237fb4c3b6d76428b6ec6a642161
│                        │     │                   8af7c45a2c9 
│                        │     ├ Title           : ReverseProxy can forward queries containing parameters not
│                        │     │                   visible to  ... 
│                        │     ├ Description     : ReverseProxy can forward queries containing parameters not
│                        │     │                   visible to Rewrite functions. When used with a Rewrite
│                        │     │                   function, or a Director function which parses query
│                        │     │                   parameters, ReverseProxy sanitizes the forwarded request to
│                        │     │                   remove query parameters which are not parsed by
│                        │     │                   url.ParseQuery. ReverseProxy does not take ParseQuery's
│                        │     │                   limit on the total number of query parameters (controlled by
│                        │     │                    GODEBUG=urlmaxqueryparams=N) into account. This can permit
│                        │     │                   ReverseProxy to forward a request containing a query
│                        │     │                   parameter that is not visible to the Rewrite function. For
│                        │     │                   example, the query "a1=x&a2=x&...&a10000=x&hidden=y" can
│                        │     │                   forward the parameter "hidden=y" while hiding it from the
│                        │     │                   proxy's Rewrite function. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ╰ bitnami: 2 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                        │     │                            │           N/A:N 
│                        │     │                            ╰ V3Score : 5.3 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/770541 
│                        │     │                  ├ [1]: https://go.dev/issue/78948 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39825 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4976 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:43.39Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T16:58:56.39Z 
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-39826 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4980 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : e5871284774cde90 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39826 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:86774e475523ff6bc54564fec23bff5e44b3e82d46a28bedb13bb
│                        │     │                   f9d41ae4960 
│                        │     ├ Title           : If a trusted template author were to write a <script> tag
│                        │     │                   containing a ... 
│                        │     ├ Description     : If a trusted template author were to write a <script> tag
│                        │     │                   containing an empty 'type' attribute or a 'type' attribute
│                        │     │                   with an ASCII whitespace, the execution of the template
│                        │     │                   would incorrectly escape any data passed into the <script>
│                        │     │                   block. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-116 
│                        │     ├ VendorSeverity   ╭ amazon : 3 
│                        │     │                  ╰ bitnami: 2 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                        │     │                            │           L/A:N 
│                        │     │                            ╰ V3Score : 6.1 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/771180 
│                        │     │                  ├ [1]: https://go.dev/issue/78981 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39826 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4980 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:43.49Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T16:59:07.48Z 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-39836 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4971 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : e5871284774cde90 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39836 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:2e4fc070d52d6b26a2e9ff5760d3486555254aa64e7fe61455358
│                        │     │                   e077ad866e9 
│                        │     ├ Title           : Panic in Dial and LookupPort when handling NUL byte on
│                        │     │                   Windows in net 
│                        │     ├ Description     : The Dial and LookupPort functions panic on Windows when
│                        │     │                   provided with an input containing a NUL (0). 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-476 
│                        │     ├ VendorSeverity   ╭ bitnami: 3 
│                        │     │                  ╰ nvd    : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/775320 
│                        │     │                  ├ [1]: https://go.dev/issue/79006 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39836 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4971 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:43.593Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T15:11:10.31Z 
│                        ╰ [7] ╭ VulnerabilityID : CVE-2026-42499 
│                              ├ VendorIDs        ─ [0]: GO-2026-4977 
│                              ├ PkgID           : stdlib@v1.26.2 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                              │                  ╰ UID : e5871284774cde90 
│                              ├ InstalledVersion: v1.26.2 
│                              ├ FixedVersion    : 1.25.10, 1.26.3 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                              │                  │         c2a7112bc86c63eb8b82 
│                              │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                              │                            c496429992e7cc10387f 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42499 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:10927bd0ad78da9cc1eefb0fc45d5776665ef352566389fb42dc9
│                              │                   34e65b43fc2 
│                              ├ Title           : Pathological inputs could cause DoS through consumePhrase
│                              │                   when parsing ... 
│                              ├ Description     : Pathological inputs could cause DoS through consumePhrase
│                              │                   when parsing an email address according to RFC 5322. 
│                              ├ Severity        : HIGH 
│                              ├ VendorSeverity   ╭ amazon : 3 
│                              │                  ╰ bitnami: 3 
│                              ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                              │                            │           N/A:H 
│                              │                            ╰ V3Score : 7.5 
│                              ├ References       ╭ [0]: https://go.dev/cl/771520 
│                              │                  ├ [1]: https://go.dev/issue/78987 
│                              │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                              │                  │      47M 
│                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42499 
│                              │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4977 
│                              ├ PublishedDate   : 2026-05-07T20:16:44.54Z 
│                              ╰ LastModifiedDate: 2026-05-13T16:59:17.563Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:68f50d6c7a34adff1486772a3d4d0e3c20527e3dd253357ec3f3b
│                        │     │                   604892b34d9 
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
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:1060bc65b6ab489664d86578e01cf341347e95ed12945d42309ac
│                        │     │                   f43544792ab 
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
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:e47212a1ae795418517a0c8b505a818cc3aa725b18177e614b830
│                        │     │                   593b9e8a494 
│                        │     ├ Title           : Docker: `PUT /containers/{id}/archive` executes container
│                        │     │                   binary on the host 
│                        │     ├ Description     : ## Summary
│                        │     │                   
│                        │     │                   When a user uploads a compressed archive into a container, a
│                        │     │                    malicious image can execute arbitrary code with daemon
│                        │     │                   (host root) privileges.
│                        │     │                   ## Details
│                        │     │                   When handling `PUT /containers/{id}/archive` requests with
│                        │     │                   compressed archives, the daemon decompresses them using
│                        │     │                   external system binaries. Due to incorrect ordering of
│                        │     │                   operations, these binaries are resolved from the container's
│                        │     │                    filesystem rather than the host's. A container image that
│                        │     │                   includes a trojanized decompression binary can achieve code
│                        │     │                   execution as the daemon process whenever a compressed
│                        │     │                   archive is uploaded to that container.
│                        │     │                   The executed binary runs with the daemon's full privileges,
│                        │     │                   including host root UID and unrestricted capabilities.
│                        │     │                   ## Impact
│                        │     │                   Arbitrary code execution as host root, crossing the
│                        │     │                   container-to-host trust boundary.
│                        │     │                   ### Conditions for exploitation
│                        │     │                   - A user must run a container from a malicious image that
│                        │     │                   contains a trojanized decompression binary.
│                        │     │                   - The user must then upload a compressed archive (xz or
│                        │     │                   gzip) into that container, either by piping a compressed
│                        │     │                   archive via `docker cp -` or by calling the `PUT
│                        │     │                   /containers/{id}/archive` API directly with compressed
│                        │     │                   content.
│                        │     │                   ### Not affected
│                        │     │                   Standard `docker cp` usage is **not** affected, because the
│                        │     │                   CLI sends uncompressed tar by default:
│                        │     │                   ```
│                        │     │                   docker cp ./file.txt mycontainer:/file.txt
│                        │     │                   This can only be exploited when explicitly passing a xz or
│                        │     │                   gzip-compressed archive to `docker cp` or the `PUT
│                        │     │                   /containers/{id}/archive` API, for example:
│                        │     │                   cat archive.tar.xz | docker cp - mycontainer:/dir
│                        │     │                   Decompression formats using pure Go implementations (bzip2,
│                        │     │                   zstd, and gzip when the container image does not contain an
│                        │     │                   `unpigz` binary) are also not affected.
│                        │     │                   ## Workarounds
│                        │     │                   - Only run containers from trusted images.
│                        │     │                   - Use authorization plugins to limit access to the `PUT
│                        │     │                   /containers/{id}/archive` endpoint.
│                        │     │                   - Avoid piping compressed archives into containers created
│                        │     │                   from untrusted images. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ─ ghsa: 3 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:H/A:N 
│                        │     │                         ╰ V3Score : 7.2 
│                        │     ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                        ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │                               x86f-5xw2-fm2r 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:9316325ef92b2a5f8b70adbdab2fec5a90a5d3c59b839649ef48e
│                        │     │                   eaa006212d0 
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
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d43b9a764ea8d0bae280f218eefb6fab3f44a4f7d6323e8fb6b8d
│                        │     │                   df1849b41f2 
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
│                        ╰ [5] ╭ VulnerabilityID : CVE-2026-41568 
│                              ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                              ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                              ├ PkgName         : github.com/docker/docker 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                              │                  │       tible 
│                              │                  ╰ UID : ff7f1d4ae645a198 
│                              ├ InstalledVersion: v28.5.2+incompatible 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                              │                  │         c2a7112bc86c63eb8b82 
│                              │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                              │                            c496429992e7cc10387f 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:5c1bc4f6b8ceeb5bf699386573603ba7a4673705284b631384dae
│                              │                   96be933e83b 
│                              ├ Title           : Docker: Race condition in docker cp allows creation of
│                              │                   arbitrary empty files on the host via symlink swap 
│                              ├ Description     : ## Summary
│                              │                   
│                              │                   A race condition during `docker cp` mount setup allows a
│                              │                   malicious container to create empty files or directories at
│                              │                   arbitrary absolute paths on the host filesystem.
│                              │                   This advisory covers the race during mountpoint creation.
│                              │                   The related race during the subsequent mount syscall is
│                              │                   tracked in GHSA-rg2x-37c3-w2rh
│                              │                   ## Details
│                              │                   When copying files into a container, the daemon sets up a
│                              │                   temporary filesystem view by bind-mounting volumes into a
│                              │                   private mount namespace. During this setup, the mount
│                              │                   destination path is first resolved within the container's
│                              │                   root filesystem using `GetResourcePath`, and then used to
│                              │                   create the mountpoint (file or directory) if it does not
│                              │                   already exist via `createIfNotExists`.
│                              │                   Between path resolution and mountpoint creation, a process
│                              │                   running inside the container can swap a path component for a
│                              │                    symlink pointing to an arbitrary location on the host.
│                              │                   Because `createIfNotExists` operates on the already-resolved
│                              │                    absolute path using standard `os.MkdirAll` and
│                              │                   `os.OpenFile` — which follow symlinks in intermediate path
│                              │                   components — the symlink is followed and the file or
│                              │                   directory is created outside the container root filesystem,
│                              │                   as root.
│                              │                   ## Impact
│                              │                   A malicious container can create empty files or directories
│                              │                   at arbitrary absolute paths on the host filesystem, running
│                              │                   as root. This enables persistent denial of service — for
│                              │                   example:
│                              │                   - Converting `/etc/docker/daemon.json` into a directory
│                              │                   prevents the daemon from restarting
│                              │                   - Creating `/etc/nologin` prevents user logins
│                              │                   - Overwriting critical system paths with empty files can
│                              │                   break host services
│                              │                   The container does not gain read or write access to existing
│                              │                    host files — only the ability to create new empty files or
│                              │                   directories at chosen paths.
│                              │                   ### Conditions for exploitation
│                              │                   - A container must be running with a process that can
│                              │                   rapidly create and swap symlinks at a volume mount
│                              │                   destination path.
│                              │                   - An operator must initiate a `docker cp` into that
│                              │                   container, or call the `PUT /containers/{id}/archive` or
│                              │                   `HEAD /containers/{id}/archive` API endpoints.
│                              │                   ### Not affected
│                              │                   - Containers that do not have volume mounts are not
│                              │                   affected, as the race occurs during volume bind-mount
│                              │                   setup.
│                              │                   ## Patches
│                              │                   Mountpoint creation is now scoped to the container root
│                              │                   using `os.Root` (Go 1.24+), which refuses to follow symlinks
│                              │                    that escape the opened root directory. All filesystem
│                              │                   operations in `createIfNotExists` (`MkdirAll`, `OpenFile`)
│                              │                   are performed through the `os.Root` handle, so even if a
│                              │                   symlink swap occurs after path resolution, the creation
│                              │                   stays confined to the container root.
│                              │                   ## Workarounds
│                              │                   - Only run containers from trusted images.
│                              │                   - Avoid using `docker cp` with untrusted running
│                              │                   containers.
│                              │                   - Use authorization plugins to restrict access to the
│                              │                   archive API endpoints (`PUT /containers/{id}/archive`, `HEAD
│                              │                    /containers/{id}/archive`). 
│                              ├ Severity        : MEDIUM 
│                              ├ VendorSeverity   ─ ghsa: 2 
│                              ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L/A:H 
│                              │                         ╰ V3Score : 6 
│                              ╰ References       ╭ [0]: https://github.com/moby/moby 
│                                                 ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                                                        vp62-88p7-qqf5 
├ [11] ╭ Target         : usr/libexec/docker/cli-plugins/docker-compose 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-46680 
│                        │     ├ VendorIDs        ─ [0]: GHSA-fqw6-gf59-qr4w 
│                        │     ├ PkgID           : github.com/containerd/containerd/v2@v2.2.3 
│                        │     ├ PkgName         : github.com/containerd/containerd/v2 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.3 
│                        │     │                  ╰ UID : cc87f8b48ff9655b 
│                        │     ├ InstalledVersion: v2.2.3 
│                        │     ├ FixedVersion    : 2.0.9, 2.2.4, 2.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:1d5b0c01fc53064aa72aac5af25f435e28d3cd31fa8e28f3c8072
│                        │     │                   c680f737aa9 
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
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:cf3afd568ae7e556c656f3203c8f5f6c35310e32f6830f4debc43
│                        │     │                   267a2cfd2a4 
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
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:8d3e87ad9fd1bf39a81d0902afc259014e996f71c805e0ed2e17f
│                        │     │                   a3b92ab814e 
│                        │     ├ Title           : Docker: `PUT /containers/{id}/archive` executes container
│                        │     │                   binary on the host 
│                        │     ├ Description     : ## Summary
│                        │     │                   
│                        │     │                   When a user uploads a compressed archive into a container, a
│                        │     │                    malicious image can execute arbitrary code with daemon
│                        │     │                   (host root) privileges.
│                        │     │                   ## Details
│                        │     │                   When handling `PUT /containers/{id}/archive` requests with
│                        │     │                   compressed archives, the daemon decompresses them using
│                        │     │                   external system binaries. Due to incorrect ordering of
│                        │     │                   operations, these binaries are resolved from the container's
│                        │     │                    filesystem rather than the host's. A container image that
│                        │     │                   includes a trojanized decompression binary can achieve code
│                        │     │                   execution as the daemon process whenever a compressed
│                        │     │                   archive is uploaded to that container.
│                        │     │                   The executed binary runs with the daemon's full privileges,
│                        │     │                   including host root UID and unrestricted capabilities.
│                        │     │                   ## Impact
│                        │     │                   Arbitrary code execution as host root, crossing the
│                        │     │                   container-to-host trust boundary.
│                        │     │                   ### Conditions for exploitation
│                        │     │                   - A user must run a container from a malicious image that
│                        │     │                   contains a trojanized decompression binary.
│                        │     │                   - The user must then upload a compressed archive (xz or
│                        │     │                   gzip) into that container, either by piping a compressed
│                        │     │                   archive via `docker cp -` or by calling the `PUT
│                        │     │                   /containers/{id}/archive` API directly with compressed
│                        │     │                   content.
│                        │     │                   ### Not affected
│                        │     │                   Standard `docker cp` usage is **not** affected, because the
│                        │     │                   CLI sends uncompressed tar by default:
│                        │     │                   ```
│                        │     │                   docker cp ./file.txt mycontainer:/file.txt
│                        │     │                   This can only be exploited when explicitly passing a xz or
│                        │     │                   gzip-compressed archive to `docker cp` or the `PUT
│                        │     │                   /containers/{id}/archive` API, for example:
│                        │     │                   cat archive.tar.xz | docker cp - mycontainer:/dir
│                        │     │                   Decompression formats using pure Go implementations (bzip2,
│                        │     │                   zstd, and gzip when the container image does not contain an
│                        │     │                   `unpigz` binary) are also not affected.
│                        │     │                   ## Workarounds
│                        │     │                   - Only run containers from trusted images.
│                        │     │                   - Use authorization plugins to limit access to the `PUT
│                        │     │                   /containers/{id}/archive` endpoint.
│                        │     │                   - Avoid piping compressed archives into containers created
│                        │     │                   from untrusted images. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ─ ghsa: 3 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:H/A:N 
│                        │     │                         ╰ V3Score : 7.2 
│                        │     ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                        ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │                               x86f-5xw2-fm2r 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:69ac639fec3d730c0db0f68c7fbbee972aa826439ae9120113e0c
│                        │     │                   6b1b0afb01b 
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
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ FixedVersion    : 29.3.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:0cabba5fee3be98e91a207d199c573b23231d2764dea690edd0cb
│                        │     │                   1190fc8e49c 
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
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:e7819712b1ce224d57e9e5cb2a04aff910bc256d6f54c4e93982b
│                        │     │                   3c36f5f89bc 
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
│                        ├ [6] ╭ VulnerabilityID : GHSA-pmwq-pjrm-6p5r 
│                        │     ├ PkgID           : github.com/in-toto/in-toto-golang@v0.10.0 
│                        │     ├ PkgName         : github.com/in-toto/in-toto-golang 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/in-toto/in-toto-golang@v0.10.0 
│                        │     │                  ╰ UID : 3aa4f93341f1d696 
│                        │     ├ InstalledVersion: v0.10.0 
│                        │     ├ FixedVersion    : 0.11.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://github.com/advisories/GHSA-pmwq-pjrm-6p5r 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d705066f5668d24bd53bad46d8cfc737849cdca5bdf9b1a2d1557
│                        │     │                   a22e09ed169 
│                        │     ├ Title           : in-toto-golang and in-toto-python have inconsistent negation
│                        │     │                    behavior 
│                        │     ├ Description     : ### Impact
│                        │     │                   _What kind of vulnerability is it? Who is impacted?_
│                        │     │                   
│                        │     │                   in-toto-golang and in-toto-python both support glob patterns
│                        │     │                    in artifact rules to indicate the artifacts that a rule
│                        │     │                   applies to. Both support negations in character classes to
│                        │     │                   indicate what should *not* be matched, but they used
│                        │     │                   different operators to indicate the negation. in-toto-python
│                        │     │                    uses `!` while in-toto-golang used `^`. A layout authored
│                        │     │                   with the expectations of one implementation can therefore
│                        │     │                   exhibit different behavior in the other implementation.
│                        │     │                   This impacts users in a specific set of circumstances where
│                        │     │                   two different implementations are used to verify the same
│                        │     │                   layout + attestation bundle at different stages of the same
│                        │     │                   pipeline. As a rule of thumb, we advise using a single
│                        │     │                   implementation across all aspects of a pipeline, from layout
│                        │     │                    creation to pipeline execution and verification to prevent
│                        │     │                   this class of bugs.
│                        │     │                   ### Patches
│                        │     │                   _Has the problem been patched? What versions should users
│                        │     │                   upgrade to?_
│                        │     │                   in-toto-golang has been updated to use `!` instead of `^` to
│                        │     │                    indicate negation. See
│                        │     │                   https://github.com/in-toto/in-toto-golang/pull/462. This is
│                        │     │                   part of v0.11.0. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ VendorSeverity   ─ ghsa: 2 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:N/I:H/A:N 
│                        │     │                         ╰ V3Score : 4.1 
│                        │     ├ References       ╭ [0]: https://github.com/in-toto/in-toto-golang 
│                        │     │                  ├ [1]: https://github.com/in-toto/in-toto-golang/commit/36d78
│                        │     │                  │      2ffb2ca3adbffcdce1fd971c23319dd4469 
│                        │     │                  ├ [2]: https://github.com/in-toto/in-toto-golang/pull/462 
│                        │     │                  ╰ [3]: https://github.com/in-toto/in-toto-golang/security/adv
│                        │     │                         isories/GHSA-pmwq-pjrm-6p5r 
│                        │     ├ PublishedDate   : 2026-05-08T22:24:19Z 
│                        │     ╰ LastModifiedDate: 2026-05-08T22:24:19Z 
│                        ├ [7] ╭ VulnerabilityID : CVE-2026-39882 
│                        │     ├ VendorIDs        ─ [0]: GHSA-w8rr-5gcm-pp58 
│                        │     ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetri
│                        │     │                   chttp@v1.42.0 
│                        │     ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlpmetric/otlpmetri
│                        │     │                   chttp 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/ot
│                        │     │                  │       lpmetric/otlpmetrichttp@v1.42.0 
│                        │     │                  ╰ UID : c7bf06bf9efcf280 
│                        │     ├ InstalledVersion: v1.42.0 
│                        │     ├ FixedVersion    : 1.43.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:0c781b9e659e97d6790b810913ca8784b49986de6a97fa3098b9d
│                        │     │                   2b7a3a50aa9 
│                        │     ├ Title           : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │     │                   Prior to 1 ... 
│                        │     ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │     │                   Prior to 1.43.0, the otlp HTTP exporters
│                        │     │                   (traces/metrics/logs) read the full HTTP response body into
│                        │     │                   an in-memory bytes.Buffer without a size cap. This is
│                        │     │                   exploitable for memory exhaustion when the configured
│                        │     │                   collector endpoint is attacker-controlled (or a network
│                        │     │                   attacker can mitm the exporter connection). This
│                        │     │                   vulnerability is fixed in 1.43.0. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs           ─ [0]: CWE-789 
│                        │     ├ VendorSeverity   ╭ amazon: 3 
│                        │     │                  ├ azure : 2 
│                        │     │                  ╰ ghsa  : 2 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H 
│                        │     │                         ╰ V3Score : 5.3 
│                        │     ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rele
│                        │     │                  │      ases/tag/v1.43.0 
│                        │     │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go 
│                        │     │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/pul
│                        │     │                  │      l/8108 
│                        │     │                  ├ [3]: https://github.com/open-telemetry/opentelemetry-go/sec
│                        │     │                  │      urity/advisories/GHSA-w8rr-5gcm-pp58 
│                        │     │                  ╰ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-39882 
│                        │     ├ PublishedDate   : 2026-04-08T21:17:00.547Z 
│                        │     ╰ LastModifiedDate: 2026-04-09T18:39:55.73Z 
│                        ╰ [8] ╭ VulnerabilityID : CVE-2026-39882 
│                              ├ VendorIDs        ─ [0]: GHSA-w8rr-5gcm-pp58 
│                              ├ PkgID           : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptraceh
│                              │                   ttp@v1.42.0 
│                              ├ PkgName         : go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptraceh
│                              │                   ttp 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/exporters/otlp/ot
│                              │                  │       lptrace/otlptracehttp@v1.42.0 
│                              │                  ╰ UID : 4b01a5ca5690cd2e 
│                              ├ InstalledVersion: v1.42.0 
│                              ├ FixedVersion    : 1.43.0 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                              │                  │         c2a7112bc86c63eb8b82 
│                              │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                              │                            c496429992e7cc10387f 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:36ec9fa908a9905c0cc817d22e3f3fcfb2103913849e6a14a3ee8
│                              │                   92dbc844950 
│                              ├ Title           : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                              │                   Prior to 1 ... 
│                              ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                              │                   Prior to 1.43.0, the otlp HTTP exporters
│                              │                   (traces/metrics/logs) read the full HTTP response body into
│                              │                   an in-memory bytes.Buffer without a size cap. This is
│                              │                   exploitable for memory exhaustion when the configured
│                              │                   collector endpoint is attacker-controlled (or a network
│                              │                   attacker can mitm the exporter connection). This
│                              │                   vulnerability is fixed in 1.43.0. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-789 
│                              ├ VendorSeverity   ╭ amazon: 3 
│                              │                  ├ azure : 2 
│                              │                  ╰ ghsa  : 2 
│                              ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:A/AC:H/PR:N/UI:N/S:U/C:N/I:N/A:H 
│                              │                         ╰ V3Score : 5.3 
│                              ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rele
│                              │                  │      ases/tag/v1.43.0 
│                              │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go 
│                              │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/pul
│                              │                  │      l/8108 
│                              │                  ├ [3]: https://github.com/open-telemetry/opentelemetry-go/sec
│                              │                  │      urity/advisories/GHSA-w8rr-5gcm-pp58 
│                              │                  ╰ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-39882 
│                              ├ PublishedDate   : 2026-04-08T21:17:00.547Z 
│                              ╰ LastModifiedDate: 2026-04-09T18:39:55.73Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                        │     │                  │         c2a7112bc86c63eb8b82 
│                        │     │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                        │     │                            c496429992e7cc10387f 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:94fbef910954ae59b19dfe8e41a57f94d93da87a4e3a4a0792bb4
│                        │     │                   fc459ddf948 
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
│                        ╰ [1] ╭ VulnerabilityID : CVE-2026-39883 
│                              ├ VendorIDs        ─ [0]: GHSA-hfvc-g4fc-pqhx 
│                              ├ PkgID           : go.opentelemetry.io/otel/sdk@v1.41.0 
│                              ├ PkgName         : go.opentelemetry.io/otel/sdk 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/sdk@v1.41.0 
│                              │                  ╰ UID : ea6b798525776578 
│                              ├ InstalledVersion: v1.41.0 
│                              ├ FixedVersion    : 1.43.0 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04
│                              │                  │         c2a7112bc86c63eb8b82 
│                              │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207e
│                              │                            c496429992e7cc10387f 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39883 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:ea4adfa441ec92596cd887e983c6e57e5764891b7f57dbc54e891
│                              │                   b3966836c8b 
│                              ├ Title           : opentelemetry-go: BSD kenv command not using absolute path
│                              │                   enables PATH hijacking 
│                              ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                              │                   From 1.15.0 to 1.42.0, the fix for CVE-2026-24051 changed
│                              │                   the Darwin ioreg command to use an absolute path but left
│                              │                   the BSD kenv command using a bare name, allowing the same
│                              │                   PATH hijacking attack on BSD and Solaris platforms. This
│                              │                   vulnerability is fixed in 1.43.0. 
│                              ├ Severity        : HIGH 
│                              ├ CweIDs           ─ [0]: CWE-426 
│                              ├ VendorSeverity   ╭ ghsa: 3 
│                              │                  ╰ nvd : 3 
│                              ├ CVSS             ╭ ghsa ╭ V40Vector: CVSS:4.0/AV:L/AC:H/AT:N/PR:L/UI:N/VC:H/VI
│                              │                  │      │            :H/VA:H/SC:N/SI:N/SA:N 
│                              │                  │      ╰ V40Score : 7.3 
│                              │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:H 
│                              │                         ╰ V3Score : 7 
│                              ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rele
│                              │                  │      ases/tag/v1.43.0 
│                              │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go 
│                              │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/sec
│                              │                  │      urity/advisories/GHSA-hfvc-g4fc-pqhx 
│                              │                  ╰ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39883 
│                              ├ PublishedDate   : 2026-04-08T21:17:00.697Z 
│                              ╰ LastModifiedDate: 2026-04-10T21:16:27.12Z 
├ [13] ╭ Target         : usr/local/bin/k3d 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2024-25621 
│                        │      ├ VendorIDs        ─ [0]: GHSA-pwhc-rpq9-4c8w 
│                        │      ├ PkgID           : github.com/containerd/containerd@v1.7.19 
│                        │      ├ PkgName         : github.com/containerd/containerd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd@v1.7.19 
│                        │      │                  ╰ UID : 3e3ab79d28169955 
│                        │      ├ InstalledVersion: v1.7.19 
│                        │      ├ FixedVersion    : 1.7.29 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-25621 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:d15259d7548326d99f984cb35c527580323e66c36107e5a80b5c
│                        │      │                   6283367bb57c 
│                        │      ├ Title           : github.com/containerd/containerd: containerd local
│                        │      │                   privilege escalation 
│                        │      ├ Description     : containerd is an open-source container runtime. Versions
│                        │      │                   0.1.0 through 1.7.28, 2.0.0-beta.0 through 2.0.6,
│                        │      │                   2.1.0-beta.0 through 2.1.4 and 2.2.0-beta.0 through
│                        │      │                   2.2.0-rc.1 have an overly broad default permission
│                        │      │                   vulnerability. Directory paths `/var/lib/containerd`,
│                        │      │                   `/run/containerd/io.containerd.grpc.v1.cri` and
│                        │      │                   `/run/containerd/io.containerd.sandbox.controller.v1.shim`
│                        │      │                   were all created with incorrect permissions. This issue is
│                        │      │                   fixed in versions 1.7.29, 2.0.7, 2.1.5 and 2.2.0.
│                        │      │                   Workarounds include updating system administrator
│                        │      │                   permissions so the host can manually chmod the directories
│                        │      │                   to not have group or world accessible permissions, or to
│                        │      │                   run containerd in rootless mode. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-279 
│                        │      ├ VendorSeverity   ╭ amazon     : 2 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ cbl-mariner: 3 
│                        │      │                  ├ ghsa       : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:H/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 7.3 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 7.8 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:
│                        │      │                           │           H/A:L 
│                        │      │                           ╰ V3Score : 7.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2024-25621 
│                        │      │                  ├ [1]: https://github.com/containerd/containerd 
│                        │      │                  ├ [2]: https://github.com/containerd/containerd/blob/main/do
│                        │      │                  │      cs/rootless.md 
│                        │      │                  ├ [3]: https://github.com/containerd/containerd/commit/7c59e
│                        │      │                  │      8e9e970d38061a77b586b23655c352bfec5 
│                        │      │                  ├ [4]: https://github.com/containerd/containerd/security/adv
│                        │      │                  │      isories/GHSA-pwhc-rpq9-4c8w 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2024-25621 
│                        │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-7983-1 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2024-25621 
│                        │      ├ PublishedDate   : 2025-11-06T19:15:40.09Z 
│                        │      ╰ LastModifiedDate: 2025-12-31T02:29:30.48Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2024-40635 
│                        │      ├ VendorIDs        ─ [0]: GHSA-265r-hfxg-fhmg 
│                        │      ├ PkgID           : github.com/containerd/containerd@v1.7.19 
│                        │      ├ PkgName         : github.com/containerd/containerd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd@v1.7.19 
│                        │      │                  ╰ UID : 3e3ab79d28169955 
│                        │      ├ InstalledVersion: v1.7.19 
│                        │      ├ FixedVersion    : 1.7.27, 1.6.38 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-40635 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:d48a790e523d60d20600567c32d25872c610cbd2ba21a554c1b3
│                        │      │                   8e109285f05d 
│                        │      ├ Title           : containerd: containerd has an integer overflow in User ID
│                        │      │                   handling 
│                        │      ├ Description     : containerd is an open-source container runtime. A bug was
│                        │      │                   found in containerd prior to versions 1.6.38, 1.7.27, and
│                        │      │                   2.0.4 where containers launched with a User set as a
│                        │      │                   `UID:GID` larger than the maximum 32-bit signed integer can
│                        │      │                    cause an overflow condition where the container ultimately
│                        │      │                    runs as root (UID 0). This could cause unexpected behavior
│                        │      │                    for environments that require containers to run as a
│                        │      │                   non-root user. This bug has been fixed in containerd
│                        │      │                   1.6.38, 1.7.27, and 2.04. As a workaround, ensure that only
│                        │      │                    trusted images are used and that only trusted users have
│                        │      │                   permissions to import images. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-190 
│                        │      ├ VendorSeverity   ╭ amazon     : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ ghsa       : 2 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 4.6 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 7.8 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4.6 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2024-40635 
│                        │      │                  ├ [1] : https://github.com/containerd/containerd 
│                        │      │                  ├ [2] : https://github.com/containerd/containerd/commit/0504
│                        │      │                  │       4ec0a9a75232cad458027ca83437aae3f4da 
│                        │      │                  ├ [3] : https://github.com/containerd/containerd/commit/1150
│                        │      │                  │       4c3fc5f45634f2d93d57743a998194430b82 (v1.7.27) 
│                        │      │                  ├ [4] : https://github.com/containerd/containerd/commit/1a43
│                        │      │                  │       cb6a1035441f9aca8f5666a9b3ef9e70ab20 
│                        │      │                  ├ [5] : https://github.com/containerd/containerd/commit/9639
│                        │      │                  │       b9625554183d0c4d8d072dccb84fedd2320f (v1.6.38) 
│                        │      │                  ├ [6] : https://github.com/containerd/containerd/commit/cf15
│                        │      │                  │       8e884cfe4812a6c371b59e4ea9bc4c46e51a 
│                        │      │                  ├ [7] : https://github.com/containerd/containerd/security/ad
│                        │      │                  │       visories/GHSA-265r-hfxg-fhmg 
│                        │      │                  ├ [8] : https://lists.debian.org/debian-lts-announce/2025/05
│                        │      │                  │       /msg00005.html 
│                        │      │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2024-40635 
│                        │      │                  ├ [10]: https://ubuntu.com/security/notices/USN-7374-1 
│                        │      │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2024-40635 
│                        │      ├ PublishedDate   : 2025-03-17T22:15:13.15Z 
│                        │      ╰ LastModifiedDate: 2025-10-02T01:51:43.21Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2025-64329 
│                        │      ├ VendorIDs        ─ [0]: GHSA-m6hq-p25p-ffr2 
│                        │      ├ PkgID           : github.com/containerd/containerd@v1.7.19 
│                        │      ├ PkgName         : github.com/containerd/containerd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd@v1.7.19 
│                        │      │                  ╰ UID : 3e3ab79d28169955 
│                        │      ├ InstalledVersion: v1.7.19 
│                        │      ├ FixedVersion    : 1.7.29 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-64329 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:47cc5445a222bd6794287beec94c5da9150c8dae3ed8660fd9da
│                        │      │                   951f3b9ab147 
│                        │      ├ Title           : github.com/containerd/containerd: containerd: Memory
│                        │      │                   exhaustion via CRI Attach implementation goroutine leaks 
│                        │      ├ Description     : containerd is an open-source container runtime. Versions
│                        │      │                   1.7.28 and below, 2.0.0-beta.0 through 2.0.6, 2.1.0-beta.0
│                        │      │                   through 2.1.4, and 2.2.0-beta.0 through 2.2.0-rc.1 contain
│                        │      │                   a bug in the CRI Attach implementation where a user can
│                        │      │                   exhaust memory on the host due to goroutine leaks. This
│                        │      │                   issue is fixed in versions 1.7.29, 2.0.7, 2.1.5 and 2.2.0.
│                        │      │                   To workaround this vulnerability, users can set up an
│                        │      │                   admission controller to control accesses to pods/attach
│                        │      │                   resources. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-401 
│                        │      ├ VendorSeverity   ╭ amazon     : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ ghsa       : 2 
│                        │      │                  ├ nvd        : 2 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:N/UI:N/VC:N
│                        │      │                  │        │            /VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 6.9 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 5.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-64329 
│                        │      │                  ├ [1]: https://github.com/containerd/containerd 
│                        │      │                  ├ [2]: https://github.com/containerd/containerd/commit/083b5
│                        │      │                  │      3cd6f19b5de7717b0ce92c11bdf95e612df 
│                        │      │                  ├ [3]: https://github.com/containerd/containerd/security/adv
│                        │      │                  │      isories/GHSA-m6hq-p25p-ffr2 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-64329 
│                        │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7983-1 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-64329 
│                        │      ├ PublishedDate   : 2025-11-07T05:16:08.017Z 
│                        │      ╰ LastModifiedDate: 2025-12-31T18:34:48.06Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2025-15558 
│                        │      ├ VendorIDs        ─ [0]: GHSA-p436-gjf2-799p 
│                        │      ├ PkgID           : github.com/docker/cli@v27.0.3+incompatible 
│                        │      ├ PkgName         : github.com/docker/cli 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/cli@v27.0.3%2Bincompati
│                        │      │                  │       ble 
│                        │      │                  ╰ UID : d6622f997413662c 
│                        │      ├ InstalledVersion: v27.0.3+incompatible 
│                        │      ├ FixedVersion    : 29.2.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-15558 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:3f6348fed540477630887e0e5cc5230b2004fe06c805488790c9
│                        │      │                   40ba71498cdd 
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
│                        │      │                  ├ [1] : https://docs.docker.com/desktop/release-notes 
│                        │      │                  ├ [2] : https://docs.docker.com/desktop/release-notes/ 
│                        │      │                  ├ [3] : https://github.com/docker/cli 
│                        │      │                  ├ [4] : https://github.com/docker/cli/commit/13759330b1f7e7c
│                        │      │                  │       b0d67047ea42c5482548ba7fa 
│                        │      │                  ├ [5] : https://github.com/docker/cli/pull/6713 
│                        │      │                  ├ [6] : https://github.com/docker/cli/security/advisories/GH
│                        │      │                  │       SA-p436-gjf2-799p 
│                        │      │                  ├ [7] : https://github.com/docker/compose/pull/12300 
│                        │      │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2025-15558 
│                        │      │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-15558 
│                        │      │                  ├ [10]: https://www.zerodayinitiative.com/advisories/ZDI-CAN
│                        │      │                  │       -28304 
│                        │      │                  ╰ [11]: https://www.zerodayinitiative.com/advisories/ZDI-CAN
│                        │      │                          -28304/ 
│                        │      ├ PublishedDate   : 2026-03-04T17:16:14.763Z 
│                        │      ╰ LastModifiedDate: 2026-03-09T17:38:15.95Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2024-41110 
│                        │      ├ VendorIDs        ─ [0]: GHSA-v23v-6jw2-98fq 
│                        │      ├ PkgID           : github.com/docker/docker@v27.0.3+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v27.0.3%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : e1c373a4ab6a8eac 
│                        │      ├ InstalledVersion: v27.0.3+incompatible 
│                        │      ├ FixedVersion    : 23.0.15, 26.1.5, 27.1.1, 25.0.6 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-41110 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:b47e8b5f94699a2fa0f1fb6ca7e8d7d96961dec54b87bd03de27
│                        │      │                   2d57534928fe 
│                        │      ├ Title           : moby: Authz zero length regression 
│                        │      ├ Description     : Moby is an open-source project created by Docker for
│                        │      │                   software containerization. A security vulnerability has
│                        │      │                   been detected in certain versions of Docker Engine, which
│                        │      │                   could allow an attacker to bypass authorization plugins
│                        │      │                   (AuthZ) under specific circumstances. The base likelihood
│                        │      │                   of this being exploited is low.
│                        │      │                   
│                        │      │                   Using a specially-crafted API request, an Engine API client
│                        │      │                    could make the daemon forward the request or response to
│                        │      │                   an authorization plugin without the body. In certain
│                        │      │                   circumstances, the authorization plugin may allow a request
│                        │      │                    which it would have otherwise denied if the body had been
│                        │      │                   forwarded to it.
│                        │      │                   A security issue was discovered In 2018, where an attacker
│                        │      │                   could bypass AuthZ plugins using a specially crafted API
│                        │      │                   request. This could lead to unauthorized actions, including
│                        │      │                    privilege escalation. Although this issue was fixed in
│                        │      │                   Docker Engine v18.09.1 in January 2019, the fix was not
│                        │      │                   carried forward to later major versions, resulting in a
│                        │      │                   regression. Anyone who depends on authorization plugins
│                        │      │                   that introspect the request and/or response body to make
│                        │      │                   access control decisions is potentially impacted.
│                        │      │                   Docker EE v19.03.x and all versions of Mirantis Container
│                        │      │                   Runtime are not vulnerable.
│                        │      │                   docker-ce v27.1.1 containes patches to fix the
│                        │      │                   vulnerability. Patches have also been merged into the
│                        │      │                   master, 19.03, 20.0, 23.0, 24.0, 25.0, 26.0, and 26.1
│                        │      │                   release branches. If one is unable to upgrade immediately,
│                        │      │                   avoid using AuthZ plugins and/or restrict access to the
│                        │      │                   Docker API to trusted parties, following the principle of
│                        │      │                   least privilege. 
│                        │      ├ Severity        : CRITICAL 
│                        │      ├ CweIDs           ╭ [0]: CWE-187 
│                        │      │                  ├ [1]: CWE-444 
│                        │      │                  ╰ [2]: CWE-863 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ azure      : 4 
│                        │      │                  ├ cbl-mariner: 4 
│                        │      │                  ├ ghsa       : 4 
│                        │      │                  ├ photon     : 4 
│                        │      │                  ├ redhat     : 4 
│                        │      │                  ╰ ubuntu     : 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector : CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I
│                        │      │                  │        │            :H/A:H 
│                        │      │                  │        ├ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:H
│                        │      │                  │        │            /VI:H/VA:H/SC:H/SI:H/SA:H 
│                        │      │                  │        ├ V3Score  : 10 
│                        │      │                  │        ╰ V40Score : 9.4 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 9.9 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2024-41110 
│                        │      │                  ├ [1] : https://github.com/moby/moby 
│                        │      │                  ├ [2] : https://github.com/moby/moby/commit/411e817ddf710ff8
│                        │      │                  │       e08fa193da80cb78af708191 
│                        │      │                  ├ [3] : https://github.com/moby/moby/commit/42f40b1d6dd75623
│                        │      │                  │       42f832b9cd2adf9e668eeb76 
│                        │      │                  ├ [4] : https://github.com/moby/moby/commit/65cc597cea28cdc2
│                        │      │                  │       5bea3b8a86384b4251872919 
│                        │      │                  ├ [5] : https://github.com/moby/moby/commit/852759a7df454cbf
│                        │      │                  │       88db4e954c919becd48faa9b 
│                        │      │                  ├ [6] : https://github.com/moby/moby/commit/a31260625655cff9
│                        │      │                  │       ae226b51757915e275e304b0 
│                        │      │                  ├ [7] : https://github.com/moby/moby/commit/a79fabbfe8411769
│                        │      │                  │       6a19671f4aa88b82d0f64fc1 
│                        │      │                  ├ [8] : https://github.com/moby/moby/commit/ae160b4edddb72ef
│                        │      │                  │       4bd71f66b975a1a1cc434f00 
│                        │      │                  ├ [9] : https://github.com/moby/moby/commit/ae2b3666c517c96c
│                        │      │                  │       bc2adf1af5591a6b00d4ec0f 
│                        │      │                  ├ [10]: https://github.com/moby/moby/commit/cc13f952511154a2
│                        │      │                  │       866bddbb7dddebfe9e83b801 
│                        │      │                  ├ [11]: https://github.com/moby/moby/commit/fc274cd2ff4cf3b4
│                        │      │                  │       8c91697fb327dd1fb95588fb 
│                        │      │                  ├ [12]: https://github.com/moby/moby/security/advisories/GHS
│                        │      │                  │       A-v23v-6jw2-98fq 
│                        │      │                  ├ [13]: https://lists.debian.org/debian-lts-announce/2024/10
│                        │      │                  │       /msg00009.html 
│                        │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-41110 
│                        │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20240802-0
│                        │      │                  │       001/ 
│                        │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7161-1 
│                        │      │                  ├ [17]: https://ubuntu.com/security/notices/USN-7161-2 
│                        │      │                  ├ [18]: https://ubuntu.com/security/notices/USN-7161-3 
│                        │      │                  ├ [19]: https://www.cve.org/CVERecord?id=CVE-2024-41110 
│                        │      │                  ├ [20]: https://www.docker.com/blog/docker-security-advisory
│                        │      │                  │       -docker-engine-authz-plugin 
│                        │      │                  ╰ [21]: https://www.docker.com/blog/docker-security-advisory
│                        │      │                          -docker-engine-authz-plugin/ 
│                        │      ├ PublishedDate   : 2024-07-24T17:15:11.053Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-34040 
│                        │      ├ VendorIDs        ─ [0]: GHSA-x744-4wpc-v9h2 
│                        │      ├ PkgID           : github.com/docker/docker@v27.0.3+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v27.0.3%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : e1c373a4ab6a8eac 
│                        │      ├ InstalledVersion: v27.0.3+incompatible 
│                        │      ├ FixedVersion    : 29.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:5ad0b528e3e6fc4a02dae4bbde3c7af4dfa65f965d73bffee924
│                        │      │                   38de618b2fb1 
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
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-41567 
│                        │      ├ VendorIDs        ─ [0]: GHSA-x86f-5xw2-fm2r 
│                        │      ├ PkgID           : github.com/docker/docker@v27.0.3+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v27.0.3%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : e1c373a4ab6a8eac 
│                        │      ├ InstalledVersion: v27.0.3+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:393b7ad873ad2932720d702a29b2c248b8fd323b55d3e490a598
│                        │      │                   0c3de3cecb93 
│                        │      ├ Title           : Docker: `PUT /containers/{id}/archive` executes container
│                        │      │                   binary on the host 
│                        │      ├ Description     : ## Summary
│                        │      │                   
│                        │      │                   When a user uploads a compressed archive into a container,
│                        │      │                   a malicious image can execute arbitrary code with daemon
│                        │      │                   (host root) privileges.
│                        │      │                   ## Details
│                        │      │                   When handling `PUT /containers/{id}/archive` requests with
│                        │      │                   compressed archives, the daemon decompresses them using
│                        │      │                   external system binaries. Due to incorrect ordering of
│                        │      │                   operations, these binaries are resolved from the
│                        │      │                   container's filesystem rather than the host's. A container
│                        │      │                   image that includes a trojanized decompression binary can
│                        │      │                   achieve code execution as the daemon process whenever a
│                        │      │                   compressed archive is uploaded to that container.
│                        │      │                   The executed binary runs with the daemon's full privileges,
│                        │      │                    including host root UID and unrestricted capabilities.
│                        │      │                   ## Impact
│                        │      │                   Arbitrary code execution as host root, crossing the
│                        │      │                   container-to-host trust boundary.
│                        │      │                   ### Conditions for exploitation
│                        │      │                   - A user must run a container from a malicious image that
│                        │      │                   contains a trojanized decompression binary.
│                        │      │                   - The user must then upload a compressed archive (xz or
│                        │      │                   gzip) into that container, either by piping a compressed
│                        │      │                   archive via `docker cp -` or by calling the `PUT
│                        │      │                   /containers/{id}/archive` API directly with compressed
│                        │      │                   content.
│                        │      │                   ### Not affected
│                        │      │                   Standard `docker cp` usage is **not** affected, because the
│                        │      │                    CLI sends uncompressed tar by default:
│                        │      │                   ```
│                        │      │                   docker cp ./file.txt mycontainer:/file.txt
│                        │      │                   This can only be exploited when explicitly passing a xz or
│                        │      │                   gzip-compressed archive to `docker cp` or the `PUT
│                        │      │                   /containers/{id}/archive` API, for example:
│                        │      │                   cat archive.tar.xz | docker cp - mycontainer:/dir
│                        │      │                   Decompression formats using pure Go implementations (bzip2,
│                        │      │                    zstd, and gzip when the container image does not contain
│                        │      │                   an `unpigz` binary) are also not affected.
│                        │      │                   ## Workarounds
│                        │      │                   - Only run containers from trusted images.
│                        │      │                   - Use authorization plugins to limit access to the `PUT
│                        │      │                   /containers/{id}/archive` endpoint.
│                        │      │                   - Avoid piping compressed archives into containers created
│                        │      │                   from untrusted images. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ─ ghsa: 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:H/I:H/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 7.2 
│                        │      ╰ References       ╭ [0]: https://github.com/moby/moby 
│                        │                         ╰ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │                                -x86f-5xw2-fm2r 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-42306 
│                        │      ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │      ├ PkgID           : github.com/docker/docker@v27.0.3+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v27.0.3%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : e1c373a4ab6a8eac 
│                        │      ├ InstalledVersion: v27.0.3+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:d1074db3afd6ada9110e5c1709fb72bf96804157ff01ca9ff877
│                        │      │                   2cccdb5123da 
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
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-33997 
│                        │      ├ VendorIDs        ─ [0]: GHSA-pxq6-2prw-chj9 
│                        │      ├ PkgID           : github.com/docker/docker@v27.0.3+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v27.0.3%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : e1c373a4ab6a8eac 
│                        │      ├ InstalledVersion: v27.0.3+incompatible 
│                        │      ├ FixedVersion    : 29.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:9af3a8e81989dd983ffcc6aa40e03016b3f73b570007129b8282
│                        │      │                   c702b18799b0 
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
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-41568 
│                        │      ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │      ├ PkgID           : github.com/docker/docker@v27.0.3+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v27.0.3%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : e1c373a4ab6a8eac 
│                        │      ├ InstalledVersion: v27.0.3+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:4734598f2ea46aab5dd85a6cbae675300320b3101496257f9013
│                        │      │                   2ee9a12aa666 
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
│                        ├ [10] ╭ VulnerabilityID : CVE-2025-54410 
│                        │      ├ VendorIDs        ─ [0]: GHSA-4vq8-7jfc-9cvp 
│                        │      ├ PkgID           : github.com/docker/docker@v27.0.3+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v27.0.3%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : e1c373a4ab6a8eac 
│                        │      ├ InstalledVersion: v27.0.3+incompatible 
│                        │      ├ FixedVersion    : 25.0.13, 28.0.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-54410 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:c111f277ef1f8adf0ebcb4972e4882d06082feb1228fb3ece065
│                        │      │                   d4e21c0d86ff 
│                        │      ├ Title           : github.com/moby/moby: Moby's Firewalld reload removes
│                        │      │                   bridge network isolation 
│                        │      ├ Description     : Moby is an open source container framework developed by
│                        │      │                   Docker Inc. that is distributed as Docker Engine, Mirantis
│                        │      │                   Container Runtime, and various other downstream
│                        │      │                   projects/products. A firewalld vulnerability affects Moby
│                        │      │                   releases before 28.0.0. When firewalld reloads, Docker
│                        │      │                   fails to re-create iptables rules that isolate bridge
│                        │      │                   networks, allowing any container to access all ports on any
│                        │      │                    other container across different bridge networks on the
│                        │      │                   same host. This breaks network segmentation between
│                        │      │                   containers that should be isolated, creating significant
│                        │      │                   risk in multi-tenant environments. Only containers in
│                        │      │                   --internal networks remain protected.
│                        │      │                   Workarounds include reloading firewalld and either
│                        │      │                   restarting the docker daemon, re-creating bridge networks,
│                        │      │                   or using rootless mode. Maintainers anticipate a fix for
│                        │      │                   this issue in version 25.0.13. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-909 
│                        │      ├ VendorSeverity   ╭ amazon: 1 
│                        │      │                  ├ ghsa  : 1 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ╰ redhat: 1 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 3.3 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:L/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 5.2 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-54410 
│                        │      │                  ├ [1]: https://firewalld.org/documentation/howto/reload-fire
│                        │      │                  │      walld.html 
│                        │      │                  ├ [2]: https://github.com/moby/moby 
│                        │      │                  ├ [3]: https://github.com/moby/moby/pull/49443 
│                        │      │                  ├ [4]: https://github.com/moby/moby/pull/49728 
│                        │      │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -4vq8-7jfc-9cvp 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2025-54410 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-54410 
│                        │      ├ PublishedDate   : 2025-07-30T14:15:28.9Z 
│                        │      ╰ LastModifiedDate: 2025-08-22T17:27:29.677Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-24051 
│                        │      ├ VendorIDs        ─ [0]: GHSA-9h8m-3fm2-qjrq 
│                        │      ├ PkgID           : go.opentelemetry.io/otel/sdk@v1.28.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/sdk 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/sdk@v1.28.0 
│                        │      │                  ╰ UID : 8eb8e2863d86919e 
│                        │      ├ InstalledVersion: v1.28.0 
│                        │      ├ FixedVersion    : 1.40.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-24051 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:d1529581a42db6151e0e120c3a4650430b508c525fe5cfb2e988
│                        │      │                   df736d0eae05 
│                        │      ├ Title           : OpenTelemetry Go SDK Vulnerable to Arbitrary Code Execution
│                        │      │                    via PATH Hijacking 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    The OpenTelemetry Go SDK in version v1.20.0-1.39.0 is
│                        │      │                   vulnerable to Path Hijacking (Untrusted Search Paths) on
│                        │      │                   macOS/Darwin systems. The resource detection code in
│                        │      │                   sdk/resource/host_id.go executes the ioreg system command
│                        │      │                   using a search path. An attacker with the ability to
│                        │      │                   locally modify the PATH environment variable can achieve
│                        │      │                   Arbitrary Code Execution (ACE) within the context of the
│                        │      │                   application. A fix was released with v1.40.0. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-426 
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ╰ ghsa  : 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7 
│                        │      ├ References       ╭ [0]: https://github.com/open-telemetry/opentelemetry-go 
│                        │      │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go/co
│                        │      │                  │      mmit/d45961bcda453fcbdb6469c22d6e88a1f9970a53 
│                        │      │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/se
│                        │      │                  │      curity/advisories/GHSA-9h8m-3fm2-qjrq 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-24051 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4394 
│                        │      ├ PublishedDate   : 2026-02-02T23:16:07.963Z 
│                        │      ╰ LastModifiedDate: 2026-02-27T20:32:10.693Z 
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-39883 
│                        │      ├ VendorIDs        ─ [0]: GHSA-hfvc-g4fc-pqhx 
│                        │      ├ PkgID           : go.opentelemetry.io/otel/sdk@v1.28.0 
│                        │      ├ PkgName         : go.opentelemetry.io/otel/sdk 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/go.opentelemetry.io/otel/sdk@v1.28.0 
│                        │      │                  ╰ UID : 8eb8e2863d86919e 
│                        │      ├ InstalledVersion: v1.28.0 
│                        │      ├ FixedVersion    : 1.43.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39883 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:172907708aa47200deb5ccc0c24a75c98af0d3228f5de5581c29
│                        │      │                   920afc51f112 
│                        │      ├ Title           : opentelemetry-go: BSD kenv command not using absolute path
│                        │      │                   enables PATH hijacking 
│                        │      ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │      │                    From 1.15.0 to 1.42.0, the fix for CVE-2026-24051 changed
│                        │      │                   the Darwin ioreg command to use an absolute path but left
│                        │      │                   the BSD kenv command using a bare name, allowing the same
│                        │      │                   PATH hijacking attack on BSD and Solaris platforms. This
│                        │      │                   vulnerability is fixed in 1.43.0. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-426 
│                        │      ├ VendorSeverity   ╭ ghsa: 3 
│                        │      │                  ╰ nvd : 3 
│                        │      ├ CVSS             ╭ ghsa ╭ V40Vector: CVSS:4.0/AV:L/AC:H/AT:N/PR:L/UI:N/VC:H/V
│                        │      │                  │      │            I:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │      ╰ V40Score : 7.3 
│                        │      │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7 
│                        │      ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rel
│                        │      │                  │      eases/tag/v1.43.0 
│                        │      │                  ├ [1]: https://github.com/open-telemetry/opentelemetry-go 
│                        │      │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go/se
│                        │      │                  │      curity/advisories/GHSA-hfvc-g4fc-pqhx 
│                        │      │                  ╰ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39883 
│                        │      ├ PublishedDate   : 2026-04-08T21:17:00.697Z 
│                        │      ╰ LastModifiedDate: 2026-04-10T21:16:27.12Z 
│                        ├ [13] ╭ VulnerabilityID : CVE-2024-45337 
│                        │      ├ VendorIDs        ─ [0]: GHSA-v778-237x-gjrc 
│                        │      ├ PkgID           : golang.org/x/crypto@v0.24.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.24.0 
│                        │      │                  ╰ UID : e1ac9875a7a587e5 
│                        │      ├ InstalledVersion: v0.24.0 
│                        │      ├ FixedVersion    : 0.31.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-45337 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:3b34fbd52feda1e48dabefb4a99fe65dfb846ec36379d6c6cedb
│                        │      │                   86fb9e1a6f0b 
│                        │      ├ Title           : golang.org/x/crypto/ssh: Misuse of
│                        │      │                   ServerConfig.PublicKeyCallback may cause authorization
│                        │      │                   bypass in golang.org/x/crypto 
│                        │      ├ Description     : Applications and libraries which misuse
│                        │      │                   connection.serverAuthenticate (via callback field
│                        │      │                   ServerConfig.PublicKeyCallback) may be susceptible to an
│                        │      │                   authorization bypass. The documentation for
│                        │      │                   ServerConfig.PublicKeyCallback says that "A call to this
│                        │      │                   function does not guarantee that the key offered is in fact
│                        │      │                    used to authenticate." Specifically, the SSH protocol
│                        │      │                   allows clients to inquire about whether a public key is
│                        │      │                   acceptable before proving control of the corresponding
│                        │      │                   private key. PublicKeyCallback may be called with multiple
│                        │      │                   keys, and the order in which the keys were provided cannot
│                        │      │                   be used to infer which key the client successfully
│                        │      │                   authenticated with, if any. Some applications, which store
│                        │      │                   the key(s) passed to PublicKeyCallback (or derived
│                        │      │                   information) and make security relevant determinations
│                        │      │                   based on it once the connection is established, may make
│                        │      │                   incorrect assumptions. For example, an attacker may send
│                        │      │                   public keys A and B, and then authenticate with A.
│                        │      │                   PublicKeyCallback would be called only twice, first with A
│                        │      │                   and then with B. A vulnerable application may then make
│                        │      │                   authorization decisions based on key B for which the
│                        │      │                   attacker does not actually control the private key. Since
│                        │      │                   this API is widely misused, as a partial mitigation
│                        │      │                   golang.org/x/cry...@v0.31.0 enforces the property that,
│                        │      │                   when successfully authenticating via public key, the last
│                        │      │                   key passed to ServerConfig.PublicKeyCallback will be the
│                        │      │                   key used to authenticate the connection. PublicKeyCallback
│                        │      │                   will now be called multiple times with the same key, if
│                        │      │                   necessary. Note that the client may still not control the
│                        │      │                   last key passed to PublicKeyCallback if the connection is
│                        │      │                   then authenticated with a different method, such as
│                        │      │                   PasswordCallback, KeyboardInteractiveCallback, or
│                        │      │                   NoClientAuth. Users should be using the Extensions field of
│                        │      │                    the Permissions return value from the various
│                        │      │                   authentication callbacks to record data associated with the
│                        │      │                    authentication attempt instead of referencing external
│                        │      │                   state. Once the connection is established the state
│                        │      │                   corresponding to the successful authentication attempt can
│                        │      │                   be retrieved via the ServerConn.Permissions field. Note
│                        │      │                   that some third-party libraries misuse the Permissions type
│                        │      │                    by sharing it across authentication attempts; users of
│                        │      │                   third-party libraries should refer to the relevant projects
│                        │      │                    for guidance. 
│                        │      ├ Severity        : CRITICAL 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ azure      : 4 
│                        │      │                  ├ cbl-mariner: 4 
│                        │      │                  ├ ghsa       : 4 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                        │      │                  │        │           H/A:N 
│                        │      │                  │        ╰ V3Score : 9.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 8.2 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2024/12/1
│                        │      │                  │       1/2 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-45337 
│                        │      │                  ├ [2] : https://github.com/golang/crypto 
│                        │      │                  ├ [3] : https://github.com/golang/crypto/commit/b4f1988a35de
│                        │      │                  │       e11ec3e05d6bf3e90b695fbd8909 
│                        │      │                  ├ [4] : https://go-review.googlesource.com/c/crypto/+/635315/ 
│                        │      │                  ├ [5] : https://go.dev/cl/635315 
│                        │      │                  ├ [6] : https://go.dev/issue/70779 
│                        │      │                  ├ [7] : https://groups.google.com/g/golang-announce/c/-nPEi3
│                        │      │                  │       9gI4Q/m/cGVPJCqdAQAJ 
│                        │      │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2024-45337 
│                        │      │                  ├ [9] : https://pkg.go.dev/vuln/GO-2024-3321 
│                        │      │                  ├ [10]: https://security.netapp.com/advisory/ntap-20250131-0
│                        │      │                  │       007 
│                        │      │                  ├ [11]: https://security.netapp.com/advisory/ntap-20250131-0
│                        │      │                  │       007/ 
│                        │      │                  ├ [12]: https://ubuntu.com/security/notices/USN-7839-1 
│                        │      │                  ├ [13]: https://ubuntu.com/security/notices/USN-7839-2 
│                        │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-45337 
│                        │      ├ PublishedDate   : 2024-12-12T02:02:07.97Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [14] ╭ VulnerabilityID : CVE-2025-22869 
│                        │      ├ VendorIDs        ─ [0]: GHSA-hcg3-q754-cr77 
│                        │      ├ PkgID           : golang.org/x/crypto@v0.24.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.24.0 
│                        │      │                  ╰ UID : e1ac9875a7a587e5 
│                        │      ├ InstalledVersion: v0.24.0 
│                        │      ├ FixedVersion    : 0.35.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22869 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:07ad2207fe4b1d993017ebae434521633fc5fcac3273b71d28a5
│                        │      │                   f556f73bb5fb 
│                        │      ├ Title           : golang.org/x/crypto/ssh: Denial of Service in the Key
│                        │      │                   Exchange of golang.org/x/crypto/ssh 
│                        │      ├ Description     : SSH servers which implement file transfer protocols are
│                        │      │                   vulnerable to a denial of service attack from clients which
│                        │      │                    complete the key exchange slowly, or not at all, causing
│                        │      │                   pending content to be read into memory, but never
│                        │      │                   transmitted. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ cbl-mariner: 3 
│                        │      │                  ├ ghsa       : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:3833 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22869 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2348367 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2348367 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-22869 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-3833.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:7416 
│                        │      │                  ├ [7] : https://github.com/golang/crypto 
│                        │      │                  ├ [8] : https://github.com/golang/crypto/commit/7292932d45d5
│                        │      │                  │       5c7199324ab0027cc86e8198aa22 
│                        │      │                  ├ [9] : https://go-review.googlesource.com/c/crypto/+/652135 
│                        │      │                  ├ [10]: https://go.dev/cl/652135 
│                        │      │                  ├ [11]: https://go.dev/issue/71931 
│                        │      │                  ├ [12]: https://linux.oracle.com/cve/CVE-2025-22869.html 
│                        │      │                  ├ [13]: https://linux.oracle.com/errata/ELSA-2025-7484.html 
│                        │      │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2025-22869 
│                        │      │                  ├ [15]: https://pkg.go.dev/vuln/GO-2025-3487 
│                        │      │                  ├ [16]: https://security.netapp.com/advisory/ntap-20250411-0
│                        │      │                  │       010 
│                        │      │                  ├ [17]: https://security.netapp.com/advisory/ntap-20250411-0
│                        │      │                  │       010/ 
│                        │      │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2025-22869 
│                        │      ├ PublishedDate   : 2025-02-26T08:14:24.997Z 
│                        │      ╰ LastModifiedDate: 2025-05-01T19:28:20.74Z 
│                        ├ [15] ╭ VulnerabilityID : CVE-2025-47914 
│                        │      ├ VendorIDs        ─ [0]: GHSA-f6x5-jh6r-wrfv 
│                        │      ├ PkgID           : golang.org/x/crypto@v0.24.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.24.0 
│                        │      │                  ╰ UID : e1ac9875a7a587e5 
│                        │      ├ InstalledVersion: v0.24.0 
│                        │      ├ FixedVersion    : 0.45.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47914 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:4a25729584a141068b22581ff160f7e38083fb4a04f7af04ff26
│                        │      │                   d99732e46e38 
│                        │      ├ Title           : golang.org/x/crypto/ssh/agent: SSH Agent servers: Denial of
│                        │      │                    Service due to malformed messages 
│                        │      ├ Description     : SSH Agent servers do not validate the size of messages when
│                        │      │                    processing new identity requests, which may cause the
│                        │      │                   program to panic if the message is malformed due to an out
│                        │      │                   of bounds read. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-125 
│                        │      ├ VendorSeverity   ╭ amazon: 2 
│                        │      │                  ├ ghsa  : 2 
│                        │      │                  ╰ redhat: 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           N/A:L 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-47914 
│                        │      │                  ├ [1]: https://go.dev/cl/721960 
│                        │      │                  ├ [2]: https://go.dev/issue/76364 
│                        │      │                  ├ [3]: https://go.googlesource.com/crypto 
│                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/w-oX3Ux
│                        │      │                  │      NcZA 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-47914 
│                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-4135 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-47914 
│                        │      ├ PublishedDate   : 2025-11-19T21:15:50.517Z 
│                        │      ╰ LastModifiedDate: 2025-12-11T19:36:41.373Z 
│                        ├ [16] ╭ VulnerabilityID : CVE-2025-58181 
│                        │      ├ VendorIDs        ─ [0]: GHSA-j5w8-q4qc-rx2x 
│                        │      ├ PkgID           : golang.org/x/crypto@v0.24.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.24.0 
│                        │      │                  ╰ UID : e1ac9875a7a587e5 
│                        │      ├ InstalledVersion: v0.24.0 
│                        │      ├ FixedVersion    : 0.45.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58181 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:8238e393a61ca4d6e28942ea0b1c6bf739e71150aee4f93b1234
│                        │      │                   d1b08860f8d0 
│                        │      ├ Title           : golang.org/x/crypto/ssh: golang.org/x/crypto/ssh: Denial of
│                        │      │                    Service via unbounded memory consumption in GSSAPI
│                        │      │                   authentication 
│                        │      ├ Description     : SSH servers parsing GSSAPI authentication requests do not
│                        │      │                   validate the number of mechanisms specified in the request,
│                        │      │                    allowing an attacker to cause unbounded memory
│                        │      │                   consumption. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon: 2 
│                        │      │                  ├ ghsa  : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           N/A:L 
│                        │      │                  │        ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-58181 
│                        │      │                  ├ [1] : https://github.com/golang/crypto/commit/e79546e28b85
│                        │      │                  │       ea53dd37afe1c4102746ef553b9c 
│                        │      │                  ├ [2] : https://github.com/golang/go/issues/76363 
│                        │      │                  ├ [3] : https://go.dev/cl/721961 
│                        │      │                  ├ [4] : https://go.dev/issue/76363 
│                        │      │                  ├ [5] : https://groups.google.com/g/golang-announce/c/w-oX3U
│                        │      │                  │       xNcZA 
│                        │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/w-oX3U
│                        │      │                  │       xNcZA?pli=1 
│                        │      │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2025-58181 
│                        │      │                  ├ [8] : https://pkg.go.dev/vuln/GO-2025-4134 
│                        │      │                  ├ [9] : https://ubuntu.com/security/notices/USN-7956-1 
│                        │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2025-58181 
│                        │      ├ PublishedDate   : 2025-11-19T21:15:50.85Z 
│                        │      ╰ LastModifiedDate: 2025-12-11T19:29:24.9Z 
│                        ├ [17] ╭ VulnerabilityID : CVE-2025-22870 
│                        │      ├ VendorIDs        ─ [0]: GHSA-qxp5-gwg8-xv66 
│                        │      ├ PkgID           : golang.org/x/net@v0.26.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.26.0 
│                        │      │                  ╰ UID : ca756bf6440d6a5d 
│                        │      ├ InstalledVersion: v0.26.0 
│                        │      ├ FixedVersion    : 0.36.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22870 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:5fe7dece3414c0bda4574591556b514724149cdf52754a7ba7aa
│                        │      │                   5c1d03a8e628 
│                        │      ├ Title           : golang.org/x/net/proxy: golang.org/x/net/http/httpproxy:
│                        │      │                   HTTP Proxy bypass using IPv6 Zone IDs in golang.org/x/net[
│                        │      │                   m 
│                        │      ├ Description     : Matching of hosts against proxy patterns can improperly
│                        │      │                   treat an IPv6 zone ID as a hostname component. For example,
│                        │      │                    when the NO_PROXY environment variable is set to
│                        │      │                   "*.example.com", a request to "[::1%25.example.com]:80`
│                        │      │                   will incorrectly match and not be proxied. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-115 
│                        │      ├ VendorSeverity   ╭ amazon     : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ ghsa       : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                        │      │                  │        │           N/A:L 
│                        │      │                  │        ╰ V3Score : 4.4 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 4.4 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/03/0
│                        │      │                  │       7/2 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22870 
│                        │      │                  ├ [2] : https://github.com/golang/go/issues/71984 
│                        │      │                  ├ [3] : https://go-review.googlesource.com/q/project:net 
│                        │      │                  ├ [4] : https://go.dev/cl/654697 
│                        │      │                  ├ [5] : https://go.dev/issue/71984 
│                        │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/4t3lzH
│                        │      │                  │       3I0eI/m/b42ImqrBAQAJ 
│                        │      │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                        │      │                  ├ [8] : https://pkg.go.dev/vuln/GO-2025-3503 
│                        │      │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250509-0
│                        │      │                  │       007 
│                        │      │                  ├ [10]: https://security.netapp.com/advisory/ntap-20250509-0
│                        │      │                  │       007/ 
│                        │      │                  ├ [11]: https://ubuntu.com/security/notices/USN-7574-1 
│                        │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
│                        │      ├ PublishedDate   : 2025-03-12T19:15:38.31Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T23:16:32.86Z 
│                        ├ [18] ╭ VulnerabilityID : CVE-2025-22872 
│                        │      ├ VendorIDs        ─ [0]: GHSA-vvgc-356p-c3xw 
│                        │      ├ PkgID           : golang.org/x/net@v0.26.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.26.0 
│                        │      │                  ╰ UID : ca756bf6440d6a5d 
│                        │      ├ InstalledVersion: v0.26.0 
│                        │      ├ FixedVersion    : 0.38.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22872 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:608258cfbfd262c6814e60b476a528b4b779107762775db62af2
│                        │      │                   2bb3fd2eb0df 
│                        │      ├ Title           : golang.org/x/net/html: Incorrect Neutralization of Input
│                        │      │                   During Web Page Generation in x/net in golang.org/x/net 
│                        │      ├ Description     : The tokenizer incorrectly interprets tags with unquoted
│                        │      │                   attribute values that end with a solidus character (/) as
│                        │      │                   self-closing. When directly using Tokenizer, this can
│                        │      │                   result in such tags incorrectly being marked as
│                        │      │                   self-closing, and when using the Parse functions, this can
│                        │      │                   result in content following such tags as being placed in
│                        │      │                   the wrong scope during DOM construction, but only when tags
│                        │      │                    are in foreign content (e.g. <math>, <svg>, etc
│                        │      │                   contexts). 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ ghsa       : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:P/VC:N
│                        │      │                  │        │            /VI:N/VA:N/SC:L/SI:L/SA:N 
│                        │      │                  │        ╰ V40Score : 5.3 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-22872 
│                        │      │                  ├ [1] : https://github.com/TheDegenerateDev5150/net/commit/e
│                        │      │                  │       1fcd82abba34df74614020343be8eb1fe85f0d9 
│                        │      │                  ├ [2] : https://github.com/advisories/GHSA-vvgc-356p-c3xw 
│                        │      │                  ├ [3] : https://go.dev/cl/662715 
│                        │      │                  ├ [4] : https://go.dev/issue/73070 
│                        │      │                  ├ [5] : https://groups.google.com/g/golang-announce/c/ezSKR9
│                        │      │                  │       vqbqA 
│                        │      │                  ├ [6] : https://nvd.nist.gov/vuln/detail/CVE-2025-22872 
│                        │      │                  ├ [7] : https://pkg.go.dev/vuln/GO-2025-3595 
│                        │      │                  ├ [8] : https://security.netapp.com/advisory/ntap-20250516-0
│                        │      │                  │       007 
│                        │      │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250516-0
│                        │      │                  │       007/ 
│                        │      │                  ├ [10]: https://ubuntu.com/security/notices/USN-8089-1 
│                        │      │                  ├ [11]: https://ubuntu.com/security/notices/USN-8089-2 
│                        │      │                  ├ [12]: https://ubuntu.com/security/notices/USN-8089-3 
│                        │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2025-22872 
│                        │      ├ PublishedDate   : 2025-04-16T18:16:04.183Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [19] ╭ VulnerabilityID : CVE-2025-22868 
│                        │      ├ VendorIDs        ─ [0]: GHSA-6v2p-p543-phr9 
│                        │      ├ PkgID           : golang.org/x/oauth2@v0.20.0 
│                        │      ├ PkgName         : golang.org/x/oauth2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/oauth2@v0.20.0 
│                        │      │                  ╰ UID : 423fbbf7d4776be4 
│                        │      ├ InstalledVersion: v0.20.0 
│                        │      ├ FixedVersion    : 0.27.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22868 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:2120659d6cf4c95a65f3ac7dd14dbe9982610bed2df0882508a3
│                        │      │                   dad9807017bb 
│                        │      ├ Title           : golang.org/x/oauth2/jws: Unexpected memory consumption
│                        │      │                   during token parsing in golang.org/x/oauth2/jws 
│                        │      ├ Description     : An attacker can pass a malicious malformed token which
│                        │      │                   causes unexpected memory to be consumed during parsing. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-1286 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ cbl-mariner: 3 
│                        │      │                  ├ ghsa       : 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-22868 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/show_bug.cgi?id=2347423 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/show_bug.cgi?id=2348366 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2352914 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2354195 
│                        │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-22868 
│                        │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-27144 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-29786 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-30204 
│                        │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2025:7479 
│                        │      │                  ├ [10]: https://go.dev/cl/652155 
│                        │      │                  ├ [11]: https://go.dev/issue/71490 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2025-22868 
│                        │      │                  ├ [13]: https://pkg.go.dev/vuln/GO-2025-3488 
│                        │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2025-22868 
│                        │      ├ PublishedDate   : 2025-02-26T08:14:24.897Z 
│                        │      ╰ LastModifiedDate: 2025-05-01T19:27:10.43Z 
│                        ├ [20] ╭ VulnerabilityID : CVE-2026-33186 
│                        │      ├ VendorIDs        ─ [0]: GHSA-p77j-4mvh-x3m3 
│                        │      ├ PkgID           : google.golang.org/grpc@v1.64.0 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.64.0 
│                        │      │                  ╰ UID : f6d3a48d97047e1c 
│                        │      ├ InstalledVersion: v1.64.0 
│                        │      ├ FixedVersion    : 1.79.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33186 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:665ce157fd97beec03bc87a20740dff64e41c8f16aadfbb654c0
│                        │      │                   dc2d79f52b41 
│                        │      ├ Title           : google.golang.org/grpc/grpc-go:
│                        │      │                   google.golang.org/grpc/authz: gRPC-Go: Authorization bypass
│                        │      │                    due to improper HTTP/2 path validation 
│                        │      ├ Description     : gRPC-Go is the Go language implementation of gRPC. Versions
│                        │      │                    prior to 1.79.3 have an authorization bypass resulting
│                        │      │                   from improper input validation of the HTTP/2 `:path`
│                        │      │                   pseudo-header. The gRPC-Go server was too lenient in its
│                        │      │                   routing logic, accepting requests where the `:path` omitted
│                        │      │                    the mandatory leading slash (e.g., `Service/Method`
│                        │      │                   instead of `/Service/Method`). While the server
│                        │      │                   successfully routed these requests to the correct handler,
│                        │      │                   authorization interceptors (including the official
│                        │      │                   `grpc/authz` package) evaluated the raw, non-canonical path
│                        │      │                    string. Consequently, "deny" rules defined using canonical
│                        │      │                    paths (starting with `/`) failed to match the incoming
│                        │      │                   request, allowing it to bypass the policy if a fallback
│                        │      │                   "allow" rule was present. This affects gRPC-Go servers that
│                        │      │                    use path-based authorization interceptors, such as the
│                        │      │                   official RBAC implementation in
│                        │      │                   `google.golang.org/grpc/authz` or custom interceptors
│                        │      │                   relying on `info.FullMethod` or `grpc.Method(ctx)`; AND
│                        │      │                   that have a security policy contains specific "deny" rules
│                        │      │                   for canonical paths but allows other requests by default (a
│                        │      │                    fallback "allow" rule). The vulnerability is exploitable
│                        │      │                   by an attacker who can send raw HTTP/2 frames with
│                        │      │                   malformed `:path` headers directly to the gRPC server. The
│                        │      │                   fix in version 1.79.3 ensures that any request with a
│                        │      │                   `:path` that does not start with a leading slash is
│                        │      │                   immediately rejected with a `codes.Unimplemented` error,
│                        │      │                   preventing it from reaching authorization interceptors or
│                        │      │                   handlers with a non-canonical path string. While upgrading
│                        │      │                   is the most secure and recommended path, users can mitigate
│                        │      │                    the vulnerability using one of the following methods: Use
│                        │      │                   a validating interceptor (recommended mitigation);
│                        │      │                   infrastructure-level normalization; and/or policy
│                        │      │                   hardening. 
│                        │      ├ Severity        : CRITICAL 
│                        │      ├ CweIDs           ─ [0]: CWE-285 
│                        │      ├ VendorSeverity   ╭ alma  : 3 
│                        │      │                  ├ amazon: 3 
│                        │      │                  ├ ghsa  : 4 
│                        │      │                  ├ photon: 4 
│                        │      │                  ├ redhat: 3 
│                        │      │                  ╰ rocky : 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                        │      │                  │        │           H/A:N 
│                        │      │                  │        ╰ V3Score : 9.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 9.1 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19353 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-33186 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2445356 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449833 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2455470 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2456333 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2456335 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2456336 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2456338 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2456339 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2445356 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2449833 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2455470 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2456335 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2456336 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2456338 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-25679 
│                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32280 
│                        │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32281 
│                        │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32282 
│                        │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32283 
│                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-33186 
│                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-33810 
│                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-34986 
│                        │      │                  ├ [26]: https://errata.almalinux.org/9/ALSA-2026-19353.html 
│                        │      │                  ├ [27]: https://errata.rockylinux.org/RLSA-2026:19353 
│                        │      │                  ├ [28]: https://github.com/grpc/grpc-go 
│                        │      │                  ├ [29]: https://github.com/grpc/grpc-go/security/advisories/
│                        │      │                  │       GHSA-p77j-4mvh-x3m3 
│                        │      │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-33186 
│                        │      │                  ╰ [31]: https://www.cve.org/CVERecord?id=CVE-2026-33186 
│                        │      ├ PublishedDate   : 2026-03-20T23:16:45.18Z 
│                        │      ╰ LastModifiedDate: 2026-04-10T20:49:17.737Z 
│                        ├ [21] ╭ VulnerabilityID : GHSA-xr7q-jx4m-x55m 
│                        │      ├ PkgID           : google.golang.org/grpc@v1.64.0 
│                        │      ├ PkgName         : google.golang.org/grpc 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/google.golang.org/grpc@v1.64.0 
│                        │      │                  ╰ UID : f6d3a48d97047e1c 
│                        │      ├ InstalledVersion: v1.64.0 
│                        │      ├ FixedVersion    : 1.64.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-xr7q-jx4m-x55m 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:a9c57d75c37eb8701a5acede4bf95d3c98c23e77eb5ee2033df5
│                        │      │                   90518ca064f8 
│                        │      ├ Title           : Private tokens could appear in logs if context containing
│                        │      │                   gRPC metadata is logged in github.com/grpc/grpc-go 
│                        │      ├ Description     : ### Impact
│                        │      │                   This issue represents a potential PII concern.  If
│                        │      │                   applications were printing or logging a context containing
│                        │      │                   gRPC metadata, the affected versions will contain all the
│                        │      │                   metadata, which may include private information.
│                        │      │                   
│                        │      │                   ### Patches
│                        │      │                   The issue first appeared in 1.64.0 and is patched in 1.64.1
│                        │      │                    and 1.65.0
│                        │      │                   ### Workarounds
│                        │      │                   If using an affected version and upgrading is not possible,
│                        │      │                    ensuring you do not log or print contexts will avoid the
│                        │      │                   problem.
│                        │      │                    
│                        │      ├ Severity        : LOW 
│                        │      ├ VendorSeverity   ─ ghsa: 1 
│                        │      ├ References       ╭ [0]: https://github.com/grpc/grpc-go 
│                        │      │                  ├ [1]: https://github.com/grpc/grpc-go/commit/ab292411ddc0f3
│                        │      │                  │      b7a7786754d1fe05264c3021eb 
│                        │      │                  ╰ [2]: https://github.com/grpc/grpc-go/security/advisories/G
│                        │      │                         HSA-xr7q-jx4m-x55m 
│                        │      ├ PublishedDate   : 2024-07-05T20:07:01Z 
│                        │      ╰ LastModifiedDate: 2024-07-09T21:38:29Z 
│                        ├ [22] ╭ VulnerabilityID : CVE-2025-68121 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4337 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.13, 1.25.7, 1.26.0-rc.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-68121 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:93846d8073f197f3fc02d95dbc2a6e6cdc9264155870ca37cf01
│                        │      │                   45abcba8c3c0 
│                        │      ├ Title           : crypto/tls: crypto/tls: Incorrect certificate validation
│                        │      │                   during TLS session resumption 
│                        │      ├ Description     : During session resumption in crypto/tls, if the underlying
│                        │      │                   Config has its ClientCAs or RootCAs fields mutated between
│                        │      │                   the initial handshake and the resumed handshake, the
│                        │      │                   resumed handshake may succeed when it should have failed.
│                        │      │                   This may happen when a user calls Config.Clone and mutates
│                        │      │                   the returned Config, or uses Config.GetConfigForClient.
│                        │      │                   This can cause a client to resume a session with a server
│                        │      │                   that it would not have resumed with during the initial
│                        │      │                   handshake, or cause a server to resume a session with a
│                        │      │                   client that it would not have resumed with during the
│                        │      │                   initial handshake. 
│                        │      ├ Severity        : CRITICAL 
│                        │      ├ CweIDs           ─ [0]: CWE-295 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ bitnami    : 4 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ nvd        : 4 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 4 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 3 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I
│                        │      │                  │         │           :H/A:H 
│                        │      │                  │         ╰ V3Score : 10 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:C/C:H/I
│                        │      │                  │         │           :H/A:H 
│                        │      │                  │         ╰ V3Score : 10 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I
│                        │      │                            │           :H/A:N 
│                        │      │                            ╰ V3Score : 7.4 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:4177 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-68121 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2434432 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2437111 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2434432 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2437111 
│                        │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-61726 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-68121 
│                        │      │                  ├ [8] : https://errata.almalinux.org/9/ALSA-2026-4177.html 
│                        │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2026:4177 
│                        │      │                  ├ [10]: https://github.com/golang/go/issues/77113 
│                        │      │                  ├ [11]: https://go.dev/cl/737700 
│                        │      │                  ├ [12]: https://go.dev/issue/77217 
│                        │      │                  ├ [13]: https://groups.google.com/g/golang-announce/c/K09ubi
│                        │      │                  │       9FQFk 
│                        │      │                  ├ [14]: https://groups.google.com/g/golang-announce/c/Vd2tYV
│                        │      │                  │       M8eUc 
│                        │      │                  ├ [15]: https://linux.oracle.com/cve/CVE-2025-68121.html 
│                        │      │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2026-5146.html 
│                        │      │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2025-68121 
│                        │      │                  ├ [18]: https://pkg.go.dev/vuln/GO-2026-4337 
│                        │      │                  ╰ [19]: https://www.cve.org/CVERecord?id=CVE-2025-68121 
│                        │      ├ PublishedDate   : 2026-02-05T18:16:10.857Z 
│                        │      ╰ LastModifiedDate: 2026-04-29T14:16:16.17Z 
│                        ├ [23] ╭ VulnerabilityID : CVE-2025-61726 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4341 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.12, 1.25.6 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61726 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f933e29701dafe6f7f880faf15b33550efdf84206c29dc42f0ef
│                        │      │                   46ec8d284585 
│                        │      ├ Title           : golang: net/url: Memory exhaustion in query parameter
│                        │      │                   parsing in net/url 
│                        │      ├ Description     : The net/url package does not set a limit on the number of
│                        │      │                   query parameters in a query. While the maximum size of
│                        │      │                   query parameters in URLs is generally limited by the
│                        │      │                   maximum request header size, the net/http.Request.ParseForm
│                        │      │                    method can parse large URL-encoded forms. Parsing a large
│                        │      │                   form containing many unique query parameters can cause
│                        │      │                   excessive memory consumption. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ cbl-mariner: 2 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:4177 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-61726 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2434432 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2437111 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2434432 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2437111 
│                        │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-61726 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-68121 
│                        │      │                  ├ [8] : https://errata.almalinux.org/9/ALSA-2026-4177.html 
│                        │      │                  ├ [9] : https://errata.rockylinux.org/RLSA-2026:4177 
│                        │      │                  ├ [10]: https://go.dev/cl/736712 
│                        │      │                  ├ [11]: https://go.dev/issue/77101 
│                        │      │                  ├ [12]: https://groups.google.com/g/golang-announce/c/Vd2tYV
│                        │      │                  │       M8eUc 
│                        │      │                  ├ [13]: https://linux.oracle.com/cve/CVE-2025-61726.html 
│                        │      │                  ├ [14]: https://linux.oracle.com/errata/ELSA-2026-5146.html 
│                        │      │                  ├ [15]: https://nvd.nist.gov/vuln/detail/CVE-2025-61726 
│                        │      │                  ├ [16]: https://pkg.go.dev/vuln/GO-2026-4341 
│                        │      │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2025-61726 
│                        │      ├ PublishedDate   : 2026-01-28T20:16:09.713Z 
│                        │      ╰ LastModifiedDate: 2026-02-06T18:47:34.52Z 
│                        ├ [24] ╭ VulnerabilityID : CVE-2025-61729 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4155 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.11, 1.25.5 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61729 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:95d33ebd45c91a3d73742e78f9c592bfc6d14bcbb7b9eecc9045
│                        │      │                   60607206d92b 
│                        │      ├ Title           : crypto/x509: golang: Denial of Service due to excessive
│                        │      │                   resource consumption via crafted certificate 
│                        │      ├ Description     : Within HostnameError.Error(), when constructing an error
│                        │      │                   string, there is no limit to the number of hosts that will
│                        │      │                   be printed out. Furthermore, the error string is
│                        │      │                   constructed by repeated string concatenation, leading to
│                        │      │                   quadratic runtime. Therefore, a certificate provided by a
│                        │      │                   malicious actor can result in excessive resource
│                        │      │                   consumption. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-295 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ cbl-mariner: 1 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:3928 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-61729 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2418462 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2434432 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2437111 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2418462 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2434432 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2437111 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-61726 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-61729 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-68121 
│                        │      │                  ├ [11]: https://errata.almalinux.org/9/ALSA-2026-3928.html 
│                        │      │                  ├ [12]: https://errata.rockylinux.org/RLSA-2026:3928 
│                        │      │                  ├ [13]: https://go.dev/cl/725920 
│                        │      │                  ├ [14]: https://go.dev/issue/76445 
│                        │      │                  ├ [15]: https://groups.google.com/g/golang-announce/c/8FJoBk
│                        │      │                  │       Pddm4 
│                        │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2025-61729.html 
│                        │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-5146.html 
│                        │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2025-61729 
│                        │      │                  ├ [19]: https://pkg.go.dev/vuln/GO-2025-4155 
│                        │      │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2025-61729 
│                        │      ├ PublishedDate   : 2025-12-02T19:15:51.447Z 
│                        │      ╰ LastModifiedDate: 2025-12-19T18:25:28.283Z 
│                        ├ [25] ╭ VulnerabilityID : CVE-2026-25679 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4601 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.8, 1.26.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25679 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:a1d31ed0630c9fe64319fda5ad746bfba3fd703f348fee49f56a
│                        │      │                   679c3ae0402a 
│                        │      ├ Title           : net/url: Incorrect parsing of IPv6 host literals in net/url 
│                        │      ├ Description     : url.Parse insufficiently validated the host/authority
│                        │      │                   component and accepted some invalid URLs. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-425 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ azure      : 3 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:9044 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-25679 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2445356 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2445356 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-25679 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2026-9044.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:9044 
│                        │      │                  ├ [7] : https://go.dev/cl/752180 
│                        │      │                  ├ [8] : https://go.dev/issue/77578 
│                        │      │                  ├ [9] : https://groups.google.com/g/golang-announce/c/EdhZqr
│                        │      │                  │       Q98hk 
│                        │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2026-25679.html 
│                        │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2026-9044.html 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2026-25679 
│                        │      │                  ├ [13]: https://pkg.go.dev/vuln/GO-2026-4601 
│                        │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2026-25679 
│                        │      ├ PublishedDate   : 2026-03-06T22:16:00.72Z 
│                        │      ╰ LastModifiedDate: 2026-04-21T14:43:03.8Z 
│                        ├ [26] ╭ VulnerabilityID : CVE-2026-32280 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4947 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32280 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f9370eef9e407f301acaf5987472ed337f0a2a490d634f3d72f4
│                        │      │                   6c7bf0026042 
│                        │      ├ Title           : crypto/x509: crypto/tls: golang: Go: Denial of Service
│                        │      │                   vulnerability in certificate chain building 
│                        │      ├ Description     : During chain building, the amount of work that is done is
│                        │      │                   not correctly limited when a large number of intermediate
│                        │      │                   certificates are passed in VerifyOptions.Intermediates,
│                        │      │                   which can lead to a denial of service. This affects both
│                        │      │                   direct users of crypto/x509 and users of crypto/tls. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19353 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-32280 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2445356 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449833 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2455470 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2456333 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2456335 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2456336 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2456338 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2456339 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2445356 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2449833 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2455470 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2456335 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2456336 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2456338 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-25679 
│                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32280 
│                        │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32281 
│                        │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32282 
│                        │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32283 
│                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-33186 
│                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-33810 
│                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-34986 
│                        │      │                  ├ [26]: https://errata.almalinux.org/9/ALSA-2026-19353.html 
│                        │      │                  ├ [27]: https://errata.rockylinux.org/RLSA-2026:19353 
│                        │      │                  ├ [28]: https://go.dev/cl/758320 
│                        │      │                  ├ [29]: https://go.dev/issue/78282 
│                        │      │                  ├ [30]: https://groups.google.com/g/golang-announce/c/0uYbvb
│                        │      │                  │       PZRWU 
│                        │      │                  ├ [31]: https://linux.oracle.com/cve/CVE-2026-32280.html 
│                        │      │                  ├ [32]: https://linux.oracle.com/errata/ELSA-2026-16875.html 
│                        │      │                  ├ [33]: https://nvd.nist.gov/vuln/detail/CVE-2026-32280 
│                        │      │                  ├ [34]: https://pkg.go.dev/vuln/GO-2026-4947 
│                        │      │                  ╰ [35]: https://www.cve.org/CVERecord?id=CVE-2026-32280 
│                        │      ├ PublishedDate   : 2026-04-08T02:16:03.247Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T19:16:42.18Z 
│                        ├ [27] ╭ VulnerabilityID : CVE-2026-32281 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4946 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32281 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:8ea5cb13a34d9128d670d752af71a824fa23e51c278b5de84fcb
│                        │      │                   5fbbafaa5545 
│                        │      ├ Title           : crypto/x509: golang: Go crypto/x509: Denial of Service via
│                        │      │                   inefficient certificate chain validation 
│                        │      ├ Description     : Validating certificate chains which use policies is
│                        │      │                   unexpectedly inefficient when certificates in the chain
│                        │      │                   contain a very large number of policy mappings, possibly
│                        │      │                   causing denial of service. This only affects validation of
│                        │      │                   otherwise trusted certificate chains, issued by a root CA
│                        │      │                   in the VerifyOptions.Roots CertPool, or in the system
│                        │      │                   certificate pool. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-295 
│                        │      ├ VendorSeverity   ╭ alma   : 3 
│                        │      │                  ├ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ├ nvd    : 3 
│                        │      │                  ├ redhat : 2 
│                        │      │                  ╰ rocky  : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 5.9 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19353 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-32281 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2445356 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449833 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2455470 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2456333 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2456335 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2456336 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2456338 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2456339 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2445356 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2449833 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2455470 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2456335 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2456336 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2456338 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-25679 
│                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32280 
│                        │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32281 
│                        │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32282 
│                        │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32283 
│                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-33186 
│                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-33810 
│                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-34986 
│                        │      │                  ├ [26]: https://errata.almalinux.org/9/ALSA-2026-19353.html 
│                        │      │                  ├ [27]: https://errata.rockylinux.org/RLSA-2026:19353 
│                        │      │                  ├ [28]: https://go.dev/cl/758061 
│                        │      │                  ├ [29]: https://go.dev/issue/78281 
│                        │      │                  ├ [30]: https://groups.google.com/g/golang-announce/c/0uYbvb
│                        │      │                  │       PZRWU 
│                        │      │                  ├ [31]: https://nvd.nist.gov/vuln/detail/CVE-2026-32281 
│                        │      │                  ├ [32]: https://pkg.go.dev/vuln/GO-2026-4946 
│                        │      │                  ╰ [33]: https://www.cve.org/CVERecord?id=CVE-2026-32281 
│                        │      ├ PublishedDate   : 2026-04-08T02:16:03.35Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T19:15:57.75Z 
│                        ├ [28] ╭ VulnerabilityID : CVE-2026-32283 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4870 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32283 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4814b2c4cccdff572d2b252702d551c48ae2602fc599c5e6e29d
│                        │      │                   70c4edb75ca9 
│                        │      ├ Title           : crypto/tls: golang: Go crypto/tls: Denial of Service via
│                        │      │                   multiple TLS 1.3 key update messages 
│                        │      ├ Description     : If one side of the TLS connection sends multiple key update
│                        │      │                    messages post-handshake in a single record, the connection
│                        │      │                    can deadlock, causing uncontrolled consumption of
│                        │      │                   resources. This can lead to a denial of service. This only
│                        │      │                   affects TLS 1.3. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19353 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-32283 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2445356 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449833 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2455470 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2456333 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2456335 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2456336 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2456338 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2456339 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2445356 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2449833 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2455470 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2456335 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2456336 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2456338 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-25679 
│                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32280 
│                        │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32281 
│                        │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32282 
│                        │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32283 
│                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-33186 
│                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-33810 
│                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-34986 
│                        │      │                  ├ [26]: https://errata.almalinux.org/9/ALSA-2026-19353.html 
│                        │      │                  ├ [27]: https://errata.rockylinux.org/RLSA-2026:19353 
│                        │      │                  ├ [28]: https://go.dev/cl/763767 
│                        │      │                  ├ [29]: https://go.dev/issue/78334 
│                        │      │                  ├ [30]: https://groups.google.com/g/golang-announce/c/0uYbvb
│                        │      │                  │       PZRWU 
│                        │      │                  ├ [31]: https://linux.oracle.com/cve/CVE-2026-32283.html 
│                        │      │                  ├ [32]: https://linux.oracle.com/errata/ELSA-2026-17075.html 
│                        │      │                  ├ [33]: https://nvd.nist.gov/vuln/detail/CVE-2026-32283 
│                        │      │                  ├ [34]: https://pkg.go.dev/vuln/GO-2026-4870 
│                        │      │                  ╰ [35]: https://www.cve.org/CVERecord?id=CVE-2026-32283 
│                        │      ├ PublishedDate   : 2026-04-08T02:16:03.58Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T19:12:10.54Z 
│                        ├ [29] ╭ VulnerabilityID : CVE-2026-33811 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4981 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33811 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:b711ab817f479ada79a5ab6bc0906551b8f4382b7ea891588d57
│                        │      │                   1b88026181d4 
│                        │      ├ Title           : net: golang: Go net package: Denial of Service via long
│                        │      │                   CNAME response in LookupCNAME 
│                        │      ├ Description     : When using LookupCNAME with the cgo DNS resolver, a very
│                        │      │                   long CNAME response can trigger a double-free of C memory
│                        │      │                   and a crash. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-415 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ├ nvd    : 3 
│                        │      │                  ╰ redhat : 3 
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
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-33811 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-4981 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-33811 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:42.77Z 
│                        │      ╰ LastModifiedDate: 2026-05-12T20:23:02.333Z 
│                        ├ [30] ╭ VulnerabilityID : CVE-2026-33814 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4918 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:5363b50e71d33f120ea6f2e189e5ab1a4dccc8259441e2db373d
│                        │      │                   7a0a8e8752e3 
│                        │      ├ Title           : When processing HTTP/2 SETTINGS frames, transport will
│                        │      │                   enter an infini ... 
│                        │      ├ Description     : When processing HTTP/2 SETTINGS frames, transport will
│                        │      │                   enter an infinite loop of writing CONTINUATION frames if it
│                        │      │                    receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-835 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ azure  : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ├ nvd    : 3 
│                        │      │                  ╰ ubuntu : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://github.com/golang/go/issues/78476 
│                        │      │                  ├ [1]: https://go-review.googlesource.com/c/go/+/761581 
│                        │      │                  ├ [2]: https://go-review.googlesource.com/c/net/+/761640 
│                        │      │                  ├ [3]: https://go.dev/cl/761581 
│                        │      │                  ├ [4]: https://go.dev/cl/761640 
│                        │      │                  ├ [5]: https://go.dev/issue/78476 
│                        │      │                  ├ [6]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │      │                  ├ [8]: https://pkg.go.dev/vuln/GO-2026-4918 
│                        │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T14:41:59.52Z 
│                        ├ [31] ╭ VulnerabilityID : CVE-2026-39820 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4986 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39820 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:2c85c3d794f7612bf41f2e78a50b3669be437f0228729862ca39
│                        │      │                   f73331c697e1 
│                        │      ├ Title           : Well-crafted inputs reaching ParseAddress,
│                        │      │                   ParseAddressList, and Parse ... 
│                        │      ├ Description     : Well-crafted inputs reaching ParseAddress,
│                        │      │                   ParseAddressList, and ParseDate were able to trigger
│                        │      │                   excessive CPU exhaustion and memory allocations. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ╰ nvd    : 3 
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
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39820 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4986 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.187Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T15:10:58.65Z 
│                        ├ [32] ╭ VulnerabilityID : CVE-2026-39823 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4982 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39823 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:29fe57480d357d385c00a9c120fae102bf212bc2811428757e95
│                        │      │                   5d267c130fb6 
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
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ╰ bitnami: 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 6.1 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/769920 
│                        │      │                  ├ [1]: https://go.dev/issue/78913 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39823 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4982 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.29Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:58:45.697Z 
│                        ├ [33] ╭ VulnerabilityID : CVE-2026-39825 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4976 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39825 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:280fee8e530f4eefce6a5d308711110047082909d093e3ada58f
│                        │      │                   294e20b38bd7 
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
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ╰ bitnami: 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/770541 
│                        │      │                  ├ [1]: https://go.dev/issue/78948 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39825 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4976 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.39Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:58:56.39Z 
│                        ├ [34] ╭ VulnerabilityID : CVE-2026-39826 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4980 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39826 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:c3011d33bf0a164128937310d52ef39f55c8a3a4cce7d7039e1c
│                        │      │                   0058b1f9c2bd 
│                        │      ├ Title           : If a trusted template author were to write a <script> tag
│                        │      │                   containing a ... 
│                        │      ├ Description     : If a trusted template author were to write a <script> tag
│                        │      │                   containing an empty 'type' attribute or a 'type' attribute
│                        │      │                   with an ASCII whitespace, the execution of the template
│                        │      │                   would incorrectly escape any data passed into the <script>
│                        │      │                   block. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-116 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ╰ bitnami: 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 6.1 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/771180 
│                        │      │                  ├ [1]: https://go.dev/issue/78981 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39826 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4980 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.49Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:59:07.48Z 
│                        ├ [35] ╭ VulnerabilityID : CVE-2026-39836 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4971 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39836 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:12a8c886d8b6e2aebbfaf47c90ecfb60fb2fc0a39e78daded6b0
│                        │      │                   c4b8cea776bd 
│                        │      ├ Title           : Panic in Dial and LookupPort when handling NUL byte on
│                        │      │                   Windows in net 
│                        │      ├ Description     : The Dial and LookupPort functions panic on Windows when
│                        │      │                   provided with an input containing a NUL (0). 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-476 
│                        │      ├ VendorSeverity   ╭ bitnami: 3 
│                        │      │                  ╰ nvd    : 3 
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
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39836 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4971 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.593Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T15:11:10.31Z 
│                        ├ [36] ╭ VulnerabilityID : CVE-2026-42499 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4977 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42499 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:7a7598aa8719bb18f2d0d53730b2c8f4f91fe5941e1222f738f3
│                        │      │                   015401b1266c 
│                        │      ├ Title           : Pathological inputs could cause DoS through consumePhrase
│                        │      │                   when parsing ... 
│                        │      ├ Description     : Pathological inputs could cause DoS through consumePhrase
│                        │      │                   when parsing an email address according to RFC 5322. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ╰ bitnami: 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/771520 
│                        │      │                  ├ [1]: https://go.dev/issue/78987 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42499 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4977 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:44.54Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:59:17.563Z 
│                        ├ [37] ╭ VulnerabilityID : CVE-2025-0913 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-3750 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.10, 1.24.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-0913 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:836ae9fd7f166c0767d0dd226d3c4a1e59ff49bfe7dc0cf64a09
│                        │      │                   e2892d5043e9 
│                        │      ├ Title           : Inconsistent handling of O_CREATE|O_EXCL on Unix and
│                        │      │                   Windows in os in syscall 
│                        │      ├ Description     : os.OpenFile(path, os.O_CREATE|O_EXCL) behaved differently
│                        │      │                   on Unix and Windows systems when the target path was a
│                        │      │                   dangling symlink. On Unix systems, OpenFile with O_CREATE
│                        │      │                   and O_EXCL flags never follows symlinks. On Windows, when
│                        │      │                   the target path was a symlink to a nonexistent location,
│                        │      │                   OpenFile would create a file in that location. OpenFile now
│                        │      │                    always returns an error when the O_CREATE and O_EXCL flags
│                        │      │                    are both set and the target path is a symlink. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-59 
│                        │      ├ VendorSeverity   ─ bitnami: 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │      │                            │           :H/A:N 
│                        │      │                            ╰ V3Score : 5.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/672396 
│                        │      │                  ├ [1]: https://go.dev/issue/73702 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/ufZ8WpE
│                        │      │                  │      sA3A 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-0913 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2025-3750 
│                        │      ├ PublishedDate   : 2025-06-11T18:15:24.627Z 
│                        │      ╰ LastModifiedDate: 2025-08-08T14:53:03.55Z 
│                        ├ [38] ╭ VulnerabilityID : CVE-2025-22870 
│                        │      ├ VendorIDs        ╭ [0]: GHSA-qxp5-gwg8-xv66 
│                        │      │                  ╰ [1]: GO-2025-3503 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.7, 1.24.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22870 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:c29616758666d97186c149cdf01b41b52a9a734e317ad104747a
│                        │      │                   f1670619b991 
│                        │      ├ Title           : golang.org/x/net/proxy: golang.org/x/net/http/httpproxy:
│                        │      │                   HTTP Proxy bypass using IPv6 Zone IDs in golang.org/x/net[
│                        │      │                   m 
│                        │      ├ Description     : Matching of hosts against proxy patterns can improperly
│                        │      │                   treat an IPv6 zone ID as a hostname component. For example,
│                        │      │                    when the NO_PROXY environment variable is set to
│                        │      │                   "*.example.com", a request to "[::1%25.example.com]:80`
│                        │      │                   will incorrectly match and not be proxied. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-115 
│                        │      ├ VendorSeverity   ╭ amazon     : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ ghsa       : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                        │      │                  │        │           N/A:L 
│                        │      │                  │        ╰ V3Score : 4.4 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 4.4 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/03/0
│                        │      │                  │       7/2 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-22870 
│                        │      │                  ├ [2] : https://github.com/golang/go/issues/71984 
│                        │      │                  ├ [3] : https://go-review.googlesource.com/q/project:net 
│                        │      │                  ├ [4] : https://go.dev/cl/654697 
│                        │      │                  ├ [5] : https://go.dev/issue/71984 
│                        │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/4t3lzH
│                        │      │                  │       3I0eI/m/b42ImqrBAQAJ 
│                        │      │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                        │      │                  ├ [8] : https://pkg.go.dev/vuln/GO-2025-3503 
│                        │      │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250509-0
│                        │      │                  │       007 
│                        │      │                  ├ [10]: https://security.netapp.com/advisory/ntap-20250509-0
│                        │      │                  │       007/ 
│                        │      │                  ├ [11]: https://ubuntu.com/security/notices/USN-7574-1 
│                        │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
│                        │      ├ PublishedDate   : 2025-03-12T19:15:38.31Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T23:16:32.86Z 
│                        ├ [39] ╭ VulnerabilityID : CVE-2025-22871 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-3563 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.8, 1.24.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22871 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:2032ea7ff9e4e27ddc4d20ef7b4ed59f7a2933f21ea92a654fa1
│                        │      │                   da0effe1182c 
│                        │      ├ Title           : net/http: Request smuggling due to acceptance of invalid
│                        │      │                   chunked data in net/http 
│                        │      ├ Description     : The net/http package improperly accepts a bare LF as a line
│                        │      │                    terminator in chunked data chunk-size lines. This can
│                        │      │                   permit request smuggling if a net/http server is used in
│                        │      │                   conjunction with a server that incorrectly accepts a bare
│                        │      │                   LF as part of a chunk-ext. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 4 
│                        │      │                  ├ cbl-mariner: 3 
│                        │      │                  ├ ghsa       : 4 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 4 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ rocky      : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                        │      │                  │         │           :H/A:N 
│                        │      │                  │         ╰ V3Score : 9.1 
│                        │      │                  ├ ghsa    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                        │      │                  │         │           :H/A:N 
│                        │      │                  │         ╰ V3Score : 9.1 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 5.4 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/0
│                        │      │                  │       4/4 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:9635 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-22871 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2358493 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2358493 
│                        │      │                  ├ [5] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -783943.html 
│                        │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-22871 
│                        │      │                  ├ [7] : https://errata.almalinux.org/9/ALSA-2025-9635.html 
│                        │      │                  ├ [8] : https://errata.rockylinux.org/RLSA-2025:9635 
│                        │      │                  ├ [9] : https://github.com/roadrunner-server/roadrunner 
│                        │      │                  ├ [10]: https://github.com/roadrunner-server/roadrunner/comm
│                        │      │                  │       it/f269279ee87d0b88127741cad1042389af7605fa 
│                        │      │                  ├ [11]: https://github.com/roadrunner-server/roadrunner/issu
│                        │      │                  │       es/2166 
│                        │      │                  ├ [12]: https://github.com/roadrunner-server/roadrunner/rele
│                        │      │                  │       ases/tag/v2025.1.0 
│                        │      │                  ├ [13]: https://go.dev/cl/652998 
│                        │      │                  ├ [14]: https://go.dev/issue/71988 
│                        │      │                  ├ [15]: https://groups.google.com/g/golang-announce/c/Y2uBTV
│                        │      │                  │       KjBQk 
│                        │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2025-22871.html 
│                        │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2025-9845.html 
│                        │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2025-22871 
│                        │      │                  ├ [19]: https://pkg.go.dev/vuln/GO-2025-3563 
│                        │      │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2025-22871 
│                        │      ├ PublishedDate   : 2025-04-08T20:15:20.183Z 
│                        │      ╰ LastModifiedDate: 2026-05-12T13:16:39.897Z 
│                        ├ [40] ╭ VulnerabilityID : CVE-2025-22873 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4403 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.9, 1.24.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22873 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:7f8566081315c74b12cc9dcfeed5e02cf6deda65405111d3a4de
│                        │      │                   06892ca268bc 
│                        │      ├ Title           : os: os: Information disclosure via path traversal using
│                        │      │                   specially crafted filenames 
│                        │      ├ Description     : It was possible to improperly access the parent directory
│                        │      │                   of an os.Root by opening a filename ending in "../". For
│                        │      │                   example, Root.Open("../") would open the parent directory
│                        │      │                   of the Root. This escape only permits opening the parent
│                        │      │                   directory itself, not ancestors of the parent or files
│                        │      │                   contained within the parent. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-23 
│                        │      ├ VendorSeverity   ╭ amazon : 2 
│                        │      │                  ├ bitnami: 1 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:L/I
│                        │      │                  │         │           :N/A:N 
│                        │      │                  │         ╰ V3Score : 3.8 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/05/06/2 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-22873 
│                        │      │                  ├ [2]: https://go.dev/cl/670036 
│                        │      │                  ├ [3]: https://go.dev/issue/73555 
│                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/UZoIkUT
│                        │      │                  │      367A/m/5WDxKizJAQAJ 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-22873 
│                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2026-4403 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-22873 
│                        │      ├ PublishedDate   : 2026-02-04T23:15:54.22Z 
│                        │      ╰ LastModifiedDate: 2026-02-10T15:16:40.057Z 
│                        ├ [41] ╭ VulnerabilityID : CVE-2025-4673 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-3751 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.10, 1.24.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4673 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:d6dd45a0bda4f088a950c214ecdc6d67c2c3d1b48f7706f279c9
│                        │      │                   55284d76d96f 
│                        │      ├ Title           : net/http: Sensitive headers not cleared on cross-origin
│                        │      │                   redirect in net/http 
│                        │      ├ Description     : Proxy-Authorization and Proxy-Authenticate headers
│                        │      │                   persisted on cross-origin redirects potentially leaking
│                        │      │                   sensitive information. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I
│                        │      │                  │         │           :N/A:N 
│                        │      │                  │         ╰ V3Score : 6.8 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 6.8 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:15887 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2025-4673 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2373305 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2373305 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-4673 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-15887.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:15887 
│                        │      │                  ├ [7] : https://go.dev/cl/679257 
│                        │      │                  ├ [8] : https://go.dev/issue/73816 
│                        │      │                  ├ [9] : https://groups.google.com/g/golang-announce/c/ufZ8Wp
│                        │      │                  │       EsA3A 
│                        │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2025-4673.html 
│                        │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-10677.html 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2025-4673 
│                        │      │                  ├ [13]: https://pkg.go.dev/vuln/GO-2025-3751 
│                        │      │                  ├ [14]: https://ubuntu.com/security/notices/USN-7574-1 
│                        │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2025-4673 
│                        │      ├ PublishedDate   : 2025-06-11T17:15:42.993Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [42] ╭ VulnerabilityID : CVE-2025-47906 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-3956 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.12, 1.24.6 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47906 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:a8cc0413c0b8b3a749663fbf1342d593d534b1b59d480dfd3d96
│                        │      │                   4ac6a90f3930 
│                        │      ├ Title           : os/exec: Unexpected paths returned from LookPath in os/exec 
│                        │      ├ Description     : If the PATH environment variable contains paths which are
│                        │      │                   executables (rather than just directories), passing certain
│                        │      │                    strings to LookPath ("", ".", and ".."), can result in the
│                        │      │                    binaries listed in the PATH being unexpectedly returned.[
│                        │      │                   m 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ rocky      : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                  │         │           :N/A:L 
│                        │      │                  │         ╰ V3Score : 6.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/08/0
│                        │      │                  │       6/1 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:22005 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-47906 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2396546 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2396546 
│                        │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-47906 
│                        │      │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2025-22005.html 
│                        │      │                  ├ [7] : https://errata.rockylinux.org/RLSA-2025:22005 
│                        │      │                  ├ [8] : https://go.dev/cl/691775 
│                        │      │                  ├ [9] : https://go.dev/issue/74466 
│                        │      │                  ├ [10]: https://groups.google.com/g/golang-announce/c/x5MKro
│                        │      │                  │       ML2yM 
│                        │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2025-47906.html 
│                        │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2025-22668.html 
│                        │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2025-47906 
│                        │      │                  ├ [14]: https://pkg.go.dev/vuln/GO-2025-3956 
│                        │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2025-47906 
│                        │      ├ PublishedDate   : 2025-09-18T19:15:37.66Z 
│                        │      ╰ LastModifiedDate: 2026-01-27T19:56:17.707Z 
│                        ├ [43] ╭ VulnerabilityID : CVE-2025-47907 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-3849 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.12, 1.24.6 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47907 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:e3ea09a6c3556b30493bcb4b692bda52fcf6b9d38952821afea8
│                        │      │                   e7c0f6ae0a8b 
│                        │      ├ Title           : database/sql: Postgres Scan Race Condition 
│                        │      ├ Description     : Cancelling a query (e.g. by cancelling the context passed
│                        │      │                   to one of the query methods) during a call to the Scan
│                        │      │                   method of the returned Rows can result in unexpected
│                        │      │                   results if other queries are being made in parallel. This
│                        │      │                   can result in a race condition that may overwrite the
│                        │      │                   expected results with those of another query, causing the
│                        │      │                   call to Scan to return either unexpected results from the
│                        │      │                   other query or an error. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-362 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ cbl-mariner: 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ╰ redhat     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I
│                        │      │                  │         │           :L/A:L 
│                        │      │                  │         ╰ V3Score : 7 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I
│                        │      │                            │           :L/A:L 
│                        │      │                            ╰ V3Score : 7 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/08/0
│                        │      │                  │       6/1 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:20909 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-47907 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2387083 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2393152 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-20909.html 
│                        │      │                  ├ [6] : https://go.dev/cl/693735 
│                        │      │                  ├ [7] : https://go.dev/issue/74831 
│                        │      │                  ├ [8] : https://groups.google.com/g/golang-announce/c/x5MKro
│                        │      │                  │       ML2yM 
│                        │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2025-47907.html 
│                        │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-20983.html 
│                        │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2025-47907 
│                        │      │                  ├ [12]: https://pkg.go.dev/vuln/GO-2025-3849 
│                        │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2025-47907 
│                        │      ├ PublishedDate   : 2025-08-07T16:15:30.357Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T19:11:50.67Z 
│                        ├ [44] ╭ VulnerabilityID : CVE-2025-47912 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4010 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47912 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:583c8b66222adb0a404ec5dc24026dfefe02850a5de6560849d8
│                        │      │                   83ae759750a6 
│                        │      ├ Title           : net/url: Insufficient validation of bracketed IPv6
│                        │      │                   hostnames in net/url 
│                        │      ├ Description     : The Parse function permits values other than IPv6 addresses
│                        │      │                    to be included in square brackets within the host
│                        │      │                   component of a URL. RFC 3986 permits IPv6 addresses to be
│                        │      │                   included within the host component, enclosed within square
│                        │      │                   brackets. For example: "http://[::1]/". IPv4 addresses and
│                        │      │                   hostnames must not appear within square brackets. Parse did
│                        │      │                    not enforce this requirement. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ├ photon : 2 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                  │         │           :N/A:N 
│                        │      │                  │         ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-47912 
│                        │      │                  ├ [2]: https://go.dev/cl/709857 
│                        │      │                  ├ [3]: https://go.dev/issue/75678 
│                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-47912 
│                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-4010 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-47912 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:18.187Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T13:57:18.69Z 
│                        ├ [45] ╭ VulnerabilityID : CVE-2025-58183 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4014 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58183 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:e30364d6254cbc63fc7af7c449f36b81e11f06ededfa66bf75da
│                        │      │                   723d8030fe43 
│                        │      ├ Title           : golang: archive/tar: Unbounded allocation when parsing GNU
│                        │      │                   sparse map 
│                        │      ├ Description     : tar.Reader does not set a maximum size on the number of
│                        │      │                   sparse region data blocks in GNU tar pax 1.0 sparse files.
│                        │      │                   A maliciously-crafted archive containing a large number of
│                        │      │                   sparse regions can cause a Reader to read an unbounded
│                        │      │                   amount of data from the archive into memory. When reading
│                        │      │                   from a compressed source, a small compressed input can
│                        │      │                   result in large allocations. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ rocky      : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │      │                  │         │           :N/A:L 
│                        │      │                  │         ╰ V3Score : 4.3 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/10/0
│                        │      │                  │       8/1 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:1381 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-58183 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2407258 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2407258 
│                        │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-58183 
│                        │      │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2026-1381.html 
│                        │      │                  ├ [7] : https://errata.rockylinux.org/RLSA-2026:1381 
│                        │      │                  ├ [8] : https://go.dev/cl/709861 
│                        │      │                  ├ [9] : https://go.dev/issue/75677 
│                        │      │                  ├ [10]: https://groups.google.com/g/golang-announce/c/4Emdl2
│                        │      │                  │       iQ_bI 
│                        │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2025-58183.html 
│                        │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2026-50076.html 
│                        │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2025-58183 
│                        │      │                  ├ [14]: https://pkg.go.dev/vuln/GO-2025-4014 
│                        │      │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2025-58183 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.357Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [46] ╭ VulnerabilityID : CVE-2025-58185 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4011 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58185 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:deef02e8568f14aae7fdbce260b8c549746640608a98ed61e883
│                        │      │                   5a83db5dc8c8 
│                        │      ├ Title           : encoding/asn1: Parsing DER payload can cause memory
│                        │      │                   exhaustion in encoding/asn1 
│                        │      ├ Description     : Parsing a maliciously crafted DER payload could allocate
│                        │      │                   large amounts of memory, causing memory exhaustion. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ├ photon : 2 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:L 
│                        │      │                  │         ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-58185 
│                        │      │                  ├ [2]: https://github.com/golang/go/commit/8709a41d5ef7321f4
│                        │      │                  │      86a1857f189c3fee20e8edd 
│                        │      │                  ├ [3]: https://go.dev/cl/709856 
│                        │      │                  ├ [4]: https://go.dev/issue/75671 
│                        │      │                  ├ [5]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2025-58185 
│                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2025-4011 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2025-58185 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.45Z 
│                        │      ╰ LastModifiedDate: 2026-02-06T20:26:41.997Z 
│                        ├ [47] ╭ VulnerabilityID : CVE-2025-58187 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4007 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.9, 1.25.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58187 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4ec0f07363fd27f60fac212a7f09de58bac795cbf3fdd60c47d4
│                        │      │                   198993a79c78 
│                        │      ├ Title           : crypto/x509: Quadratic complexity when checking name
│                        │      │                   constraints in crypto/x509 
│                        │      ├ Description     : Due to the design of the name constraint checking
│                        │      │                   algorithm, the processing time of some inputs scale
│                        │      │                   non-linearly with respect to the size of the certificate.
│                        │      │                   This affects programs which validate arbitrary certificate
│                        │      │                   chains. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-407 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ├ photon : 3 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-58187 
│                        │      │                  ├ [2]: https://github.com/golang/go/commit/3fc4c79fdbb17b9b2
│                        │      │                  │      9ea9f8c29dd780df075d4c4 
│                        │      │                  ├ [3]: https://go.dev/cl/709854 
│                        │      │                  ├ [4]: https://go.dev/issue/75681 
│                        │      │                  ├ [5]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2025-58187 
│                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2025-4007 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2025-58187 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.643Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T16:02:27.08Z 
│                        ├ [48] ╭ VulnerabilityID : CVE-2025-58188 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4013 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58188 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:1c3057826c92c342ea8b7a25a43b57d64cd281fc8044ff10b354
│                        │      │                   20a917dafd90 
│                        │      ├ Title           : crypto/x509: golang: Panic when validating certificates
│                        │      │                   with DSA public keys in crypto/x509 
│                        │      ├ Description     : Validating certificate chains which contain DSA public keys
│                        │      │                    can cause programs to panic, due to a interface cast that
│                        │      │                   assumes they implement the Equal method. This affects
│                        │      │                   programs which validate arbitrary certificate chains. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-295 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ├ photon : 3 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-58188 
│                        │      │                  ├ [2]: https://github.com/golang/go/commit/6e4007e8cffbb870e
│                        │      │                  │      6b606307ab7308236ecefb9 
│                        │      │                  ├ [3]: https://go.dev/cl/709853 
│                        │      │                  ├ [4]: https://go.dev/issue/75675 
│                        │      │                  ├ [5]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2025-58188 
│                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2025-4013 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2025-58188 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.74Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T15:55:11.97Z 
│                        ├ [49] ╭ VulnerabilityID : CVE-2025-58189 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4008 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58189 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:ac7960f93552ec3e571d269a7951ebb5580bb7dcc58b516e8e37
│                        │      │                   5ab76d99067f 
│                        │      ├ Title           : crypto/tls: go crypto/tls ALPN negotiation error contains
│                        │      │                   attacker controlled information 
│                        │      ├ Description     : When Conn.Handshake fails during ALPN negotiation the error
│                        │      │                    contains attacker controlled information (the ALPN
│                        │      │                   protocols sent by the client) which is not escaped. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-532 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ├ photon : 2 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                  │         │           :N/A:N 
│                        │      │                  │         ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-58189 
│                        │      │                  ├ [2]: https://go.dev/cl/707776 
│                        │      │                  ├ [3]: https://go.dev/issue/75652 
│                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-58189 
│                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-4008 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-58189 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.833Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T15:49:24.543Z 
│                        ├ [50] ╭ VulnerabilityID : CVE-2025-61723 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4009 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61723 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:3cf04213a9786f71f25eb56b043311d32fc8c344e6bbafc7e753
│                        │      │                   ff28fad70ba6 
│                        │      ├ Title           : encoding/pem: Quadratic complexity when parsing some
│                        │      │                   invalid inputs in encoding/pem 
│                        │      ├ Description     : The processing time for parsing some invalid inputs scales
│                        │      │                   non-linearly with respect to the size of the input. This
│                        │      │                   affects programs which parse untrusted PEM inputs. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ├ photon : 3 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-61723 
│                        │      │                  ├ [2]: https://github.com/golang/go/commit/5ce8cd16f3859ec5a
│                        │      │                  │      c4106ad8ec15d6236f4501b 
│                        │      │                  ├ [3]: https://go.dev/cl/709858 
│                        │      │                  ├ [4]: https://go.dev/issue/75676 
│                        │      │                  ├ [5]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2025-61723 
│                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2025-4009 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2025-61723 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.927Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T15:49:05.343Z 
│                        ├ [51] ╭ VulnerabilityID : CVE-2025-61724 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4015 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61724 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0d472d306b6d28da74de49fdf956bc47812c6b94fcf2a477fd8f
│                        │      │                   52db1f81191c 
│                        │      ├ Title           : net/textproto: Excessive CPU consumption in
│                        │      │                   Reader.ReadResponse in net/textproto 
│                        │      ├ Description     : The Reader.ReadResponse function constructs a response
│                        │      │                   string through repeated string concatenation of lines. When
│                        │      │                    the number of lines in a response is large, this can cause
│                        │      │                    excessive CPU consumption. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ├ photon : 2 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:L 
│                        │      │                  │         ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-61724 
│                        │      │                  ├ [2]: https://go.dev/cl/709859 
│                        │      │                  ├ [3]: https://go.dev/issue/75716 
│                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-61724 
│                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-4015 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-61724 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:20.02Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T15:30:53.69Z 
│                        ├ [52] ╭ VulnerabilityID : CVE-2025-61725 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4006 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61725 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:af286c479d38d05263fc3449489561d9d989a63fe6bcaff4ef15
│                        │      │                   5887b3bcc3a6 
│                        │      ├ Title           : net/mail: Excessive CPU consumption in ParseAddress in
│                        │      │                   net/mail 
│                        │      ├ Description     : The ParseAddress function constructs domain-literal address
│                        │      │                    components through repeated string concatenation. When
│                        │      │                   parsing large domain-literal components, this can cause
│                        │      │                   excessive CPU consumption. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ├ photon : 3 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-61725 
│                        │      │                  ├ [2]: https://go.dev/cl/709860 
│                        │      │                  ├ [3]: https://go.dev/issue/75680 
│                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-61725 
│                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-4006 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-61725 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:20.113Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [53] ╭ VulnerabilityID : CVE-2025-61727 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4175 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.11, 1.25.5 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61727 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:608a3fb37e308cd8e13993d8d96abb3d4ec542fbc3c96ea016e5
│                        │      │                   d1df7822598e 
│                        │      ├ Title           : golang: crypto/x509: excluded subdomain constraint does not
│                        │      │                    restrict wildcard SANs 
│                        │      ├ Description     : An excluded subdomain constraint in a certificate chain
│                        │      │                   does not restrict the usage of wildcard SANs in the leaf
│                        │      │                   certificate. For example a constraint that excludes the
│                        │      │                   subdomain test.example.com does not prevent a leaf
│                        │      │                   certificate from claiming the SAN *.example.com. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-295 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ├ photon : 2 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                  │         │           :L/A:N 
│                        │      │                  │         ╰ V3Score : 6.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-61727 
│                        │      │                  ├ [1]: https://go.dev/cl/723900 
│                        │      │                  ├ [2]: https://go.dev/issue/76442 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/8FJoBkP
│                        │      │                  │      ddm4 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-61727 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2025-4175 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-61727 
│                        │      ├ PublishedDate   : 2025-12-03T20:16:25.607Z 
│                        │      ╰ LastModifiedDate: 2025-12-18T20:15:10.957Z 
│                        ├ [54] ╭ VulnerabilityID : CVE-2025-61728 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4342 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.12, 1.25.6 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61728 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:6a74c7036148933ca65587b3065aa5a848e254b0bb2d1584924c
│                        │      │                   61219ca36727 
│                        │      ├ Title           : golang: archive/zip: Excessive CPU consumption when
│                        │      │                   building archive index in archive/zip 
│                        │      ├ Description     : archive/zip uses a super-linear file name indexing
│                        │      │                   algorithm that is invoked the first time a file in an
│                        │      │                   archive is opened. This can lead to a denial of service
│                        │      │                   when consuming a maliciously constructed ZIP archive. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 6.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2026/01/1
│                        │      │                  │       5/4 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:3753 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2025-61728 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2418462 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2434431 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2434432 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2437111 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2418462 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2434431 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2434432 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2437111 
│                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-61726 
│                        │      │                  ├ [12]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-61728 
│                        │      │                  ├ [13]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-61729 
│                        │      │                  ├ [14]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-68121 
│                        │      │                  ├ [15]: https://errata.almalinux.org/9/ALSA-2026-3753.html 
│                        │      │                  ├ [16]: https://errata.rockylinux.org/RLSA-2026:3753 
│                        │      │                  ├ [17]: https://go.dev/cl/736713 
│                        │      │                  ├ [18]: https://go.dev/issue/77102 
│                        │      │                  ├ [19]: https://groups.google.com/g/golang-announce/c/Vd2tYV
│                        │      │                  │       M8eUc 
│                        │      │                  ├ [20]: https://linux.oracle.com/cve/CVE-2025-61728.html 
│                        │      │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2026-4672.html 
│                        │      │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2025-61728 
│                        │      │                  ├ [23]: https://pkg.go.dev/vuln/GO-2026-4342 
│                        │      │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2025-61728 
│                        │      ├ PublishedDate   : 2026-01-28T20:16:09.83Z 
│                        │      ╰ LastModifiedDate: 2026-02-06T18:45:10.42Z 
│                        ├ [55] ╭ VulnerabilityID : CVE-2025-61730 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4340 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.12, 1.25.6 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61730 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:74985d9e70aef29d2c1d36e4ece58c63688fe0d10d575fc28c50
│                        │      │                   074df0d385d7 
│                        │      ├ Title           : crypto/tls: Handshake messages may be processed at the
│                        │      │                   incorrect encryption level in crypto/tls 
│                        │      ├ Description     : During the TLS 1.3 handshake if multiple messages are sent
│                        │      │                   in records that span encryption level boundaries (for
│                        │      │                   instance the Client Hello and Encrypted Extensions
│                        │      │                   messages), the subsequent messages may be processed before
│                        │      │                   the encryption level changes. This can cause some minor
│                        │      │                   information disclosure if a network-local attacker can
│                        │      │                   inject messages during the handshake. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ azure      : 1 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ cbl-mariner: 1 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ╰ redhat     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                  │         │           :N/A:N 
│                        │      │                  │         ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2025-61730 
│                        │      │                  ├ [1]: https://go.dev/cl/724120 
│                        │      │                  ├ [2]: https://go.dev/issue/76443 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/Vd2tYVM
│                        │      │                  │      8eUc 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-61730 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-4340 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-61730 
│                        │      ├ PublishedDate   : 2026-01-28T20:16:09.94Z 
│                        │      ╰ LastModifiedDate: 2026-02-03T20:36:41.3Z 
│                        ├ [56] ╭ VulnerabilityID : CVE-2026-27142 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4603 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.8, 1.26.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27142 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:c49f8512788fe8e1bddaebbab4f812ae57f9d1a233fe451ac404
│                        │      │                   12b43d81595d 
│                        │      ├ Title           : html/template: URLs in meta content attribute actions are
│                        │      │                   not escaped in html/template 
│                        │      ├ Description     : Actions which insert URLs into the content attribute of
│                        │      │                   HTML meta tags are not escaped. This can allow XSS if the
│                        │      │                   meta tag also has an http-equiv attribute with the value
│                        │      │                   "refresh". A new GODEBUG setting has been added,
│                        │      │                   htmlmetacontenturlescape, which can be used to disable
│                        │      │                   escaping URLs in actions in the meta content attribute
│                        │      │                   which follow "url=" by setting
│                        │      │                   htmlmetacontenturlescape=0. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-79 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                  │         │           :L/A:N 
│                        │      │                  │         ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 5.4 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27142 
│                        │      │                  ├ [1]: https://go.dev/cl/752081 
│                        │      │                  ├ [2]: https://go.dev/issue/77954 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/EdhZqrQ
│                        │      │                  │      98hk 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27142 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-4603 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-27142 
│                        │      ├ PublishedDate   : 2026-03-06T22:16:01.177Z 
│                        │      ╰ LastModifiedDate: 2026-04-21T14:30:01.38Z 
│                        ├ [57] ╭ VulnerabilityID : CVE-2026-32282 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4864 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32282 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:80ba01d2f7955e61594e973c57b8d4633643290d16cc9adb1272
│                        │      │                   ddf6ec2460c4 
│                        │      ├ Title           : golang: internal/syscall/unix: Root.Chmod can follow
│                        │      │                   symlinks out of the root 
│                        │      ├ Description     : On Linux, if the target of Root.Chmod is replaced with a
│                        │      │                   symlink while the chmod operation is in progress, Chmod can
│                        │      │                    operate on the target of the symlink, even when the target
│                        │      │                    lies outside the root. The Linux fchmodat syscall silently
│                        │      │                    ignores the AT_SYMLINK_NOFOLLOW flag, which Root.Chmod
│                        │      │                   uses to avoid symlink traversal. Root.Chmod checks its
│                        │      │                   target before acting and returns an error if the target is
│                        │      │                   a symlink lying outside the root, so the impact is limited
│                        │      │                   to cases where the target is replaced with a symlink
│                        │      │                   between the check and operation. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-59 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ nvd        : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I
│                        │      │                  │         │           :H/A:H 
│                        │      │                  │         ╰ V3Score : 6.4 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:H/UI:N/S:U/C:H/I
│                        │      │                  │         │           :H/A:H 
│                        │      │                  │         ╰ V3Score : 6.4 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I
│                        │      │                            │           :H/A:H 
│                        │      │                            ╰ V3Score : 7.8 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:19353 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-32282 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2445356 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449833 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2455470 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2456333 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2456335 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2456336 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2456338 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2456339 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2445356 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2449833 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2455470 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2456333 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2456335 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2456336 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2456338 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
│                        │      │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-25679 
│                        │      │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32280 
│                        │      │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32281 
│                        │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32282 
│                        │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32283 
│                        │      │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-33186 
│                        │      │                  ├ [24]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-33810 
│                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-34986 
│                        │      │                  ├ [26]: https://errata.almalinux.org/9/ALSA-2026-19353.html 
│                        │      │                  ├ [27]: https://errata.rockylinux.org/RLSA-2026:19353 
│                        │      │                  ├ [28]: https://go.dev/cl/763761 
│                        │      │                  ├ [29]: https://go.dev/issue/78293 
│                        │      │                  ├ [30]: https://groups.google.com/g/golang-announce/c/0uYbvb
│                        │      │                  │       PZRWU 
│                        │      │                  ├ [31]: https://linux.oracle.com/cve/CVE-2026-32282.html 
│                        │      │                  ├ [32]: https://linux.oracle.com/errata/ELSA-2026-17075.html 
│                        │      │                  ├ [33]: https://nvd.nist.gov/vuln/detail/CVE-2026-32282 
│                        │      │                  ├ [34]: https://pkg.go.dev/vuln/GO-2026-4864 
│                        │      │                  ╰ [35]: https://www.cve.org/CVERecord?id=CVE-2026-32282 
│                        │      ├ PublishedDate   : 2026-04-08T02:16:03.467Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T19:15:39.4Z 
│                        ├ [58] ╭ VulnerabilityID : CVE-2026-32288 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4869 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32288 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:06875eca0f1413d7117079b49a64992c4b73bf937e7215f62e91
│                        │      │                   14adf20719d5 
│                        │      ├ Title           : archive/tar: golang: Go's archive/tar package: Denial of
│                        │      │                   Service via maliciously-crafted archive 
│                        │      ├ Description     : tar.Reader can allocate an unbounded amount of memory when
│                        │      │                   reading a maliciously-crafted archive containing a large
│                        │      │                   number of sparse regions encoded in the "old GNU sparse
│                        │      │                   map" format. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ azure  : 2 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ├ nvd    : 2 
│                        │      │                  ├ photon : 2 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 5.5 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 5.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 4.3 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-32288 
│                        │      │                  ├ [1]: https://go.dev/cl/763766 
│                        │      │                  ├ [2]: https://go.dev/issue/78301 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/0uYbvbP
│                        │      │                  │      ZRWU 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-32288 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-4869 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-32288 
│                        │      ├ PublishedDate   : 2026-04-08T02:16:03.707Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T19:08:52.24Z 
│                        ├ [59] ╭ VulnerabilityID : CVE-2026-32289 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4865 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32289 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:76f0d317932b1ddea784fad0130af363f24de9e749c13ce8d4ff
│                        │      │                   42ea64e7f6d2 
│                        │      ├ Title           : html/template: golang: html/template: Cross-Site Scripting
│                        │      │                   (XSS) via improper context and brace depth tracking in JS
│                        │      │                   template literals 
│                        │      ├ Description     : Context was not properly tracked across template branches
│                        │      │                   for JS template literals, leading to possibly incorrect
│                        │      │                   escaping of content when branches were used. Additionally
│                        │      │                   template actions within JS template literals did not
│                        │      │                   properly track the brace depth, leading to incorrect
│                        │      │                   escaping being applied. These issues could cause actions
│                        │      │                   within JS template literals to be incorrectly or improperly
│                        │      │                    escaped, leading to XSS vulnerabilities. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-79 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ├ nvd    : 2 
│                        │      │                  ├ photon : 2 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                  │         │           :L/A:N 
│                        │      │                  │         ╰ V3Score : 6.1 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                  │         │           :L/A:N 
│                        │      │                  │         ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 5.4 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-32289 
│                        │      │                  ├ [1]: https://go.dev/cl/763762 
│                        │      │                  ├ [2]: https://go.dev/issue/78331 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/0uYbvbP
│                        │      │                  │      ZRWU 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-32289 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-4865 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-32289 
│                        │      ├ PublishedDate   : 2026-04-08T02:16:03.82Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T19:06:57.367Z 
│                        ├ [60] ╭ VulnerabilityID : CVE-2025-58186 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4012 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                        │      │                  │         4c2a7112bc86c63eb8b82 
│                        │      │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                        │      │                            ec496429992e7cc10387f 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58186 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:6468d81e743d7617da3487684aefa0661dfc1c89dda4634cb28b
│                        │      │                   79e76a001274 
│                        │      ├ Title           : golang.org/net/http: Lack of limit when parsing cookies can
│                        │      │                    cause memory exhaustion in net/http 
│                        │      ├ Description     : Despite HTTP headers having a default limit of 1MB, the
│                        │      │                   number of cookies that can be parsed does not have a limit.
│                        │      │                    By sending a lot of very small cookies such as "a=;", an
│                        │      │                   attacker can make an HTTP server allocate a large amount of
│                        │      │                    structs, causing large memory consumption. 
│                        │      ├ Severity        : LOW 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ├ photon : 2 
│                        │      │                  ╰ redhat : 1 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:L 
│                        │      │                  │         ╰ V3Score : 5.3 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-58186 
│                        │      │                  ├ [2]: https://go.dev/cl/709855 
│                        │      │                  ├ [3]: https://go.dev/issue/75672 
│                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-58186 
│                        │      │                  ├ [6]: https://pkg.go.dev/vuln/GO-2025-4012 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2025-58186 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.547Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ╰ [61] ╭ VulnerabilityID : CVE-2026-27139 
│                               ├ VendorIDs        ─ [0]: GO-2026-4602 
│                               ├ PkgID           : stdlib@v1.22.12 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                               │                  ╰ UID : a3059653e617f681 
│                               ├ InstalledVersion: v1.22.12 
│                               ├ FixedVersion    : 1.25.8, 1.26.1 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:18875997fa93ddd7259734364f1b97102dd76adc1b0
│                               │                  │         4c2a7112bc86c63eb8b82 
│                               │                  ╰ DiffID: sha256:941ee634793554b61dd3de982306bd0d06cec871207
│                               │                            ec496429992e7cc10387f 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27139 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:cc53d742d71ce9db10712b0a65da08efebcdd4428f11d5b87d28
│                               │                   004a4f05bedb 
│                               ├ Title           : os: FileInfo can escape from a Root in golang os module 
│                               ├ Description     : On Unix platforms, when listing the contents of a directory
│                               │                    using File.ReadDir or File.Readdir the returned FileInfo
│                               │                   could reference a file outside of the Root in which the
│                               │                   File was opened. The impact of this escape is limited to
│                               │                   reading metadata provided by lstat from arbitrary locations
│                               │                    on the filesystem without permitting reading or writing
│                               │                   files outside the root. 
│                               ├ Severity        : LOW 
│                               ├ CweIDs           ─ [0]: CWE-22 
│                               ├ VendorSeverity   ╭ amazon : 3 
│                               │                  ├ azure  : 1 
│                               │                  ├ bitnami: 1 
│                               │                  ╰ redhat : 1 
│                               ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I
│                               │                  │         │           :N/A:N 
│                               │                  │         ╰ V3Score : 2.5 
│                               │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I
│                               │                            │           :N/A:N 
│                               │                            ╰ V3Score : 2.5 
│                               ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-27139 
│                               │                  ├ [1]: https://go.dev/cl/749480 
│                               │                  ├ [2]: https://go.dev/issue/77827 
│                               │                  ├ [3]: https://groups.google.com/g/golang-announce/c/EdhZqrQ
│                               │                  │      98hk 
│                               │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-27139 
│                               │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-4602 
│                               │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-27139 
│                               ├ PublishedDate   : 2026-03-06T22:16:01.07Z 
│                               ╰ LastModifiedDate: 2026-04-21T14:32:36.317Z 
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
│                      ├ Layer     ╭ Digest   : sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04c2a7112bc86c
│                      │           │            63eb8b82 
│                      │           ├ DiffID   : sha256:941ee634793554b61dd3de982306bd0d06cec871207ec496429992e7
│                      │           │            cc10387f 
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
│                      ├ Layer     ╭ Digest   : sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04c2a7112bc86c
│                      │           │            63eb8b82 
│                      │           ├ DiffID   : sha256:941ee634793554b61dd3de982306bd0d06cec871207ec496429992e7
│                      │           │            cc10387f 
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
                       ├ Layer     ╭ Digest   : sha256:18875997fa93ddd7259734364f1b97102dd76adc1b04c2a7112bc86c
                       │           │            63eb8b82 
                       │           ├ DiffID   : sha256:941ee634793554b61dd3de982306bd0d06cec871207ec496429992e7
                       │           │            cc10387f 
                       │           ╰ CreatedBy: COPY / / # buildkit 
                       ╰ Offset   : 36 
```
