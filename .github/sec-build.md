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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3cc3e56345f6de8d509cdbf501d0e7617545a27eccb4b9eb2b99
│                        │      │                   1ac373851a21 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:5a6a4662c42df4cb7e6d61f0b9f0155dc86f618f7afbb40a9de6
│                        │      │                   e52cf5bd4607 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a9b8058a2ad5834cc6f0bfa9d95a35c39c356da93c29853ae27b
│                        │      │                   4b9041e3615d 
│                        │      ├ Title           : Git is a source code management tool. When cloning from a
│                        │      │                   server (or f ... 
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
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:N/PR:N/UI:A/VC:
│                        │      │                  │         │            H/VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │         ╰ V40Score : 7.5 
│                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │      │                            │           :H/A:H 
│                        │      │                            ╰ V3Score : 8.8 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7409 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/2338289 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/show_bug.cgi?id=2338289 
│                        │      │                  ├ [3] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-52005 
│                        │      │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-7409.html 
│                        │      │                  ├ [5] : https://errata.rockylinux.org/RLSA-2025:7409 
│                        │      │                  ├ [6] : https://github.com/git/git/security/advisories/GHSA-
│                        │      │                  │       7jjc-gg6m-3329 
│                        │      │                  ├ [7] : https://linux.oracle.com/cve/CVE-2024-52005.html 
│                        │      │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2025-8414.html 
│                        │      │                  ├ [9] : https://lore.kernel.org/git/1M9FnZ-1taoNo1wwh-00ESSd
│                        │      │                  │       @mail.gmx.net 
│                        │      │                  ├ [10]: https://lore.kernel.org/git/8570a129-d66a-465a-905e-
│                        │      │                  │       0a077c69c409@gmail.com/T/#t 
│                        │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2024-52005 
│                        │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2024-52005 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:434aec7addc09bc1bb91ca02c0b040e6b0d6ccde9fffbd663337
│                        │      │                   3f52fe27266b 
│                        │      ├ Title           : Git is a source code management tool. When cloning from a
│                        │      │                   server (or f ... 
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
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:N/PR:N/UI:A/VC:
│                        │      │                  │         │            H/VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │         ╰ V40Score : 7.5 
│                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │      │                            │           :H/A:H 
│                        │      │                            ╰ V3Score : 8.8 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7409 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/2338289 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/show_bug.cgi?id=2338289 
│                        │      │                  ├ [3] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-52005 
│                        │      │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-7409.html 
│                        │      │                  ├ [5] : https://errata.rockylinux.org/RLSA-2025:7409 
│                        │      │                  ├ [6] : https://github.com/git/git/security/advisories/GHSA-
│                        │      │                  │       7jjc-gg6m-3329 
│                        │      │                  ├ [7] : https://linux.oracle.com/cve/CVE-2024-52005.html 
│                        │      │                  ├ [8] : https://linux.oracle.com/errata/ELSA-2025-8414.html 
│                        │      │                  ├ [9] : https://lore.kernel.org/git/1M9FnZ-1taoNo1wwh-00ESSd
│                        │      │                  │       @mail.gmx.net 
│                        │      │                  ├ [10]: https://lore.kernel.org/git/8570a129-d66a-465a-905e-
│                        │      │                  │       0a077c69c409@gmail.com/T/#t 
│                        │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2024-52005 
│                        │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2024-52005 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4bc2f4119dcf1e7ea80000d188cf7e971bacd44e140665843763
│                        │      │                   79247894af1a 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:532b73c27e9d2298cb43c494aabfdaee1c9c5bd14834e5ff2fef
│                        │      │                   f84018cadc47 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:cf7d79cfb108045c8cf71753416d6bbbe87d175998098f271b8b
│                        │      │                   b09a49eaf2ee 
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
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 3 
│                        │      │                  ├ photon: 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [1]: https://inbox.sourceware.org/libc-announce/76814edf-c
│                        │      │                  │      f7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [3]: https://packages.fedoraproject.org/pkgs/glibc/glibc-g
│                        │      │                  │      conv-extra/ 
│                        │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0c39054f1a652a7630b595fd91596e387e6ce7f472815dc79a15
│                        │      │                   f5f100710dd6 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ photon: 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/2
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:56e78cc34aae357800aa7e30e29d67b032677d678b7e268420ee
│                        │      │                   4159ed2192ff 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/2
│                        │      │                         3/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                        │      ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-4046 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:28655cc92571bb0217428870ee2145ddb0b2b63d41da970b6543
│                        │      │                   6b3217e1db75 
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
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 3 
│                        │      │                  ├ photon: 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [1]: https://inbox.sourceware.org/libc-announce/76814edf-c
│                        │      │                  │      f7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [3]: https://packages.fedoraproject.org/pkgs/glibc/glibc-g
│                        │      │                  │      conv-extra/ 
│                        │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                        │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                        │      ╰ LastModifiedDate: 2026-04-20T22:16:23.623Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-4437 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4bedfdbde682d544f0b14854a70916069d5c91f60723c3fa1b15
│                        │      │                   3ef832775c1a 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ photon: 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/2
│                        │      │                         3/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                        │      ╰ LastModifiedDate: 2026-04-07T18:41:36.647Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-4438 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6cfb5a91313cb730cadfc28a017262a1f761eefbbd24ae651302
│                        │      │                   f94106606d1d 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/2
│                        │      │                         3/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                        │      ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-4046 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:01780229e2421f4d779e6349cf539dbd99ae7b6fba5e110ecf91
│                        │      │                   e4859f10e2d9 
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
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ azure : 3 
│                        │      │                  ├ photon: 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [1]: https://inbox.sourceware.org/libc-announce/76814edf-c
│                        │      │                  │      f7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [3]: https://packages.fedoraproject.org/pkgs/glibc/glibc-g
│                        │      │                  │      conv-extra/ 
│                        │      │                  ├ [4]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [5]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                        │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                        │      ╰ LastModifiedDate: 2026-04-20T22:16:23.623Z 
│                        ├ [13] ╭ VulnerabilityID : CVE-2026-4437 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8f4df75a8a22647124fb30ffb85a657c3e94064a630d80ded51e
│                        │      │                   fc9ec4a47041 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ photon: 3 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/2
│                        │      │                         3/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                        │      ╰ LastModifiedDate: 2026-04-07T18:41:36.647Z 
│                        ├ [14] ╭ VulnerabilityID : CVE-2026-4438 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9751322856ad8178878b19ac430773612759e1eaba3765a27c0a
│                        │      │                   cb0f6ded40a9 
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
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ photon: 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/03/2
│                        │      │                         3/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                        │      ╰ LastModifiedDate: 2026-04-07T18:40:02.177Z 
│                        ├ [15] ╭ VulnerabilityID : CVE-2025-1352 
│                        │      ├ PkgID           : libelf1t64@0.194-4 
│                        │      ├ PkgName         : libelf1t64 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro=
│                        │      │                  │       ubuntu-26.04 
│                        │      │                  ╰ UID : 855cfee3bc864065 
│                        │      ├ InstalledVersion: 0.194-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:12c959ea5a1fd0a01fc36159c2c35c8d4b2b839e493fcd561a86
│                        │      │                   f76bf228d152 
│                        │      ├ Title           : A vulnerability has been found in GNU elfutils 0.192 and
│                        │      │                   classified as ... 
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
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ─ nvd ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I:H/A:H 
│                        │      │                        ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://nvd.nist.gov/vuln/detail/CVE-2025-1352 
│                        │      │                  ├ [1]: https://sourceware.org/bugzilla/attachment.cgi?id=15923 
│                        │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=32650 
│                        │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=32650
│                        │      │                  │      #c2 
│                        │      │                  ├ [4]: https://vuldb.com/?ctiid.295960 
│                        │      │                  ├ [5]: https://vuldb.com/?id.295960 
│                        │      │                  ├ [6]: https://vuldb.com/?submit.495965 
│                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2025-1352 
│                        │      │                  ╰ [8]: https://www.gnu.org/ 
│                        │      ├ PublishedDate   : 2025-02-16T15:15:09.133Z 
│                        │      ╰ LastModifiedDate: 2025-11-03T20:34:23.89Z 
│                        ├ [16] ╭ VulnerabilityID : CVE-2025-1376 
│                        │      ├ PkgID           : libelf1t64@0.194-4 
│                        │      ├ PkgName         : libelf1t64 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro=
│                        │      │                  │       ubuntu-26.04 
│                        │      │                  ╰ UID : 855cfee3bc864065 
│                        │      ├ InstalledVersion: 0.194-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1376 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0c02dcc87de99a3291d90af904daf442f44d0bbe9ce35c0d2551
│                        │      │                   eadfddf78a03 
│                        │      ├ Title           : A vulnerability classified as problematic was found in GNU
│                        │      │                   elfutils 0. ... 
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
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ─ nvd ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:N/A:H 
│                        │      │                        ╰ V3Score : 4.7 
│                        │      ├ References       ╭ [0]: https://nvd.nist.gov/vuln/detail/CVE-2025-1376 
│                        │      │                  ├ [1]: https://sourceware.org/bugzilla/attachment.cgi?id=15940 
│                        │      │                  ├ [2]: https://sourceware.org/bugzilla/show_bug.cgi?id=32672 
│                        │      │                  ├ [3]: https://sourceware.org/bugzilla/show_bug.cgi?id=32672
│                        │      │                  │      #c3 
│                        │      │                  ├ [4]: https://vuldb.com/?ctiid.295984 
│                        │      │                  ├ [5]: https://vuldb.com/?id.295984 
│                        │      │                  ├ [6]: https://vuldb.com/?submit.497538 
│                        │      │                  ├ [7]: https://www.cve.org/CVERecord?id=CVE-2025-1376 
│                        │      │                  ╰ [8]: https://www.gnu.org/ 
│                        │      ├ PublishedDate   : 2025-02-17T05:15:09.807Z 
│                        │      ╰ LastModifiedDate: 2025-11-04T20:21:18.26Z 
│                        ├ [17] ╭ VulnerabilityID : CVE-2025-66382 
│                        │      ├ PkgID           : libexpat1@2.7.4-1 
│                        │      ├ PkgName         : libexpat1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : c17b9d4b5a8b1286 
│                        │      ├ InstalledVersion: 2.7.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d8fc5c08dd837e742aca5a7ede87e96ab57095866bca9ee849b8
│                        │      │                   c5001032f4ff 
│                        │      ├ Title           : In libexpat through 2.7.3, a crafted file with an
│                        │      │                   approximate size of  ... 
│                        │      ├ Description     : In libexpat through 2.7.3, a crafted file with an
│                        │      │                   approximate size of 2 MiB can lead to dozens of seconds of
│                        │      │                   processing time. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-407 
│                        │      ├ VendorSeverity   ╭ nvd   : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ nvd ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:N/A:H 
│                        │      │                        ╰ V3Score : 5.5 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/12/02/1 
│                        │      │                  ├ [1]: https://cert-portal.siemens.com/productcert/html/ssa-
│                        │      │                  │      082556.html 
│                        │      │                  ├ [2]: https://github.com/libexpat/libexpat/issues/1076 
│                        │      │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2025-66382 
│                        │      ├ PublishedDate   : 2025-11-28T07:15:57.9Z 
│                        │      ╰ LastModifiedDate: 2026-05-12T13:17:23.933Z 
│                        ├ [18] ╭ VulnerabilityID : CVE-2026-41990 
│                        │      ├ PkgID           : libgcrypt20@1.12.0-2 
│                        │      ├ PkgName         : libgcrypt20 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2?arch=amd64&distr
│                        │      │                  │       o=ubuntu-26.04 
│                        │      │                  ╰ UID : bb41032cd077800a 
│                        │      ├ InstalledVersion: 1.12.0-2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41990 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:623e2069ba7cb7254bb2aaa7fc0b2e92d6b3d4689d5b67f6978b
│                        │      │                   4ac8886f6d91 
│                        │      ├ Title           : Libgcrypt: Libgcrypt: Denial of Service or data integrity
│                        │      │                   issues from missing bounds check during Dilithium
│                        │      │                   signing. 
│                        │      ├ Description     : Libgcrypt before 1.12.2 mishandles Dilithium signing.
│                        │      │                   Writes to a static array lack a bounds check but do not use
│                        │      │                    attacker-controlled data. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-787 
│                        │      ├ VendorSeverity   ╭ julia : 2 
│                        │      │                  ├ redhat: 1 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                  │        │           L/A:L 
│                        │      │                  │        ╰ V3Score : 4 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 3.3 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-41990 
│                        │      │                  ├ [1]: https://dev.gnupg.org/T8208 
│                        │      │                  ├ [2]: https://github.com/advisories/GHSA-78pv-qq8x-94px 
│                        │      │                  ├ [3]: https://lists.gnupg.org/pipermail/gnupg-announce/2026
│                        │      │                  │      q2/000503.html 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-41990 
│                        │      │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2026-41990 
│                        │      │                  ╰ [6]: https://www.openwall.com/lists/oss-security/2026/04/2
│                        │      │                         1/1 
│                        │      ├ PublishedDate   : 2026-04-23T05:16:05.897Z 
│                        │      ╰ LastModifiedDate: 2026-04-27T18:33:27.05Z 
│                        ├ [19] ╭ VulnerabilityID : CVE-2024-2236 
│                        │      ├ PkgID           : libgcrypt20@1.12.0-2 
│                        │      ├ PkgName         : libgcrypt20 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2?arch=amd64&distr
│                        │      │                  │       o=ubuntu-26.04 
│                        │      │                  ╰ UID : bb41032cd077800a 
│                        │      ├ InstalledVersion: 1.12.0-2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d69901aabf95425513c4ba6b765d45bf13c48d10b66ec314c5e9
│                        │      │                   e02f8aa89058 
│                        │      ├ Title           : A timing-based side-channel flaw was found in libgcrypt's
│                        │      │                   RSA implemen ... 
│                        │      ├ Description     : A timing-based side-channel flaw was found in libgcrypt's
│                        │      │                   RSA implementation. This issue may allow a remote attacker
│                        │      │                   to initiate a Bleichenbacher-style attack, which can lead
│                        │      │                   to the decryption of RSA ciphertexts. 
│                        │      ├ Severity        : LOW 
│                        │      ├ CweIDs           ─ [0]: CWE-385 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 1 
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
│                        │      │                  ╰ [16]: https://www.cve.org/CVERecord?id=CVE-2024-2236 
│                        │      ├ PublishedDate   : 2024-03-06T22:15:57.977Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [20] ╭ VulnerabilityID : CVE-2026-22185 
│                        │      ├ PkgID           : liblmdb0@0.9.31-1build2 
│                        │      ├ PkgName         : liblmdb0 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/liblmdb0@0.9.31-1build2?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04 
│                        │      │                  ╰ UID : c6bcbb633021c366 
│                        │      ├ InstalledVersion: 0.9.31-1build2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-22185 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:38d6f858ddba5fc7441e5e8227dbda5008422829476d2bb3cdaf
│                        │      │                   7dae1aabe118 
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
│                        ├ [21] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libmount1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ee0638a59a092c7e 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:48973d2bdfca25d6fbc8e247e976f738ee46fee0502d17c891a2
│                        │      │                   bdad6c4c19e7 
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
│                        ├ [22] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libmount1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ee0638a59a092c7e 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:26125e83c282eaac5af511cf164d76a4da1a5876610de9d9f4cc
│                        │      │                   af4f053803b8 
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
│                        ├ [23] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14@3.14.4-1?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : 698bf98ba5451f67 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c80b041b95bd32f67769e6fab6ef039af7de1d0ca3f15c4587fa
│                        │      │                   aa9e21a3e58d 
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
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                        │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                        │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                        │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-13837 
│                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-15282 
│                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-59375 
│                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-6075 
│                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-0672 
│                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-1502 
│                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-2297 
│                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-3644 
│                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4224 
│                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4786 
│                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-6100 
│                        │      │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                        │      │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:10950 
│                        │      │                  ├ [38]: https://github.com/python/cpython/commit/482d6f8bdba
│                        │      │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                        │      │                  ├ [39]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                        │      │                  │       4bd69b1565647c18659c6a789ccd9 
│                        │      │                  ├ [40]: https://github.com/python/cpython/commit/876858c9f65
│                        │      │                  │       d9ab656c7fa639f268ce7856d89dd 
│                        │      │                  ├ [41]: https://github.com/python/cpython/commit/a51b1b512de
│                        │      │                  │       1d56b3714b65628a2eae2b07e535e 
│                        │      │                  ├ [42]: https://github.com/python/cpython/commit/e58e9802b9b
│                        │      │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                        │      │                  ├ [43]: https://github.com/python/cpython/issues/145506 
│                        │      │                  ├ [44]: https://github.com/python/cpython/pull/145507 
│                        │      │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                        │      │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                        │      │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                        │      │                  ╰ [48]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                        │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                        │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                        ├ [24] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14-minimal 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                        │      │                  │       md64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : edd92b8f9e06659 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:851be1d96e87ceabe9e9a96a0b7e3206ebb4572e84a946fd9271
│                        │      │                   2f221c311ed5 
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
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                        │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                        │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                        │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-13837 
│                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-15282 
│                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-59375 
│                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-6075 
│                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-0672 
│                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-1502 
│                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-2297 
│                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-3644 
│                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4224 
│                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4786 
│                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-6100 
│                        │      │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                        │      │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:10950 
│                        │      │                  ├ [38]: https://github.com/python/cpython/commit/482d6f8bdba
│                        │      │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                        │      │                  ├ [39]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                        │      │                  │       4bd69b1565647c18659c6a789ccd9 
│                        │      │                  ├ [40]: https://github.com/python/cpython/commit/876858c9f65
│                        │      │                  │       d9ab656c7fa639f268ce7856d89dd 
│                        │      │                  ├ [41]: https://github.com/python/cpython/commit/a51b1b512de
│                        │      │                  │       1d56b3714b65628a2eae2b07e535e 
│                        │      │                  ├ [42]: https://github.com/python/cpython/commit/e58e9802b9b
│                        │      │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                        │      │                  ├ [43]: https://github.com/python/cpython/issues/145506 
│                        │      │                  ├ [44]: https://github.com/python/cpython/pull/145507 
│                        │      │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                        │      │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                        │      │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                        │      │                  ╰ [48]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                        │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                        │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                        ├ [25] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14-stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : d9cfb9637e1a0676 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a5883781c053c48526117fa9ee252092f573235442df92cd9f0d
│                        │      │                   049555a78b85 
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
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                        │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                        │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                        │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-13837 
│                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-15282 
│                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-59375 
│                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-6075 
│                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-0672 
│                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-1502 
│                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-2297 
│                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-3644 
│                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4224 
│                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4786 
│                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-6100 
│                        │      │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                        │      │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:10950 
│                        │      │                  ├ [38]: https://github.com/python/cpython/commit/482d6f8bdba
│                        │      │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                        │      │                  ├ [39]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                        │      │                  │       4bd69b1565647c18659c6a789ccd9 
│                        │      │                  ├ [40]: https://github.com/python/cpython/commit/876858c9f65
│                        │      │                  │       d9ab656c7fa639f268ce7856d89dd 
│                        │      │                  ├ [41]: https://github.com/python/cpython/commit/a51b1b512de
│                        │      │                  │       1d56b3714b65628a2eae2b07e535e 
│                        │      │                  ├ [42]: https://github.com/python/cpython/commit/e58e9802b9b
│                        │      │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                        │      │                  ├ [43]: https://github.com/python/cpython/issues/145506 
│                        │      │                  ├ [44]: https://github.com/python/cpython/pull/145507 
│                        │      │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                        │      │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                        │      │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                        │      │                  ╰ [48]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                        │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                        │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                        ├ [26] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ff5e7b67d2385233 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c16a6f57bc1443ea25180286655689ba1a659430a395236b2069
│                        │      │                   a6c547b322b7 
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
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ff5e7b67d2385233 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0097c65f9349fbeb79128c99e51cf394fdfd48bf7c58673648ab
│                        │      │                   94aa8cbc5e92 
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
│                        ├ [28] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : libsubid5@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : libsubid5 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsubid5@4.17.4-2ubuntu3?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 2e6a9fef7087b138 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a988e89b4d66f09a649adc1344e822ff2bf90c40fc7eea28bdfd
│                        │      │                   b8568a18ebac 
│                        │      ├ Title           : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │      │                   default /et ... 
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
│                        │      │                  ├ rocky      : 1 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/2334165 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │      │                  ├ [3] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-56433 
│                        │      │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │      │                  ├ [5] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │      │                  ├ [6] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                        │      │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                        │      │                  │       -L241 
│                        │      │                  ├ [7] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │      │                  ├ [8] : https://github.com/shadow-maint/shadow/releases/tag/
│                        │      │                  │       4.4 
│                        │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                        │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [29] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 41d4afb2fde363cf 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ce048aa3a9213f944fb738755aff851e9ece6bf4392b5ea72057
│                        │      │                   1b4b6d5346ec 
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
│                        ├ [30] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 41d4afb2fde363cf 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:11aaf7c80c704fa44e1acfbb525ecbc7b651f1b79d6754f9dae9
│                        │      │                   4416ffafa569 
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
│                        ├ [31] ╭ VulnerabilityID : CVE-2026-1757 
│                        │      ├ PkgID           : libxml2-16@2.15.2+dfsg-0.1 
│                        │      ├ PkgName         : libxml2-16 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2-16@2.15.2%2Bdfsg-0.1?arch=amd
│                        │      │                  │       64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 9bfe0fc72832625d 
│                        │      ├ InstalledVersion: 2.15.2+dfsg-0.1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-1757 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:23751a446fbaacb73cabbccd8911fd7d7331cf6b7209d9c60af2
│                        │      │                   4af05bd323be 
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
│                        ├ [32] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e1bfbadc9113c00a 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:fb4c733f7084fefc65fc0728e2d9870ea96f4aebc6471258893a
│                        │      │                   c61a648b2544 
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
│                        ├ [33] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e1bfbadc9113c00a 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c9907127a7fb6bf2f2650b87e7d027b56dd45d161e7c9fd4771f
│                        │      │                   1bad42d8a6c6 
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
│                        ├ [34] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : login.defs 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&d
│                        │      │                  │       istro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : eaf648d5e4e975f7 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e9d67453b0a18ab8f1adde35a9109467131f3a31ebead88eae7a
│                        │      │                   5cfeeba5ad88 
│                        │      ├ Title           : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │      │                   default /et ... 
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
│                        │      │                  ├ rocky      : 1 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/2334165 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │      │                  ├ [3] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-56433 
│                        │      │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │      │                  ├ [5] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │      │                  ├ [6] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                        │      │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                        │      │                  │       -L241 
│                        │      │                  ├ [7] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │      │                  ├ [8] : https://github.com/shadow-maint/shadow/releases/tag/
│                        │      │                  │       4.4 
│                        │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                        │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [35] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:794009c1dd5306b9d5bea03cbb8af33956b74cb42dc9be3ab090
│                        │      │                   54d1f191d208 
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
│                        ├ [36] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c00fa8f1acda42b3b40e9e767647201b7a6912aa49076439befe
│                        │      │                   4f69bccd7dcc 
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
│                        ├ [37] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : passwd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e6ebfac85406f0d5 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f5eed29a22899d88720375b5fe6ea7b440b5fc87b665ac4edb67
│                        │      │                   4409386e2099 
│                        │      ├ Title           : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │      │                   default /et ... 
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
│                        │      │                  ├ rocky      : 1 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/2334165 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │      │                  ├ [3] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-56433 
│                        │      │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │      │                  ├ [5] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │      │                  ├ [6] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                        │      │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                        │      │                  │       -L241 
│                        │      │                  ├ [7] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │      │                  ├ [8] : https://github.com/shadow-maint/shadow/releases/tag/
│                        │      │                  │       4.4 
│                        │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                        │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [38] ╭ VulnerabilityID : CVE-2018-6952 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : d95d6071755544be 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2018-6952 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a91be444b6f69fef2add6744589b308b9899782f95a60da85aec
│                        │      │                   092b7c702c41 
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
│                        ├ [39] ╭ VulnerabilityID : CVE-2021-45261 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : d95d6071755544be 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-45261 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b973d08195f9ce8f085e3c01cca75fa5c154ad7462d886d5d5e1
│                        │      │                   0210c9a05263 
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
│                        ├ [40] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : python3.14@3.14.4-1 
│                        │      ├ PkgName         : python3.14 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : 5c38e5558a798bb7 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8f65b05cc41373cafe8b109799ed6f3564559118b8ba4d984bf8
│                        │      │                   ee3ba4faf8be 
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
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                        │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                        │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                        │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-13837 
│                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-15282 
│                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-59375 
│                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-6075 
│                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-0672 
│                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-1502 
│                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-2297 
│                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-3644 
│                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4224 
│                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4786 
│                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-6100 
│                        │      │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                        │      │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:10950 
│                        │      │                  ├ [38]: https://github.com/python/cpython/commit/482d6f8bdba
│                        │      │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                        │      │                  ├ [39]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                        │      │                  │       4bd69b1565647c18659c6a789ccd9 
│                        │      │                  ├ [40]: https://github.com/python/cpython/commit/876858c9f65
│                        │      │                  │       d9ab656c7fa639f268ce7856d89dd 
│                        │      │                  ├ [41]: https://github.com/python/cpython/commit/a51b1b512de
│                        │      │                  │       1d56b3714b65628a2eae2b07e535e 
│                        │      │                  ├ [42]: https://github.com/python/cpython/commit/e58e9802b9b
│                        │      │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                        │      │                  ├ [43]: https://github.com/python/cpython/issues/145506 
│                        │      │                  ├ [44]: https://github.com/python/cpython/pull/145507 
│                        │      │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                        │      │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                        │      │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                        │      │                  ╰ [48]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                        │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                        │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                        ├ [41] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : python3.14-minimal@3.14.4-1 
│                        │      ├ PkgName         : python3.14-minimal 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                        │      │                  │       4&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : da8e2190347b7c6 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:aef1ffef240335365cb8130fe77df113a4fa9531c0459dd85118
│                        │      │                   1abe720bf6e4 
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
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:10950 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-2297 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2395108 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2408891 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2418084 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/2431366 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/2431374 
│                        │      │                  ├ [8] : https://bugzilla.redhat.com/2444691 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/2448168 
│                        │      │                  ├ [10]: https://bugzilla.redhat.com/2448181 
│                        │      │                  ├ [11]: https://bugzilla.redhat.com/2457409 
│                        │      │                  ├ [12]: https://bugzilla.redhat.com/2457932 
│                        │      │                  ├ [13]: https://bugzilla.redhat.com/2458049 
│                        │      │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2395108 
│                        │      │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2408891 
│                        │      │                  ├ [16]: https://bugzilla.redhat.com/show_bug.cgi?id=2418084 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/show_bug.cgi?id=2431366 
│                        │      │                  ├ [18]: https://bugzilla.redhat.com/show_bug.cgi?id=2431374 
│                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2444691 
│                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2448168 
│                        │      │                  ├ [21]: https://bugzilla.redhat.com/show_bug.cgi?id=2448181 
│                        │      │                  ├ [22]: https://bugzilla.redhat.com/show_bug.cgi?id=2457409 
│                        │      │                  ├ [23]: https://bugzilla.redhat.com/show_bug.cgi?id=2457932 
│                        │      │                  ├ [24]: https://bugzilla.redhat.com/show_bug.cgi?id=2458049 
│                        │      │                  ├ [25]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-13837 
│                        │      │                  ├ [26]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-15282 
│                        │      │                  ├ [27]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-59375 
│                        │      │                  ├ [28]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-6075 
│                        │      │                  ├ [29]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-0672 
│                        │      │                  ├ [30]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-1502 
│                        │      │                  ├ [31]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-2297 
│                        │      │                  ├ [32]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-3644 
│                        │      │                  ├ [33]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4224 
│                        │      │                  ├ [34]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4786 
│                        │      │                  ├ [35]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-6100 
│                        │      │                  ├ [36]: https://errata.almalinux.org/8/ALSA-2026-10950.html 
│                        │      │                  ├ [37]: https://errata.rockylinux.org/RLSA-2026:10950 
│                        │      │                  ├ [38]: https://github.com/python/cpython/commit/482d6f8bdba
│                        │      │                  │       9da3725d272e8bb4a2d25fb6a603e 
│                        │      │                  ├ [39]: https://github.com/python/cpython/commit/69ddd9bb2cc
│                        │      │                  │       4bd69b1565647c18659c6a789ccd9 
│                        │      │                  ├ [40]: https://github.com/python/cpython/commit/876858c9f65
│                        │      │                  │       d9ab656c7fa639f268ce7856d89dd 
│                        │      │                  ├ [41]: https://github.com/python/cpython/commit/a51b1b512de
│                        │      │                  │       1d56b3714b65628a2eae2b07e535e 
│                        │      │                  ├ [42]: https://github.com/python/cpython/commit/e58e9802b9b
│                        │      │                  │       ec5cdbf48fc9bf1da5f4fda482e86 
│                        │      │                  ├ [43]: https://github.com/python/cpython/issues/145506 
│                        │      │                  ├ [44]: https://github.com/python/cpython/pull/145507 
│                        │      │                  ├ [45]: https://linux.oracle.com/cve/CVE-2026-2297.html 
│                        │      │                  ├ [46]: https://linux.oracle.com/errata/ELSA-2026-10950.html 
│                        │      │                  ├ [47]: https://nvd.nist.gov/vuln/detail/CVE-2026-2297 
│                        │      │                  ╰ [48]: https://www.cve.org/CVERecord?id=CVE-2026-2297 
│                        │      ├ PublishedDate   : 2026-03-04T23:16:10.757Z 
│                        │      ╰ LastModifiedDate: 2026-05-01T16:16:30.11Z 
│                        ├ [42] ╭ VulnerabilityID : CVE-2026-35341 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4b508b8924e9a43a7273258546b65b4a1761f56c1ed58bfb48ca
│                        │      │                   1ba68137ee92 
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
│                        ├ [43] ╭ VulnerabilityID : CVE-2026-35344 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ccdbb24018da30a5c5f6701935aa2c4cf65c11cb6288fdc6591e
│                        │      │                   6edac9e219e4 
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
│                        ├ [44] ╭ VulnerabilityID : CVE-2026-35345 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c9834dfbd9b9674d9c64e00be82af067a798528d3276b74c043a
│                        │      │                   8b03505e5785 
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
│                        ├ [45] ╭ VulnerabilityID : CVE-2026-35348 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b1352d0471e957e0a8fd1f72ddceb2b92027e517938180c29469
│                        │      │                   d7df9e2b2fa9 
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
│                        ├ [46] ╭ VulnerabilityID : CVE-2026-35350 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:978913e3d67ed4b1b13c55e40164ced8d71f494a9cbeffae0dba
│                        │      │                   0c088aa2edb8 
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
│                        ├ [47] ╭ VulnerabilityID : CVE-2026-35351 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:196653c1c4871a6f050c38168f6f763581f685879d7c0c00d18d
│                        │      │                   387396dfc1bc 
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
│                        ├ [48] ╭ VulnerabilityID : CVE-2026-35352 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:13e44fe551821c49c32360247388e82a347cf9a9d6ab92a7a04d
│                        │      │                   41bfdefadf55 
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
│                        ├ [49] ╭ VulnerabilityID : CVE-2026-35354 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e796e6a4eea13fe577cbe62ed60db6d00db85e74ab2d1eb524fb
│                        │      │                   d20f6cfff5f3 
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
│                        ├ [50] ╭ VulnerabilityID : CVE-2026-35357 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d3b7bb11dec618aa2e99fd80a85c9bdc797621e94f7696e57313
│                        │      │                   2d6faa7b4a44 
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
│                        ├ [51] ╭ VulnerabilityID : CVE-2026-35359 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d27347af1949e963d15ad6b91fb58f0bca7b78f7ebb871e9022a
│                        │      │                   3d6c7f70509a 
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
│                        ├ [52] ╭ VulnerabilityID : CVE-2026-35360 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:eddb4dbeda84020d0044c091c22f359d106fabe137247e77399c
│                        │      │                   1a57298d13ed 
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
│                        ├ [53] ╭ VulnerabilityID : CVE-2026-35363 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:98bc6065f1b6f6a83880c8150e9c1ba069925230cc5d9a597051
│                        │      │                   4196ebe71a02 
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
│                        ├ [54] ╭ VulnerabilityID : CVE-2026-35364 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9126b3b4d718a1146e6890119bc9d5cfb4438a84e3c88f4be595
│                        │      │                   95288cdfc0d8 
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
│                        ├ [55] ╭ VulnerabilityID : CVE-2026-35367 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:fc2c486d234f806cc28f665b2ed96c5749a856add988c4f3bbda
│                        │      │                   ad33ec60009c 
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
│                        ├ [56] ╭ VulnerabilityID : CVE-2026-35368 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8d0939b7ba0e58cf5396f8178f7aee84ba97d3a72a72999de03a
│                        │      │                   9ef548f28090 
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
│                        ├ [57] ╭ VulnerabilityID : CVE-2026-35370 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:161a220e6ac5c8bf0f86830dfdfe7e4f5f996b14f8cda87f8df4
│                        │      │                   8a18774fa2b6 
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
│                        ├ [58] ╭ VulnerabilityID : CVE-2026-35371 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e4a16f4c0fe17ce03e233b7c6fc57fc68c21dd6d7a11d5d0abdf
│                        │      │                   a519a95ea288 
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
│                        ├ [59] ╭ VulnerabilityID : CVE-2026-35373 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:475242398f77e62bf148bc7b62d84af5d9fe5e65ac52d6e6ba72
│                        │      │                   bb27442213ab 
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
│                        ├ [60] ╭ VulnerabilityID : CVE-2026-35374 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:201da0e51db74af78c100db7b7141a1230e6aba6e03df11916a9
│                        │      │                   7588fe13543f 
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
│                        ├ [61] ╭ VulnerabilityID : CVE-2026-35377 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:69eb3b0f16cb2a266d80fbc6434049830ac6f60a02c092015b48
│                        │      │                   2f983924e470 
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
│                        ├ [62] ╭ VulnerabilityID : CVE-2025-45582 
│                        │      ├ PkgID           : tar@1.35+dfsg-4 
│                        │      ├ PkgName         : tar 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : df8f3d12dd71b054 
│                        │      ├ InstalledVersion: 1.35+dfsg-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-45582 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:47e51424bfe106de1307ed4cc53ae241479b8c2c4c85e0e664b7
│                        │      │                   09217b9a55b6 
│                        │      ├ Title           : ELSA-2026-0067:  tar security update (MODERATE) 
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
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/11/0
│                        │      │                  │       1/6 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:0067 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2379592 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2379592 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-45582 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2026-0067.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:0067 
│                        │      │                  ├ [7] : https://github.com/i900008/vulndb/blob/main/Gnu_tar_
│                        │      │                  │       vuln.md 
│                        │      │                  ├ [8] : https://linux.oracle.com/cve/CVE-2025-45582.html 
│                        │      │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2026-0067.html 
│                        │      │                  ├ [10]: https://lists.gnu.org/archive/html/bug-tar/2025-08/m
│                        │      │                  │       sg00012.html 
│                        │      │                  ├ [11]: https://www.cve.org/CVERecord?id=CVE-2025-45582 
│                        │      │                  ├ [12]: https://www.gnu.org/software/tar/ 
│                        │      │                  ├ [13]: https://www.gnu.org/software/tar/manual/html_node/In
│                        │      │                  │       tegrity.html 
│                        │      │                  ╰ [14]: https://www.gnu.org/software/tar/manual/html_node/Se
│                        │      │                          curity-rules-of-thumb.html 
│                        │      ├ PublishedDate   : 2025-07-11T17:15:37.183Z 
│                        │      ╰ LastModifiedDate: 2025-11-02T01:15:32.307Z 
│                        ├ [63] ╭ VulnerabilityID : CVE-2026-5704 
│                        │      ├ PkgID           : tar@1.35+dfsg-4 
│                        │      ├ PkgName         : tar 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : df8f3d12dd71b054 
│                        │      ├ InstalledVersion: 1.35+dfsg-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5704 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6220474b7fbbe5d498e130145c858759809fb8beade23a8d1fba
│                        │      │                   68079493cd96 
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
│                        ├ [64] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : uidmap@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : uidmap 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/uidmap@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : d7cc4b1ad13c4c8d 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:34f51d98eeb29c4da00cd13e585a0d20c98390fb5431a968a565
│                        │      │                   3fc05c9730bb 
│                        │      ├ Title           : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │      │                   default /et ... 
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
│                        │      │                  ├ rocky      : 1 
│                        │      │                  ╰ ubuntu     : 1 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/2334165 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │      │                  ├ [3] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       024-56433 
│                        │      │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │      │                  ├ [5] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │      │                  ├ [6] : https://github.com/shadow-maint/shadow/blob/e2512d57
│                        │      │                  │       41d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L238
│                        │      │                  │       -L241 
│                        │      │                  ├ [7] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │      │                  ├ [8] : https://github.com/shadow-maint/shadow/releases/tag/
│                        │      │                  │       4.4 
│                        │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-20559-0.html 
│                        │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │      │                  ╰ [12]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │      ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [65] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d24b3152e35252751a91d61745543abed5724d56382a9b5e507a
│                        │      │                   ca036e29e5af 
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
│                        ├ [66] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:5b38ee7472585a7487ef49dce2a4623cdf075450c4535b898bc0
│                        │      │                   6aaf6db8604d 
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
│                        ├ [67] ╭ VulnerabilityID : CVE-2026-42307 
│                        │      ├ PkgID           : vim@2:9.1.2141-1ubuntu4.1 
│                        │      ├ PkgName         : vim 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.2141-1ubuntu4.1?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : b08a41fd0107ffba 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                        │      ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42307 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:40e9895c4a3faccedcba801c110592070a0f096368b6091717dc
│                        │      │                   8b0074f670de 
│                        │      ├ Title           : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2. ... 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2.0383, an OS command injection vulnerability
│                        │      │                   exists in the netrw standard plugin bundled with Vim. By
│                        │      │                   inducing a user to open a crafted URL (e.g., using the
│                        │      │                   sftp:// or file:// protocol handlers), an attacker can
│                        │      │                   execute arbitrary shell commands with the privileges of the
│                        │      │                    Vim process. This issue has been patched in version
│                        │      │                   9.2.0383. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-78 
│                        │      ├ VendorSeverity   ─ ubuntu: 2 
│                        │      ├ References       ╭ [0]: https://github.com/vim/vim/commit/405e2fb6d54d5653523
│                        │      │                  │      809e2853d99d1c000a5fc 
│                        │      │                  ├ [1]: https://github.com/vim/vim/releases/tag/v9.2.0383 
│                        │      │                  ├ [2]: https://github.com/vim/vim/security/advisories/GHSA-8
│                        │      │                  │      5ch-p2qr-m5gx 
│                        │      │                  ├ [3]: https://ubuntu.com/security/notices/USN-8304-1 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-42307 
│                        │      ├ PublishedDate   : 2026-05-08T23:16:36.777Z 
│                        │      ╰ LastModifiedDate: 2026-05-14T13:55:49.753Z 
│                        ├ [68] ╭ VulnerabilityID : CVE-2026-44656 
│                        │      ├ PkgID           : vim@2:9.1.2141-1ubuntu4.1 
│                        │      ├ PkgName         : vim 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.2141-1ubuntu4.1?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : b08a41fd0107ffba 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                        │      ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44656 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0548448d8b1c984cc42508e6eec70e2714997b7ede9be5b975c1
│                        │      │                   001a601c9201 
│                        │      ├ Title           : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2. ... 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2.0435, an OS command injection vulnerability
│                        │      │                   exists in Vim's :find command-line completion. When the
│                        │      │                   path option contains backtick-enclosed shell commands,
│                        │      │                   those commands are executed during file name completion.
│                        │      │                   Because the path option lacks the P_SECURE flag, it can be
│                        │      │                   set from a modeline, allowing an attacker who controls the
│                        │      │                   contents of a file to execute arbitrary shell commands when
│                        │      │                    the user opens that file in Vim and triggers :find
│                        │      │                   completion. This issue has been patched in version
│                        │      │                   9.2.0435. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-78 
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ nvd ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:L/A:L 
│                        │      │                        ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://github.com/vim/vim/commit/190cb3c2b9c769a3972
│                        │      │                  │      bcfd991a7b5b6cb771ef0 
│                        │      │                  ├ [1]: https://github.com/vim/vim/releases/tag/v9.2.0435 
│                        │      │                  ├ [2]: https://github.com/vim/vim/security/advisories/GHSA-h
│                        │      │                  │      wg5-3cxw-wvvg 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-44656 
│                        │      │                  ├ [4]: https://ubuntu.com/security/notices/USN-8304-1 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-44656 
│                        │      ├ PublishedDate   : 2026-05-08T23:16:39.783Z 
│                        │      ╰ LastModifiedDate: 2026-05-14T13:59:30.12Z 
│                        ├ [69] ╭ VulnerabilityID : CVE-2026-45130 
│                        │      ├ PkgID           : vim@2:9.1.2141-1ubuntu4.1 
│                        │      ├ PkgName         : vim 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.2141-1ubuntu4.1?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : b08a41fd0107ffba 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                        │      ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45130 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9ad54f27a101d59b62479493d1f778bd7cb3dbfea3f45097bd97
│                        │      │                   7edf114f59fd 
│                        │      ├ Title           : vim: Vim: Heap buffer overflow allows arbitrary code
│                        │      │                   execution or denial of service 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2.0450, a heap buffer overflow exists in
│                        │      │                   read_compound() in src/spellfile.c when loading a crafted
│                        │      │                   spell file (.spl) with UTF-8 encoding active. An
│                        │      │                   attacker-controlled length field in the spell file's
│                        │      │                   compound section overflows a 32-bit signed integer
│                        │      │                   multiplication, causing a small buffer to be allocated for
│                        │      │                   a write loop that runs many iterations, overflowing the
│                        │      │                   heap. Because the 'spelllang' option can be set from a
│                        │      │                   modeline, a text file modeline can trigger spell file
│                        │      │                   loading if a malicious .spl file has been planted on the
│                        │      │                   runtimepath. This issue has been patched in version
│                        │      │                   9.2.0450. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-122 
│                        │      │                  ╰ [1]: CWE-190 
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 5.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:
│                        │      │                           │           L/A:H 
│                        │      │                           ╰ V3Score : 6.6 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/14/3 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-45130 
│                        │      │                  ├ [2]: https://github.com/vim/vim/commit/92993329178cb1f72d7
│                        │      │                  │      00fff45ca86e1c2d369f8 
│                        │      │                  ├ [3]: https://github.com/vim/vim/releases/tag/v9.2.0450 
│                        │      │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-q
│                        │      │                  │      4jv-r9gj-6cwv 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-45130 
│                        │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-8304-1 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-45130 
│                        │      ├ PublishedDate   : 2026-05-08T23:16:40.053Z 
│                        │      ╰ LastModifiedDate: 2026-05-18T14:22:41.733Z 
│                        ├ [70] ╭ VulnerabilityID : CVE-2026-42307 
│                        │      ├ PkgID           : vim-common@2:9.1.2141-1ubuntu4.1 
│                        │      ├ PkgName         : vim-common 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.2141-1ubuntu4.1?arch=a
│                        │      │                  │       ll&distro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : 8225b4df818239e7 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                        │      ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42307 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1630282e3fedc16d317e60aae68234c9cd8a0f41e1a19c14bb57
│                        │      │                   8ec9125a1c09 
│                        │      ├ Title           : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2. ... 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2.0383, an OS command injection vulnerability
│                        │      │                   exists in the netrw standard plugin bundled with Vim. By
│                        │      │                   inducing a user to open a crafted URL (e.g., using the
│                        │      │                   sftp:// or file:// protocol handlers), an attacker can
│                        │      │                   execute arbitrary shell commands with the privileges of the
│                        │      │                    Vim process. This issue has been patched in version
│                        │      │                   9.2.0383. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-78 
│                        │      ├ VendorSeverity   ─ ubuntu: 2 
│                        │      ├ References       ╭ [0]: https://github.com/vim/vim/commit/405e2fb6d54d5653523
│                        │      │                  │      809e2853d99d1c000a5fc 
│                        │      │                  ├ [1]: https://github.com/vim/vim/releases/tag/v9.2.0383 
│                        │      │                  ├ [2]: https://github.com/vim/vim/security/advisories/GHSA-8
│                        │      │                  │      5ch-p2qr-m5gx 
│                        │      │                  ├ [3]: https://ubuntu.com/security/notices/USN-8304-1 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-42307 
│                        │      ├ PublishedDate   : 2026-05-08T23:16:36.777Z 
│                        │      ╰ LastModifiedDate: 2026-05-14T13:55:49.753Z 
│                        ├ [71] ╭ VulnerabilityID : CVE-2026-44656 
│                        │      ├ PkgID           : vim-common@2:9.1.2141-1ubuntu4.1 
│                        │      ├ PkgName         : vim-common 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.2141-1ubuntu4.1?arch=a
│                        │      │                  │       ll&distro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : 8225b4df818239e7 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                        │      ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44656 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b75e95d331ee9e319ad19204fd4732251a149159550633993dde
│                        │      │                   46fde5b8a3da 
│                        │      ├ Title           : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2. ... 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2.0435, an OS command injection vulnerability
│                        │      │                   exists in Vim's :find command-line completion. When the
│                        │      │                   path option contains backtick-enclosed shell commands,
│                        │      │                   those commands are executed during file name completion.
│                        │      │                   Because the path option lacks the P_SECURE flag, it can be
│                        │      │                   set from a modeline, allowing an attacker who controls the
│                        │      │                   contents of a file to execute arbitrary shell commands when
│                        │      │                    the user opens that file in Vim and triggers :find
│                        │      │                   completion. This issue has been patched in version
│                        │      │                   9.2.0435. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-78 
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ nvd ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:L/A:L 
│                        │      │                        ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://github.com/vim/vim/commit/190cb3c2b9c769a3972
│                        │      │                  │      bcfd991a7b5b6cb771ef0 
│                        │      │                  ├ [1]: https://github.com/vim/vim/releases/tag/v9.2.0435 
│                        │      │                  ├ [2]: https://github.com/vim/vim/security/advisories/GHSA-h
│                        │      │                  │      wg5-3cxw-wvvg 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-44656 
│                        │      │                  ├ [4]: https://ubuntu.com/security/notices/USN-8304-1 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-44656 
│                        │      ├ PublishedDate   : 2026-05-08T23:16:39.783Z 
│                        │      ╰ LastModifiedDate: 2026-05-14T13:59:30.12Z 
│                        ├ [72] ╭ VulnerabilityID : CVE-2026-45130 
│                        │      ├ PkgID           : vim-common@2:9.1.2141-1ubuntu4.1 
│                        │      ├ PkgName         : vim-common 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.2141-1ubuntu4.1?arch=a
│                        │      │                  │       ll&distro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : 8225b4df818239e7 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                        │      ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45130 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:66826176ab88c29a81f0a17fb033cdd68623fad125b8500b1481
│                        │      │                   9b98b039b766 
│                        │      ├ Title           : vim: Vim: Heap buffer overflow allows arbitrary code
│                        │      │                   execution or denial of service 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2.0450, a heap buffer overflow exists in
│                        │      │                   read_compound() in src/spellfile.c when loading a crafted
│                        │      │                   spell file (.spl) with UTF-8 encoding active. An
│                        │      │                   attacker-controlled length field in the spell file's
│                        │      │                   compound section overflows a 32-bit signed integer
│                        │      │                   multiplication, causing a small buffer to be allocated for
│                        │      │                   a write loop that runs many iterations, overflowing the
│                        │      │                   heap. Because the 'spelllang' option can be set from a
│                        │      │                   modeline, a text file modeline can trigger spell file
│                        │      │                   loading if a malicious .spl file has been planted on the
│                        │      │                   runtimepath. This issue has been patched in version
│                        │      │                   9.2.0450. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-122 
│                        │      │                  ╰ [1]: CWE-190 
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 5.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:
│                        │      │                           │           L/A:H 
│                        │      │                           ╰ V3Score : 6.6 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/14/3 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-45130 
│                        │      │                  ├ [2]: https://github.com/vim/vim/commit/92993329178cb1f72d7
│                        │      │                  │      00fff45ca86e1c2d369f8 
│                        │      │                  ├ [3]: https://github.com/vim/vim/releases/tag/v9.2.0450 
│                        │      │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-q
│                        │      │                  │      4jv-r9gj-6cwv 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-45130 
│                        │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-8304-1 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-45130 
│                        │      ├ PublishedDate   : 2026-05-08T23:16:40.053Z 
│                        │      ╰ LastModifiedDate: 2026-05-18T14:22:41.733Z 
│                        ├ [73] ╭ VulnerabilityID : CVE-2026-42307 
│                        │      ├ PkgID           : vim-runtime@2:9.1.2141-1ubuntu4.1 
│                        │      ├ PkgName         : vim-runtime 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.2141-1ubuntu4.1?arch=
│                        │      │                  │       all&distro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : 820a3d33ee389314 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                        │      ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42307 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c856c88fe04d4c99b9d618fa7dbea2d7acc325702fba950ad182
│                        │      │                   a35253d6318d 
│                        │      ├ Title           : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2. ... 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2.0383, an OS command injection vulnerability
│                        │      │                   exists in the netrw standard plugin bundled with Vim. By
│                        │      │                   inducing a user to open a crafted URL (e.g., using the
│                        │      │                   sftp:// or file:// protocol handlers), an attacker can
│                        │      │                   execute arbitrary shell commands with the privileges of the
│                        │      │                    Vim process. This issue has been patched in version
│                        │      │                   9.2.0383. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-78 
│                        │      ├ VendorSeverity   ─ ubuntu: 2 
│                        │      ├ References       ╭ [0]: https://github.com/vim/vim/commit/405e2fb6d54d5653523
│                        │      │                  │      809e2853d99d1c000a5fc 
│                        │      │                  ├ [1]: https://github.com/vim/vim/releases/tag/v9.2.0383 
│                        │      │                  ├ [2]: https://github.com/vim/vim/security/advisories/GHSA-8
│                        │      │                  │      5ch-p2qr-m5gx 
│                        │      │                  ├ [3]: https://ubuntu.com/security/notices/USN-8304-1 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-42307 
│                        │      ├ PublishedDate   : 2026-05-08T23:16:36.777Z 
│                        │      ╰ LastModifiedDate: 2026-05-14T13:55:49.753Z 
│                        ├ [74] ╭ VulnerabilityID : CVE-2026-44656 
│                        │      ├ PkgID           : vim-runtime@2:9.1.2141-1ubuntu4.1 
│                        │      ├ PkgName         : vim-runtime 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.2141-1ubuntu4.1?arch=
│                        │      │                  │       all&distro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : 820a3d33ee389314 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                        │      ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44656 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:a75e8bf17cd380e92cfdedd7d768ae7049abb23ab6712b62f72a
│                        │      │                   376a981398b1 
│                        │      ├ Title           : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2. ... 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2.0435, an OS command injection vulnerability
│                        │      │                   exists in Vim's :find command-line completion. When the
│                        │      │                   path option contains backtick-enclosed shell commands,
│                        │      │                   those commands are executed during file name completion.
│                        │      │                   Because the path option lacks the P_SECURE flag, it can be
│                        │      │                   set from a modeline, allowing an attacker who controls the
│                        │      │                   contents of a file to execute arbitrary shell commands when
│                        │      │                    the user opens that file in Vim and triggers :find
│                        │      │                   completion. This issue has been patched in version
│                        │      │                   9.2.0435. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-78 
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ nvd ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:L/A:L 
│                        │      │                        ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://github.com/vim/vim/commit/190cb3c2b9c769a3972
│                        │      │                  │      bcfd991a7b5b6cb771ef0 
│                        │      │                  ├ [1]: https://github.com/vim/vim/releases/tag/v9.2.0435 
│                        │      │                  ├ [2]: https://github.com/vim/vim/security/advisories/GHSA-h
│                        │      │                  │      wg5-3cxw-wvvg 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-44656 
│                        │      │                  ├ [4]: https://ubuntu.com/security/notices/USN-8304-1 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-44656 
│                        │      ├ PublishedDate   : 2026-05-08T23:16:39.783Z 
│                        │      ╰ LastModifiedDate: 2026-05-14T13:59:30.12Z 
│                        ├ [75] ╭ VulnerabilityID : CVE-2026-45130 
│                        │      ├ PkgID           : vim-runtime@2:9.1.2141-1ubuntu4.1 
│                        │      ├ PkgName         : vim-runtime 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.2141-1ubuntu4.1?arch=
│                        │      │                  │       all&distro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : 820a3d33ee389314 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                        │      ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45130 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:eb64c7772f6b5f62525a7d83160d7a3ea4f42b1faf80a75786a5
│                        │      │                   7ccb29aa52de 
│                        │      ├ Title           : vim: Vim: Heap buffer overflow allows arbitrary code
│                        │      │                   execution or denial of service 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2.0450, a heap buffer overflow exists in
│                        │      │                   read_compound() in src/spellfile.c when loading a crafted
│                        │      │                   spell file (.spl) with UTF-8 encoding active. An
│                        │      │                   attacker-controlled length field in the spell file's
│                        │      │                   compound section overflows a 32-bit signed integer
│                        │      │                   multiplication, causing a small buffer to be allocated for
│                        │      │                   a write loop that runs many iterations, overflowing the
│                        │      │                   heap. Because the 'spelllang' option can be set from a
│                        │      │                   modeline, a text file modeline can trigger spell file
│                        │      │                   loading if a malicious .spl file has been planted on the
│                        │      │                   runtimepath. This issue has been patched in version
│                        │      │                   9.2.0450. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-122 
│                        │      │                  ╰ [1]: CWE-190 
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 5.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:
│                        │      │                           │           L/A:H 
│                        │      │                           ╰ V3Score : 6.6 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/14/3 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-45130 
│                        │      │                  ├ [2]: https://github.com/vim/vim/commit/92993329178cb1f72d7
│                        │      │                  │      00fff45ca86e1c2d369f8 
│                        │      │                  ├ [3]: https://github.com/vim/vim/releases/tag/v9.2.0450 
│                        │      │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-q
│                        │      │                  │      4jv-r9gj-6cwv 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-45130 
│                        │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-8304-1 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-45130 
│                        │      ├ PublishedDate   : 2026-05-08T23:16:40.053Z 
│                        │      ╰ LastModifiedDate: 2026-05-18T14:22:41.733Z 
│                        ├ [76] ╭ VulnerabilityID : CVE-2021-31879 
│                        │      ├ PkgID           : wget@1.25.0-2ubuntu4 
│                        │      ├ PkgName         : wget 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/wget@1.25.0-2ubuntu4?arch=amd64&distr
│                        │      │                  │       o=ubuntu-26.04 
│                        │      │                  ╰ UID : a886bdd7bd7f93f6 
│                        │      ├ InstalledVersion: 1.25.0-2ubuntu4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-31879 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:5612e77773109ea07ce657abfc6b07f490d0f93aaac7dd6dfb0a
│                        │      │                   7ef2339fe222 
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
│                        ├ [77] ╭ VulnerabilityID : CVE-2026-42307 
│                        │      ├ PkgID           : xxd@2:9.1.2141-1ubuntu4.1 
│                        │      ├ PkgName         : xxd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.2141-1ubuntu4.1?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : b35afbd1f43b0941 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                        │      ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42307 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:cfa4cac789c86bc38801dcc1c1f9e367210674f6968268c4ecb7
│                        │      │                   bfeb9dd65083 
│                        │      ├ Title           : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2. ... 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2.0383, an OS command injection vulnerability
│                        │      │                   exists in the netrw standard plugin bundled with Vim. By
│                        │      │                   inducing a user to open a crafted URL (e.g., using the
│                        │      │                   sftp:// or file:// protocol handlers), an attacker can
│                        │      │                   execute arbitrary shell commands with the privileges of the
│                        │      │                    Vim process. This issue has been patched in version
│                        │      │                   9.2.0383. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-78 
│                        │      ├ VendorSeverity   ─ ubuntu: 2 
│                        │      ├ References       ╭ [0]: https://github.com/vim/vim/commit/405e2fb6d54d5653523
│                        │      │                  │      809e2853d99d1c000a5fc 
│                        │      │                  ├ [1]: https://github.com/vim/vim/releases/tag/v9.2.0383 
│                        │      │                  ├ [2]: https://github.com/vim/vim/security/advisories/GHSA-8
│                        │      │                  │      5ch-p2qr-m5gx 
│                        │      │                  ├ [3]: https://ubuntu.com/security/notices/USN-8304-1 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-42307 
│                        │      ├ PublishedDate   : 2026-05-08T23:16:36.777Z 
│                        │      ╰ LastModifiedDate: 2026-05-14T13:55:49.753Z 
│                        ├ [78] ╭ VulnerabilityID : CVE-2026-44656 
│                        │      ├ PkgID           : xxd@2:9.1.2141-1ubuntu4.1 
│                        │      ├ PkgName         : xxd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.2141-1ubuntu4.1?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04&epoch=2 
│                        │      │                  ╰ UID : b35afbd1f43b0941 
│                        │      ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                        │      ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-44656 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4b8d0ecdcd01a01863e34c636ad16d38dc90031b299116cc8148
│                        │      │                   58bf0f0caa8d 
│                        │      ├ Title           : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2. ... 
│                        │      ├ Description     : Vim is an open source, command line text editor. Prior to
│                        │      │                   version 9.2.0435, an OS command injection vulnerability
│                        │      │                   exists in Vim's :find command-line completion. When the
│                        │      │                   path option contains backtick-enclosed shell commands,
│                        │      │                   those commands are executed during file name completion.
│                        │      │                   Because the path option lacks the P_SECURE flag, it can be
│                        │      │                   set from a modeline, allowing an attacker who controls the
│                        │      │                   contents of a file to execute arbitrary shell commands when
│                        │      │                    the user opens that file in Vim and triggers :find
│                        │      │                   completion. This issue has been patched in version
│                        │      │                   9.2.0435. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-78 
│                        │      ├ VendorSeverity   ╭ azure : 2 
│                        │      │                  ├ nvd   : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ nvd ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:L/A:L 
│                        │      │                        ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://github.com/vim/vim/commit/190cb3c2b9c769a3972
│                        │      │                  │      bcfd991a7b5b6cb771ef0 
│                        │      │                  ├ [1]: https://github.com/vim/vim/releases/tag/v9.2.0435 
│                        │      │                  ├ [2]: https://github.com/vim/vim/security/advisories/GHSA-h
│                        │      │                  │      wg5-3cxw-wvvg 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-44656 
│                        │      │                  ├ [4]: https://ubuntu.com/security/notices/USN-8304-1 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-44656 
│                        │      ├ PublishedDate   : 2026-05-08T23:16:39.783Z 
│                        │      ╰ LastModifiedDate: 2026-05-14T13:59:30.12Z 
│                        ╰ [79] ╭ VulnerabilityID : CVE-2026-45130 
│                               ├ PkgID           : xxd@2:9.1.2141-1ubuntu4.1 
│                               ├ PkgName         : xxd 
│                               ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.2141-1ubuntu4.1?arch=amd64&di
│                               │                  │       stro=ubuntu-26.04&epoch=2 
│                               │                  ╰ UID : b35afbd1f43b0941 
│                               ├ InstalledVersion: 2:9.1.2141-1ubuntu4.1 
│                               ├ FixedVersion    : 2:9.1.2141-1ubuntu4.2 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                               │                  │         b50965a5704335972fcd3 
│                               │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                               │                            45533142f27c10df0e094 
│                               ├ SeveritySource  : ubuntu 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-45130 
│                               ├ DataSource       ╭ ID  : ubuntu 
│                               │                  ├ Name: Ubuntu CVE Tracker 
│                               │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                               ├ Fingerprint     : sha256:b6fed98a2e27035a486f70ee96440d8aa32b88ee5a1bdd9dbf01
│                               │                   9383e15b7a45 
│                               ├ Title           : vim: Vim: Heap buffer overflow allows arbitrary code
│                               │                   execution or denial of service 
│                               ├ Description     : Vim is an open source, command line text editor. Prior to
│                               │                   version 9.2.0450, a heap buffer overflow exists in
│                               │                   read_compound() in src/spellfile.c when loading a crafted
│                               │                   spell file (.spl) with UTF-8 encoding active. An
│                               │                   attacker-controlled length field in the spell file's
│                               │                   compound section overflows a 32-bit signed integer
│                               │                   multiplication, causing a small buffer to be allocated for
│                               │                   a write loop that runs many iterations, overflowing the
│                               │                   heap. Because the 'spelllang' option can be set from a
│                               │                   modeline, a text file modeline can trigger spell file
│                               │                   loading if a malicious .spl file has been planted on the
│                               │                   runtimepath. This issue has been patched in version
│                               │                   9.2.0450. 
│                               ├ Severity        : MEDIUM 
│                               ├ CweIDs           ╭ [0]: CWE-122 
│                               │                  ╰ [1]: CWE-190 
│                               ├ VendorSeverity   ╭ azure : 2 
│                               │                  ├ nvd   : 2 
│                               │                  ├ redhat: 2 
│                               │                  ╰ ubuntu: 2 
│                               ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                               │                  │        │           N/A:H 
│                               │                  │        ╰ V3Score : 5.5 
│                               │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:L/I:
│                               │                           │           L/A:H 
│                               │                           ╰ V3Score : 6.6 
│                               ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/14/3 
│                               │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-45130 
│                               │                  ├ [2]: https://github.com/vim/vim/commit/92993329178cb1f72d7
│                               │                  │      00fff45ca86e1c2d369f8 
│                               │                  ├ [3]: https://github.com/vim/vim/releases/tag/v9.2.0450 
│                               │                  ├ [4]: https://github.com/vim/vim/security/advisories/GHSA-q
│                               │                  │      4jv-r9gj-6cwv 
│                               │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-45130 
│                               │                  ├ [6]: https://ubuntu.com/security/notices/USN-8304-1 
│                               │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-45130 
│                               ├ PublishedDate   : 2026-05-08T23:16:40.053Z 
│                               ╰ LastModifiedDate: 2026-05-18T14:22:41.733Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:f93f4d9bd7f9ade6d083d7bbc46cd4666d0b4f5b172c44d444cfa
│                        │     │                   c6a2046f27c 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:501525949c9324890df600c54b90fdf89e6217578c7f3613f6301
│                        │     │                   2b61e32311d 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:fa27b151667130b38fa831809b6708e7acd3ced39967a6b6f6e47
│                        │     │                   7c1bbc3dc4f 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:2f2c54a6f28c7783d748bd7962fc3d13b59fface339ab434937c6
│                        │     │                   eff6f7f014b 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:a060d3d21be3d740a6bb180510fc893f6f58a0c9545bdecce489a
│                        │     │                   ffdb8caf22a 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:a8ec4beaf6b413c0adcd6608aa15f21740a3881d99780ed3ae853
│                        │     │                   e0a368d5d17 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://github.com/advisories/GHSA-pmwq-pjrm-6p5r 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:9423d830ee7b6df1c906fc6d69c4f98d56acec585b4debd718d34
│                        │     │                   c53139f68e0 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:f6f003f04a642723774e72b6164f66b1b4c5a985aa6730f0f8c71
│                        │     │                   0e3bd416dde 
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
│                        │     ├ VendorSeverity   ╭ amazon: 2 
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
│                              ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                              │                  │         50965a5704335972fcd3 
│                              │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                              │                            5533142f27c10df0e094 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:25da683a78b4969fcde4f135e1c89963d3aa0853ba1f12b2a359f
│                              │                   c5c9412142a 
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
│                              ├ VendorSeverity   ╭ amazon: 2 
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
│                              ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                              │                  │         50965a5704335972fcd3 
│                              │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                              │                            5533142f27c10df0e094 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:07937d88c434d5483df9c1a80718e88cab9627e88e1decc577707
│                              │                   387b686d0ee 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33811 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:013be921f5b3d217bdc1e74ff7b1b8e0fa084b53ed57c71d7dcd5
│                        │     │                   2ab43c1f8b8 
│                        │     ├ Title           : When using LookupCNAME with the cgo DNS resolver, a very
│                        │     │                   long CNAME re ... 
│                        │     ├ Description     : When using LookupCNAME with the cgo DNS resolver, a very
│                        │     │                   long CNAME response can trigger a double-free of C memory
│                        │     │                   and a crash. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-415 
│                        │     ├ VendorSeverity   ╭ bitnami: 3 
│                        │     │                  ╰ nvd    : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/767860 
│                        │     │                  ├ [1]: https://go.dev/issue/78803 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-33811 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4981 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:fc148d74a5de1187bd9b883776840bd542b94dc7692629f3da5bb
│                        │     │                   bd115f88e12 
│                        │     ├ Title           : When processing HTTP/2 SETTINGS frames, transport will enter
│                        │     │                    an infini ... 
│                        │     ├ Description     : When processing HTTP/2 SETTINGS frames, transport will enter
│                        │     │                    an infinite loop of writing CONTINUATION frames if it
│                        │     │                   receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-835 
│                        │     ├ VendorSeverity   ╭ azure  : 3 
│                        │     │                  ├ bitnami: 3 
│                        │     │                  ╰ nvd    : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/761581 
│                        │     │                  ├ [1]: https://go.dev/cl/761640 
│                        │     │                  ├ [2]: https://go.dev/issue/78476 
│                        │     │                  ├ [3]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │     │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2026-4918 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39820 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:55b506238f5b893f27aa469f93c8a9a76451b818020b6650b6177
│                        │     │                   d91f0221fca 
│                        │     ├ Title           : Well-crafted inputs reaching ParseAddress, ParseAddressList,
│                        │     │                    and Parse ... 
│                        │     ├ Description     : Well-crafted inputs reaching ParseAddress, ParseAddressList,
│                        │     │                    and ParseDate were able to trigger excessive CPU exhaustion
│                        │     │                    and memory allocations. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-770 
│                        │     ├ VendorSeverity   ╭ bitnami: 3 
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
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-39836 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4971 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : 11ef8a1a3b61856 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39836 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:f44aeb581a3f53ddd1f99ba56a46dccabe9b6464e2d998dff2a8d
│                        │     │                   2355b5db643 
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
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-42499 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4977 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : 11ef8a1a3b61856 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42499 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:e563553645e2429c11e52af262de9e88775d5f5f2ad566167606c
│                        │     │                   57a5546a5a3 
│                        │     ├ Title           : Pathological inputs could cause DoS through consumePhrase
│                        │     │                   when parsing ... 
│                        │     ├ Description     : Pathological inputs could cause DoS through consumePhrase
│                        │     │                   when parsing an email address according to RFC 5322. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ─ bitnami: 3 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/771520 
│                        │     │                  ├ [1]: https://go.dev/issue/78987 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42499 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4977 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:44.54Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T16:59:17.563Z 
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-39823 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4982 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : 11ef8a1a3b61856 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39823 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:e3cbec3ac1d6f65146c150f3610cb7c4be5f75d8babafab1be07c
│                        │     │                   7b4a546f7c3 
│                        │     ├ Title           : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │     │                   correctly  ... 
│                        │     ├ Description     : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │     │                   correctly escaped inside of a <meta> tag's <content>
│                        │     │                   attribute. If the URL content were to insert ASCII
│                        │     │                   whitespaces around the '=' rune inside of the <content>
│                        │     │                   attribute, the escaper would fail to similarly escape it,
│                        │     │                   leading to XSS. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs           ─ [0]: CWE-79 
│                        │     ├ VendorSeverity   ─ bitnami: 2 
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
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-39825 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4976 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : 11ef8a1a3b61856 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39825 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:be2a4bf74a9e717fcc277c5865cbcd575a0171bda8918550c3b4c
│                        │     │                   d673cbb7c94 
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
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ VendorSeverity   ─ bitnami: 2 
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
│                        ╰ [7] ╭ VulnerabilityID : CVE-2026-39826 
│                              ├ VendorIDs        ─ [0]: GO-2026-4980 
│                              ├ PkgID           : stdlib@v1.26.2 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                              │                  ╰ UID : 11ef8a1a3b61856 
│                              ├ InstalledVersion: v1.26.2 
│                              ├ FixedVersion    : 1.25.10, 1.26.3 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                              │                  │         50965a5704335972fcd3 
│                              │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                              │                            5533142f27c10df0e094 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39826 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:dc0d5b456d14458ec197b72315d822e1438dfe95e8317e15700c7
│                              │                   0de3be84ad1 
│                              ├ Title           : If a trusted template author were to write a <script> tag
│                              │                   containing a ... 
│                              ├ Description     : If a trusted template author were to write a <script> tag
│                              │                   containing an empty 'type' attribute or a 'type' attribute
│                              │                   with an ASCII whitespace, the execution of the template
│                              │                   would incorrectly escape any data passed into the <script>
│                              │                   block. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-116 
│                              ├ VendorSeverity   ─ bitnami: 2 
│                              ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                              │                            │           L/A:N 
│                              │                            ╰ V3Score : 6.1 
│                              ├ References       ╭ [0]: https://go.dev/cl/771180 
│                              │                  ├ [1]: https://go.dev/issue/78981 
│                              │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                              │                  │      47M 
│                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39826 
│                              │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4980 
│                              ├ PublishedDate   : 2026-05-07T20:16:43.49Z 
│                              ╰ LastModifiedDate: 2026-05-13T16:59:07.48Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33811 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:e1e7636c2362ca5ffb5c10285ce1b425efb6e163acf1299378c10
│                        │     │                   a13ca8cb6f6 
│                        │     ├ Title           : When using LookupCNAME with the cgo DNS resolver, a very
│                        │     │                   long CNAME re ... 
│                        │     ├ Description     : When using LookupCNAME with the cgo DNS resolver, a very
│                        │     │                   long CNAME response can trigger a double-free of C memory
│                        │     │                   and a crash. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-415 
│                        │     ├ VendorSeverity   ╭ bitnami: 3 
│                        │     │                  ╰ nvd    : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/767860 
│                        │     │                  ├ [1]: https://go.dev/issue/78803 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-33811 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4981 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:042503cca6af29256caef277c7c37626f8297e91790f9ae196482
│                        │     │                   d077679b1b1 
│                        │     ├ Title           : When processing HTTP/2 SETTINGS frames, transport will enter
│                        │     │                    an infini ... 
│                        │     ├ Description     : When processing HTTP/2 SETTINGS frames, transport will enter
│                        │     │                    an infinite loop of writing CONTINUATION frames if it
│                        │     │                   receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-835 
│                        │     ├ VendorSeverity   ╭ azure  : 3 
│                        │     │                  ├ bitnami: 3 
│                        │     │                  ╰ nvd    : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                  │         │           N/A:H 
│                        │     │                  │         ╰ V3Score : 7.5 
│                        │     │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/761581 
│                        │     │                  ├ [1]: https://go.dev/cl/761640 
│                        │     │                  ├ [2]: https://go.dev/issue/78476 
│                        │     │                  ├ [3]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │     │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2026-4918 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39820 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:74557e777bc0c10a5c24c1d01a597a46e7d887aba39b2602b70cf
│                        │     │                   38837f5b1f1 
│                        │     ├ Title           : Well-crafted inputs reaching ParseAddress, ParseAddressList,
│                        │     │                    and Parse ... 
│                        │     ├ Description     : Well-crafted inputs reaching ParseAddress, ParseAddressList,
│                        │     │                    and ParseDate were able to trigger excessive CPU exhaustion
│                        │     │                    and memory allocations. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-770 
│                        │     ├ VendorSeverity   ╭ bitnami: 3 
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
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-39836 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4971 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : e5871284774cde90 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39836 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:7d29f4c0041a0a4d441333c1ee1add776639fb329c134838c91cc
│                        │     │                   60f39b753d1 
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
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-42499 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4977 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : e5871284774cde90 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42499 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:abb98de9580253f9be9d525be965abae4ec58342c86f95ac30b84
│                        │     │                   1940d922867 
│                        │     ├ Title           : Pathological inputs could cause DoS through consumePhrase
│                        │     │                   when parsing ... 
│                        │     ├ Description     : Pathological inputs could cause DoS through consumePhrase
│                        │     │                   when parsing an email address according to RFC 5322. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ VendorSeverity   ─ bitnami: 3 
│                        │     ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │     │                            │           N/A:H 
│                        │     │                            ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://go.dev/cl/771520 
│                        │     │                  ├ [1]: https://go.dev/issue/78987 
│                        │     │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                        │     │                  │      47M 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-42499 
│                        │     │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4977 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:44.54Z 
│                        │     ╰ LastModifiedDate: 2026-05-13T16:59:17.563Z 
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-39823 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4982 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : e5871284774cde90 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39823 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:fadd12f29369b41b44aef51844ccfb88c9b01255bc1512da5b649
│                        │     │                   9d82cd4635c 
│                        │     ├ Title           : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │     │                   correctly  ... 
│                        │     ├ Description     : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │     │                   correctly escaped inside of a <meta> tag's <content>
│                        │     │                   attribute. If the URL content were to insert ASCII
│                        │     │                   whitespaces around the '=' rune inside of the <content>
│                        │     │                   attribute, the escaper would fail to similarly escape it,
│                        │     │                   leading to XSS. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs           ─ [0]: CWE-79 
│                        │     ├ VendorSeverity   ─ bitnami: 2 
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
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-39825 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4976 
│                        │     ├ PkgID           : stdlib@v1.26.2 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │     │                  ╰ UID : e5871284774cde90 
│                        │     ├ InstalledVersion: v1.26.2 
│                        │     ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39825 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:4b28bdb908f0f30616497b155e3f8f529c512b1237893de89cecf
│                        │     │                   685d81eabbe 
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
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ VendorSeverity   ─ bitnami: 2 
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
│                        ╰ [7] ╭ VulnerabilityID : CVE-2026-39826 
│                              ├ VendorIDs        ─ [0]: GO-2026-4980 
│                              ├ PkgID           : stdlib@v1.26.2 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                              │                  ╰ UID : e5871284774cde90 
│                              ├ InstalledVersion: v1.26.2 
│                              ├ FixedVersion    : 1.25.10, 1.26.3 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                              │                  │         50965a5704335972fcd3 
│                              │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                              │                            5533142f27c10df0e094 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39826 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:83e1a1b947f660e8c188bd3342378c1fc66d779525adcfbd02070
│                              │                   b88a6f9c323 
│                              ├ Title           : If a trusted template author were to write a <script> tag
│                              │                   containing a ... 
│                              ├ Description     : If a trusted template author were to write a <script> tag
│                              │                   containing an empty 'type' attribute or a 'type' attribute
│                              │                   with an ASCII whitespace, the execution of the template
│                              │                   would incorrectly escape any data passed into the <script>
│                              │                   block. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-116 
│                              ├ VendorSeverity   ─ bitnami: 2 
│                              ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I:
│                              │                            │           L/A:N 
│                              │                            ╰ V3Score : 6.1 
│                              ├ References       ╭ [0]: https://go.dev/cl/771180 
│                              │                  ├ [1]: https://go.dev/issue/78981 
│                              │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXso
│                              │                  │      47M 
│                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-39826 
│                              │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4980 
│                              ├ PublishedDate   : 2026-05-07T20:16:43.49Z 
│                              ╰ LastModifiedDate: 2026-05-13T16:59:07.48Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:586d406cfb07a0e06703d0863f73556d095b264dc4b1c75c74755
│                        │     │                   66877e52946 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:47616e57882bcf696eb8c0a9dde83dd0b4d571882f28c810d5575
│                        │     │                   b18402e373e 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:abfb35871a200e1308bc1594f344b6c8b82e3e7506f2399943a2f
│                        │     │                   45ff7152374 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:792f22a38dab8b0c0a9e039e9d38d0b3f0e8d79e8443770b49779
│                        │     │                   8d6182b94e0 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:094cb6702ba360b83b5d9599d1e9de66665c48bf358c4d6d55388
│                        │     │                   4378b4708bd 
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
│                              ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                              │                  │         50965a5704335972fcd3 
│                              │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                              │                            5533142f27c10df0e094 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:c40f47b382151dbc2c7822f6551a1ffcbff0374d34b5a2baffb51
│                              │                   fe898b2f8bb 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:dfb2da96fcb2fd71955559f8a0c52738acfd2634ce21efc53a4d7
│                        │     │                   83422c2f3ff 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:217ae76d7810ab14392868d719ef3a8e47026051841ef2a71409c
│                        │     │                   0ca985aea18 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:2b7038f3a72c85b5c72b77bc154456d9058fd12633c604f544224
│                        │     │                   9ca5ee0f7ad 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:5d7ffdabadefff7612714b2fe002fc9f3d75bb55dceab0290424a
│                        │     │                   489eb79ec3e 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:41523776b1216adc51f7c8f0a57bc2b362a73fe98e66a6ec3cf25
│                        │     │                   1c906bd3b4f 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:02a68153d22ef7782f685d45b7f348d9b009b984defd28608eda6
│                        │     │                   f70a92be262 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://github.com/advisories/GHSA-pmwq-pjrm-6p5r 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:4b7b7d2f0631f74f6facbe838eb9d4edd8059dde6584cb693ef25
│                        │     │                   75d6ff4ce40 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:972d12427b70fce9670994776311e17c889bce2c1bf554b872359
│                        │     │                   0c96a3e4dcb 
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
│                        │     ├ VendorSeverity   ╭ amazon: 2 
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
│                              ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                              │                  │         50965a5704335972fcd3 
│                              │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                              │                            5533142f27c10df0e094 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:69eb38b40caa550a9bf3af7e0cdd3f1a675694d19b52b21a1b133
│                              │                   a40e743553d 
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
│                              ├ VendorSeverity   ╭ amazon: 2 
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
│                        │     ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                        │     │                  │         50965a5704335972fcd3 
│                        │     │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                        │     │                            5533142f27c10df0e094 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:f6c94141f73df41e4d1df661686ce05b392d442bdda10f92ea3cc
│                        │     │                   31b5a277605 
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
│                              ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b
│                              │                  │         50965a5704335972fcd3 
│                              │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e0324
│                              │                            5533142f27c10df0e094 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39883 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:c25d0d6d2b36ca6dd5ccca4a48acfc56d15c621098e06cece1ad2
│                              │                   9bc6970ca6f 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-25621 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:0128aaf7210dec2a3bb2c90e56ce1fc58aaa75b6766f1664a4d7
│                        │      │                   970565408134 
│                        │      ├ Title           : containerd is an open-source container runtime. Versions
│                        │      │                   0.1.0 through ... 
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
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:H/I:H/
│                        │      │                  │      │           A:H 
│                        │      │                  │      ╰ V3Score : 7.3 
│                        │      │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7.8 
│                        │      ├ References       ╭ [0]: https://github.com/containerd/containerd 
│                        │      │                  ├ [1]: https://github.com/containerd/containerd/blob/main/do
│                        │      │                  │      cs/rootless.md 
│                        │      │                  ├ [2]: https://github.com/containerd/containerd/commit/7c59e
│                        │      │                  │      8e9e970d38061a77b586b23655c352bfec5 
│                        │      │                  ├ [3]: https://github.com/containerd/containerd/security/adv
│                        │      │                  │      isories/GHSA-pwhc-rpq9-4c8w 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2024-25621 
│                        │      │                  ├ [5]: https://ubuntu.com/security/notices/USN-7983-1 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2024-25621 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-40635 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:791e910c0ab434db4420f50cb317efe1b8ea5466e0ad4e92e687
│                        │      │                   c1833c191aaf 
│                        │      ├ Title           : containerd is an open-source container runtime. A bug was
│                        │      │                   found in con ... 
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
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:C/C:L/I:L/
│                        │      │                  │      │           A:N 
│                        │      │                  │      ╰ V3Score : 4.6 
│                        │      │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7.8 
│                        │      ├ References       ╭ [0] : https://github.com/containerd/containerd 
│                        │      │                  ├ [1] : https://github.com/containerd/containerd/commit/0504
│                        │      │                  │       4ec0a9a75232cad458027ca83437aae3f4da 
│                        │      │                  ├ [2] : https://github.com/containerd/containerd/commit/1150
│                        │      │                  │       4c3fc5f45634f2d93d57743a998194430b82 (v1.7.27) 
│                        │      │                  ├ [3] : https://github.com/containerd/containerd/commit/1a43
│                        │      │                  │       cb6a1035441f9aca8f5666a9b3ef9e70ab20 
│                        │      │                  ├ [4] : https://github.com/containerd/containerd/commit/9639
│                        │      │                  │       b9625554183d0c4d8d072dccb84fedd2320f (v1.6.38) 
│                        │      │                  ├ [5] : https://github.com/containerd/containerd/commit/cf15
│                        │      │                  │       8e884cfe4812a6c371b59e4ea9bc4c46e51a 
│                        │      │                  ├ [6] : https://github.com/containerd/containerd/security/ad
│                        │      │                  │       visories/GHSA-265r-hfxg-fhmg 
│                        │      │                  ├ [7] : https://lists.debian.org/debian-lts-announce/2025/05
│                        │      │                  │       /msg00005.html 
│                        │      │                  ├ [8] : https://nvd.nist.gov/vuln/detail/CVE-2024-40635 
│                        │      │                  ├ [9] : https://ubuntu.com/security/notices/USN-7374-1 
│                        │      │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2024-40635 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-64329 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:f4cea18b79456eed1cc24ac5b5fc8da6ec4e7e006ffb410b491e
│                        │      │                   a7483f608623 
│                        │      ├ Title           : containerd is an open-source container runtime. Versions
│                        │      │                   1.7.28 and be ... 
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
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ╭ ghsa ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:N/UI:N/VC:N/V
│                        │      │                  │      │            I:N/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │      ╰ V40Score : 6.9 
│                        │      │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 5.5 
│                        │      ├ References       ╭ [0]: https://github.com/containerd/containerd 
│                        │      │                  ├ [1]: https://github.com/containerd/containerd/commit/083b5
│                        │      │                  │      3cd6f19b5de7717b0ce92c11bdf95e612df 
│                        │      │                  ├ [2]: https://github.com/containerd/containerd/security/adv
│                        │      │                  │      isories/GHSA-m6hq-p25p-ffr2 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-64329 
│                        │      │                  ├ [4]: https://ubuntu.com/security/notices/USN-7983-1 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2025-64329 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-15558 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:96785329486dbf0a030d0c144c569489857232d2575e4877b8e1
│                        │      │                   f6ea3984348a 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-41110 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:280d45423fb299aec3493a7b67deb3ce72c5e3133d8448750374
│                        │      │                   4ad2d6c80f58 
│                        │      ├ Title           : Moby is an open-source project created by Docker for
│                        │      │                   software containe ... 
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
│                        │      │                  ╰ ubuntu     : 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector : CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:H
│                        │      │                         │            /A:H 
│                        │      │                         ├ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:H/V
│                        │      │                         │            I:H/VA:H/SC:H/SI:H/SA:H 
│                        │      │                         ├ V3Score  : 10 
│                        │      │                         ╰ V40Score : 9.4 
│                        │      ├ References       ╭ [0] : https://github.com/moby/moby 
│                        │      │                  ├ [1] : https://github.com/moby/moby/commit/411e817ddf710ff8
│                        │      │                  │       e08fa193da80cb78af708191 
│                        │      │                  ├ [2] : https://github.com/moby/moby/commit/42f40b1d6dd75623
│                        │      │                  │       42f832b9cd2adf9e668eeb76 
│                        │      │                  ├ [3] : https://github.com/moby/moby/commit/65cc597cea28cdc2
│                        │      │                  │       5bea3b8a86384b4251872919 
│                        │      │                  ├ [4] : https://github.com/moby/moby/commit/852759a7df454cbf
│                        │      │                  │       88db4e954c919becd48faa9b 
│                        │      │                  ├ [5] : https://github.com/moby/moby/commit/a31260625655cff9
│                        │      │                  │       ae226b51757915e275e304b0 
│                        │      │                  ├ [6] : https://github.com/moby/moby/commit/a79fabbfe8411769
│                        │      │                  │       6a19671f4aa88b82d0f64fc1 
│                        │      │                  ├ [7] : https://github.com/moby/moby/commit/ae160b4edddb72ef
│                        │      │                  │       4bd71f66b975a1a1cc434f00 
│                        │      │                  ├ [8] : https://github.com/moby/moby/commit/ae2b3666c517c96c
│                        │      │                  │       bc2adf1af5591a6b00d4ec0f 
│                        │      │                  ├ [9] : https://github.com/moby/moby/commit/cc13f952511154a2
│                        │      │                  │       866bddbb7dddebfe9e83b801 
│                        │      │                  ├ [10]: https://github.com/moby/moby/commit/fc274cd2ff4cf3b4
│                        │      │                  │       8c91697fb327dd1fb95588fb 
│                        │      │                  ├ [11]: https://github.com/moby/moby/security/advisories/GHS
│                        │      │                  │       A-v23v-6jw2-98fq 
│                        │      │                  ├ [12]: https://lists.debian.org/debian-lts-announce/2024/10
│                        │      │                  │       /msg00009.html 
│                        │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-41110 
│                        │      │                  ├ [14]: https://security.netapp.com/advisory/ntap-20240802-0
│                        │      │                  │       001/ 
│                        │      │                  ├ [15]: https://ubuntu.com/security/notices/USN-7161-1 
│                        │      │                  ├ [16]: https://ubuntu.com/security/notices/USN-7161-2 
│                        │      │                  ├ [17]: https://ubuntu.com/security/notices/USN-7161-3 
│                        │      │                  ├ [18]: https://www.cve.org/CVERecord?id=CVE-2024-41110 
│                        │      │                  ├ [19]: https://www.docker.com/blog/docker-security-advisory
│                        │      │                  │       -docker-engine-authz-plugin 
│                        │      │                  ╰ [20]: https://www.docker.com/blog/docker-security-advisory
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:f97640a7605ced6405b9acc1fb4109b1ca69047e8b7f7441fe62
│                        │      │                   42c079b88d16 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:ea7e27a71b7392795a110b11025246cac682c0e5e321d46976e3
│                        │      │                   166daf36ba9d 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:f3c9a68b3dfa485de30777ba17a09ce900d60d05ccff8872e192
│                        │      │                   bde553c1075d 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:fe98ba86476687f10c17e3d19e290e1fd77dc04c61903566e711
│                        │      │                   bd090f090485 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:01a44a5fa7e0e8cda909f955fa3555abdce34fde3f228fbc7dce
│                        │      │                   a6b390a55379 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-54410 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:09fc0d7835a7ad1e16c5b7e2539441fbeaa0d70de70928737f30
│                        │      │                   05ba970d859c 
│                        │      ├ Title           : Moby is an open source container framework developed by
│                        │      │                   Docker Inc. th ... 
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
│                        │      │                  ╰ nvd   : 2 
│                        │      ├ CVSS             ╭ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:L/I:L/
│                        │      │                  │      │           A:N 
│                        │      │                  │      ╰ V3Score : 3.3 
│                        │      │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:L/I:L/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 5.2 
│                        │      ├ References       ╭ [0]: https://firewalld.org/documentation/howto/reload-fire
│                        │      │                  │      walld.html 
│                        │      │                  ├ [1]: https://github.com/moby/moby 
│                        │      │                  ├ [2]: https://github.com/moby/moby/pull/49443 
│                        │      │                  ├ [3]: https://github.com/moby/moby/pull/49728 
│                        │      │                  ├ [4]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -4vq8-7jfc-9cvp 
│                        │      │                  ╰ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-54410 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-24051 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:6692c7c52cfb1a3211d915a60d753b81875cfb963d4bd21c3b77
│                        │      │                   deef1e413863 
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
│                        │      ├ VendorSeverity   ─ ghsa: 3 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39883 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:d7dc57420b78a2fdb693c9c9d4944be18a1011061494bdb77d0b
│                        │      │                   416e87ed14a2 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-45337 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:e3f04e81117a800ed19753afed489e6fdf342fa6b009f2d301d4
│                        │      │                   c2d3aea0e265 
│                        │      ├ Title           : Applications and libraries which misuse
│                        │      │                   connection.serverAuthenticate  ... 
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
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:H/
│                        │      │                         │           A:N 
│                        │      │                         ╰ V3Score : 9.1 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2024/12/1
│                        │      │                  │       1/2 
│                        │      │                  ├ [1] : https://github.com/golang/crypto 
│                        │      │                  ├ [2] : https://github.com/golang/crypto/commit/b4f1988a35de
│                        │      │                  │       e11ec3e05d6bf3e90b695fbd8909 
│                        │      │                  ├ [3] : https://go-review.googlesource.com/c/crypto/+/635315/ 
│                        │      │                  ├ [4] : https://go.dev/cl/635315 
│                        │      │                  ├ [5] : https://go.dev/issue/70779 
│                        │      │                  ├ [6] : https://groups.google.com/g/golang-announce/c/-nPEi3
│                        │      │                  │       9gI4Q/m/cGVPJCqdAQAJ 
│                        │      │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2024-45337 
│                        │      │                  ├ [8] : https://pkg.go.dev/vuln/GO-2024-3321 
│                        │      │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250131-0
│                        │      │                  │       007 
│                        │      │                  ├ [10]: https://security.netapp.com/advisory/ntap-20250131-0
│                        │      │                  │       007/ 
│                        │      │                  ├ [11]: https://ubuntu.com/security/notices/USN-7839-1 
│                        │      │                  ├ [12]: https://ubuntu.com/security/notices/USN-7839-2 
│                        │      │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2024-45337 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22869 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:d613d031e6d8c0b492946735c45e7ab42657691a5789eb3ee77e
│                        │      │                   339dd43a4022 
│                        │      ├ Title           : SSH servers which implement file transfer protocols are
│                        │      │                   vulnerable to  ... 
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
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:3833 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/2348367 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/show_bug.cgi?id=2348367 
│                        │      │                  ├ [3] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-22869 
│                        │      │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-3833.html 
│                        │      │                  ├ [5] : https://errata.rockylinux.org/RLSA-2025:7416 
│                        │      │                  ├ [6] : https://github.com/golang/crypto 
│                        │      │                  ├ [7] : https://github.com/golang/crypto/commit/7292932d45d5
│                        │      │                  │       5c7199324ab0027cc86e8198aa22 
│                        │      │                  ├ [8] : https://go-review.googlesource.com/c/crypto/+/652135 
│                        │      │                  ├ [9] : https://go.dev/cl/652135 
│                        │      │                  ├ [10]: https://go.dev/issue/71931 
│                        │      │                  ├ [11]: https://linux.oracle.com/cve/CVE-2025-22869.html 
│                        │      │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2025-7484.html 
│                        │      │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2025-22869 
│                        │      │                  ├ [14]: https://pkg.go.dev/vuln/GO-2025-3487 
│                        │      │                  ├ [15]: https://security.netapp.com/advisory/ntap-20250411-0
│                        │      │                  │       010 
│                        │      │                  ╰ [16]: https://security.netapp.com/advisory/ntap-20250411-0
│                        │      │                          010/ 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47914 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:f3debf9cdd34ba82bc79c75e38d6d660dbe7ccf5bdaf25ba4de7
│                        │      │                   c5f6bd7f33e9 
│                        │      ├ Title           : SSH Agent servers do not validate the size of messages when
│                        │      │                    processing ... 
│                        │      ├ Description     : SSH Agent servers do not validate the size of messages when
│                        │      │                    processing new identity requests, which may cause the
│                        │      │                   program to panic if the message is malformed due to an out
│                        │      │                   of bounds read. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-125 
│                        │      ├ VendorSeverity   ╭ amazon: 2 
│                        │      │                  ╰ ghsa  : 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:L 
│                        │      │                         ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/721960 
│                        │      │                  ├ [1]: https://go.dev/issue/76364 
│                        │      │                  ├ [2]: https://go.googlesource.com/crypto 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/w-oX3Ux
│                        │      │                  │      NcZA 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-47914 
│                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2025-4135 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58181 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:5768245a65dc2d6763d9efb68a359ccd9ee0b0b00f2a20b7913e
│                        │      │                   842fb17eea34 
│                        │      ├ Title           : SSH servers parsing GSSAPI authentication requests do not
│                        │      │                   validate the ... 
│                        │      ├ Description     : SSH servers parsing GSSAPI authentication requests do not
│                        │      │                   validate the number of mechanisms specified in the request,
│                        │      │                    allowing an attacker to cause unbounded memory
│                        │      │                   consumption. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon: 2 
│                        │      │                  ├ ghsa  : 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:L 
│                        │      │                         ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: https://github.com/golang/crypto/commit/e79546e28b85e
│                        │      │                  │      a53dd37afe1c4102746ef553b9c 
│                        │      │                  ├ [1]: https://github.com/golang/go/issues/76363 
│                        │      │                  ├ [2]: https://go.dev/cl/721961 
│                        │      │                  ├ [3]: https://go.dev/issue/76363 
│                        │      │                  ├ [4]: https://groups.google.com/g/golang-announce/c/w-oX3Ux
│                        │      │                  │      NcZA 
│                        │      │                  ├ [5]: https://groups.google.com/g/golang-announce/c/w-oX3Ux
│                        │      │                  │      NcZA?pli=1 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2025-58181 
│                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2025-4134 
│                        │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-7956-1 
│                        │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2025-58181 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22870 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:dd09c485056d40081f5f4280c968e68cefa607022d6eb4b5a896
│                        │      │                   80e1375e7761 
│                        │      ├ Title           : Matching of hosts against proxy patterns can improperly
│                        │      │                   treat an IPv6  ... 
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
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                        │      │                         │           A:L 
│                        │      │                         ╰ V3Score : 4.4 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/03/0
│                        │      │                  │       7/2 
│                        │      │                  ├ [1] : https://github.com/golang/go/issues/71984 
│                        │      │                  ├ [2] : https://go-review.googlesource.com/q/project:net 
│                        │      │                  ├ [3] : https://go.dev/cl/654697 
│                        │      │                  ├ [4] : https://go.dev/issue/71984 
│                        │      │                  ├ [5] : https://groups.google.com/g/golang-announce/c/4t3lzH
│                        │      │                  │       3I0eI/m/b42ImqrBAQAJ 
│                        │      │                  ├ [6] : https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                        │      │                  ├ [7] : https://pkg.go.dev/vuln/GO-2025-3503 
│                        │      │                  ├ [8] : https://security.netapp.com/advisory/ntap-20250509-0
│                        │      │                  │       007 
│                        │      │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250509-0
│                        │      │                  │       007/ 
│                        │      │                  ├ [10]: https://ubuntu.com/security/notices/USN-7574-1 
│                        │      │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22872 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:cfaf2053ee3c4f1c76fe1e032759719e75665f2a303981003ae4
│                        │      │                   7be3fd2a581d 
│                        │      ├ Title           : The tokenizer incorrectly interprets tags with unquoted
│                        │      │                   attribute valu ... 
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
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ ghsa ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:N/UI:P/VC:N/V
│                        │      │                         │            I:N/VA:N/SC:L/SI:L/SA:N 
│                        │      │                         ╰ V40Score : 5.3 
│                        │      ├ References       ╭ [0] : https://github.com/TheDegenerateDev5150/net/commit/e
│                        │      │                  │       1fcd82abba34df74614020343be8eb1fe85f0d9 
│                        │      │                  ├ [1] : https://go.dev/cl/662715 
│                        │      │                  ├ [2] : https://go.dev/issue/73070 
│                        │      │                  ├ [3] : https://groups.google.com/g/golang-announce/c/ezSKR9
│                        │      │                  │       vqbqA 
│                        │      │                  ├ [4] : https://nvd.nist.gov/vuln/detail/CVE-2025-22872 
│                        │      │                  ├ [5] : https://pkg.go.dev/vuln/GO-2025-3595 
│                        │      │                  ├ [6] : https://security.netapp.com/advisory/ntap-20250516-0
│                        │      │                  │       007 
│                        │      │                  ├ [7] : https://security.netapp.com/advisory/ntap-20250516-0
│                        │      │                  │       007/ 
│                        │      │                  ├ [8] : https://ubuntu.com/security/notices/USN-8089-1 
│                        │      │                  ├ [9] : https://ubuntu.com/security/notices/USN-8089-2 
│                        │      │                  ├ [10]: https://ubuntu.com/security/notices/USN-8089-3 
│                        │      │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2025-22872 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22868 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:f010a8a906162173527c2d39190fb5b13fedfd1d5f7c87c42758
│                        │      │                   252214e36f7d 
│                        │      ├ Title           : An attacker can pass a malicious malformed token which
│                        │      │                   causes unexpect ... 
│                        │      ├ Description     : An attacker can pass a malicious malformed token which
│                        │      │                   causes unexpected memory to be consumed during parsing. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-1286 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ cbl-mariner: 3 
│                        │      │                  ├ ghsa       : 3 
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://bugzilla.redhat.com/show_bug.cgi?id=2347423 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/show_bug.cgi?id=2348366 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/show_bug.cgi?id=2352914 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2354195 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-22868 
│                        │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-27144 
│                        │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-29786 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-30204 
│                        │      │                  ├ [8] : https://errata.rockylinux.org/RLSA-2025:7479 
│                        │      │                  ├ [9] : https://go.dev/cl/652155 
│                        │      │                  ├ [10]: https://go.dev/issue/71490 
│                        │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2025-22868 
│                        │      │                  ╰ [12]: https://pkg.go.dev/vuln/GO-2025-3488 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33186 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:c0b55c76d34b416d963522c639f445948027baccb353ff81bc2b
│                        │      │                   e1827f854052 
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
│                        │      ├ VendorSeverity   ╭ amazon: 3 
│                        │      │                  ├ ghsa  : 4 
│                        │      │                  ├ photon: 4 
│                        │      │                  ╰ redhat: 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                        │      │                  │        │           H/A:N 
│                        │      │                  │        ╰ V3Score : 9.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 9.1 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33186 
│                        │      │                  ├ [1]: https://github.com/grpc/grpc-go 
│                        │      │                  ├ [2]: https://github.com/grpc/grpc-go/security/advisories/G
│                        │      │                  │      HSA-p77j-4mvh-x3m3 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-33186 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-33186 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-xr7q-jx4m-x55m 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:15f94390d8c81353b7f0628802763745be75769c4874cb3dd521
│                        │      │                   33a06b4c5afd 
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
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-68121 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:d51b28aa4bef06cd1db6efd830d0696ccb7117dc6424d060912a
│                        │      │                   4e1d9064cbe0 
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
│                        ├ [23] ╭ VulnerabilityID : CVE-2025-22871 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-3563 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.8, 1.24.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22871 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:acff04e5487623d8bc1d7129c446a5b343a1838e52bcc1298a90
│                        │      │                   b55585a804af 
│                        │      ├ Title           : The net/http package improperly accepts a bare LF as a line
│                        │      │                    terminator ... 
│                        │      ├ Description     : The net/http package improperly accepts a bare LF as a line
│                        │      │                    terminator in chunked data chunk-size lines. This can
│                        │      │                   permit request smuggling if a net/http server is used in
│                        │      │                   conjunction with a server that incorrectly accepts a bare
│                        │      │                   LF as part of a chunk-ext. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ bitnami    : 4 
│                        │      │                  ├ cbl-mariner: 3 
│                        │      │                  ├ ghsa       : 4 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 4 
│                        │      │                  ╰ rocky      : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                        │      │                  │         │           :H/A:N 
│                        │      │                  │         ╰ V3Score : 9.1 
│                        │      │                  ╰ ghsa    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:H/I
│                        │      │                            │           :H/A:N 
│                        │      │                            ╰ V3Score : 9.1 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/04/0
│                        │      │                  │       4/4 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:9635 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2358493 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2358493 
│                        │      │                  ├ [4] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -783943.html 
│                        │      │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-22871 
│                        │      │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2025-9635.html 
│                        │      │                  ├ [7] : https://errata.rockylinux.org/RLSA-2025:9635 
│                        │      │                  ├ [8] : https://github.com/roadrunner-server/roadrunner 
│                        │      │                  ├ [9] : https://github.com/roadrunner-server/roadrunner/comm
│                        │      │                  │       it/f269279ee87d0b88127741cad1042389af7605fa 
│                        │      │                  ├ [10]: https://github.com/roadrunner-server/roadrunner/issu
│                        │      │                  │       es/2166 
│                        │      │                  ├ [11]: https://github.com/roadrunner-server/roadrunner/rele
│                        │      │                  │       ases/tag/v2025.1.0 
│                        │      │                  ├ [12]: https://go.dev/cl/652998 
│                        │      │                  ├ [13]: https://go.dev/issue/71988 
│                        │      │                  ├ [14]: https://groups.google.com/g/golang-announce/c/Y2uBTV
│                        │      │                  │       KjBQk 
│                        │      │                  ├ [15]: https://linux.oracle.com/cve/CVE-2025-22871.html 
│                        │      │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2025-9845.html 
│                        │      │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2025-22871 
│                        │      │                  ╰ [18]: https://pkg.go.dev/vuln/GO-2025-3563 
│                        │      ├ PublishedDate   : 2025-04-08T20:15:20.183Z 
│                        │      ╰ LastModifiedDate: 2026-05-12T13:16:39.897Z 
│                        ├ [24] ╭ VulnerabilityID : CVE-2025-47906 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-3956 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.12, 1.24.6 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47906 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:9f791e13b35bd749fb241c55b774707d5f88811c4392ce74d274
│                        │      │                   0aa18e55af0d 
│                        │      ├ Title           : If the PATH environment variable contains paths which are
│                        │      │                   executables  ... 
│                        │      ├ Description     : If the PATH environment variable contains paths which are
│                        │      │                   executables (rather than just directories), passing certain
│                        │      │                    strings to LookPath ("", ".", and ".."), can result in the
│                        │      │                    binaries listed in the PATH being unexpectedly returned.[
│                        │      │                   m 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ╰ rocky      : 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/08/0
│                        │      │                  │       6/1 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:22005 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2396546 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2396546 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-47906 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2025-22005.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:22005 
│                        │      │                  ├ [7] : https://go.dev/cl/691775 
│                        │      │                  ├ [8] : https://go.dev/issue/74466 
│                        │      │                  ├ [9] : https://groups.google.com/g/golang-announce/c/x5MKro
│                        │      │                  │       ML2yM 
│                        │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2025-47906.html 
│                        │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-22668.html 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2025-47906 
│                        │      │                  ╰ [13]: https://pkg.go.dev/vuln/GO-2025-3956 
│                        │      ├ PublishedDate   : 2025-09-18T19:15:37.66Z 
│                        │      ╰ LastModifiedDate: 2026-01-27T19:56:17.707Z 
│                        ├ [25] ╭ VulnerabilityID : CVE-2025-47907 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-3849 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.12, 1.24.6 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47907 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:6cde7178779baf305fb557353aa3aa144369b0cb9b16fb567a1b
│                        │      │                   e9860ad84ee3 
│                        │      ├ Title           : Cancelling a query (e.g. by cancelling the context passed
│                        │      │                   to one of th ... 
│                        │      ├ Description     : Cancelling a query (e.g. by cancelling the context passed
│                        │      │                   to one of the query methods) during a call to the Scan
│                        │      │                   method of the returned Rows can result in unexpected
│                        │      │                   results if other queries are being made in parallel. This
│                        │      │                   can result in a race condition that may overwrite the
│                        │      │                   expected results with those of another query, causing the
│                        │      │                   call to Scan to return either unexpected results from the
│                        │      │                   other query or an error. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-362 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ cbl-mariner: 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ╰ photon     : 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I
│                        │      │                            │           :L/A:L 
│                        │      │                            ╰ V3Score : 7 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/08/0
│                        │      │                  │       6/1 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:20909 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2387083 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2393152 
│                        │      │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-20909.html 
│                        │      │                  ├ [5] : https://go.dev/cl/693735 
│                        │      │                  ├ [6] : https://go.dev/issue/74831 
│                        │      │                  ├ [7] : https://groups.google.com/g/golang-announce/c/x5MKro
│                        │      │                  │       ML2yM 
│                        │      │                  ├ [8] : https://linux.oracle.com/cve/CVE-2025-47907.html 
│                        │      │                  ├ [9] : https://linux.oracle.com/errata/ELSA-2025-20983.html 
│                        │      │                  ├ [10]: https://nvd.nist.gov/vuln/detail/CVE-2025-47907 
│                        │      │                  ╰ [11]: https://pkg.go.dev/vuln/GO-2025-3849 
│                        │      ├ PublishedDate   : 2025-08-07T16:15:30.357Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T19:11:50.67Z 
│                        ├ [26] ╭ VulnerabilityID : CVE-2025-47912 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4010 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47912 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:b998f184949a2ecf24e02f38edfc9e6f746428f02501b3d7395e
│                        │      │                   975b6a98bf0e 
│                        │      ├ Title           : The Parse function permits values other than IPv6 addresses
│                        │      │                    to be incl ... 
│                        │      ├ Description     : The Parse function permits values other than IPv6 addresses
│                        │      │                    to be included in square brackets within the host
│                        │      │                   component of a URL. RFC 3986 permits IPv6 addresses to be
│                        │      │                   included within the host component, enclosed within square
│                        │      │                   brackets. For example: "http://[::1]/". IPv4 addresses and
│                        │      │                   hostnames must not appear within square brackets. Parse did
│                        │      │                    not enforce this requirement. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ╰ photon : 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://go.dev/cl/709857 
│                        │      │                  ├ [2]: https://go.dev/issue/75678 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-47912 
│                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2025-4010 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:18.187Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T13:57:18.69Z 
│                        ├ [27] ╭ VulnerabilityID : CVE-2025-58183 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4014 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58183 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:bb314f378d87eb530f3965efa4bfbc5e2dac3fa9034fc0a52f4c
│                        │      │                   3a46a7315125 
│                        │      ├ Title           : tar.Reader does not set a maximum size on the number of
│                        │      │                   sparse region  ... 
│                        │      ├ Description     : tar.Reader does not set a maximum size on the number of
│                        │      │                   sparse region data blocks in GNU tar pax 1.0 sparse files.
│                        │      │                   A maliciously-crafted archive containing a large number of
│                        │      │                   sparse regions can cause a Reader to read an unbounded
│                        │      │                   amount of data from the archive into memory. When reading
│                        │      │                   from a compressed source, a small compressed input can
│                        │      │                   result in large allocations. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ amazon     : 3 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ cbl-mariner: 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ╰ rocky      : 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 4.3 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/10/0
│                        │      │                  │       8/1 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:1381 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2407258 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2407258 
│                        │      │                  ├ [4] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-58183 
│                        │      │                  ├ [5] : https://errata.almalinux.org/9/ALSA-2026-1381.html 
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2025:23326 
│                        │      │                  ├ [7] : https://go.dev/cl/709861 
│                        │      │                  ├ [8] : https://go.dev/issue/75677 
│                        │      │                  ├ [9] : https://groups.google.com/g/golang-announce/c/4Emdl2
│                        │      │                  │       iQ_bI 
│                        │      │                  ├ [10]: https://linux.oracle.com/cve/CVE-2025-58183.html 
│                        │      │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2026-50076.html 
│                        │      │                  ├ [12]: https://nvd.nist.gov/vuln/detail/CVE-2025-58183 
│                        │      │                  ╰ [13]: https://pkg.go.dev/vuln/GO-2025-4014 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.357Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [28] ╭ VulnerabilityID : CVE-2025-58185 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4011 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58185 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:31bfd656555d4f8d7dda9ba03261a8b72aa42777eb575444d94a
│                        │      │                   9c57dcc0006d 
│                        │      ├ Title           : Parsing a maliciously crafted DER payload could allocate
│                        │      │                   large amounts ... 
│                        │      ├ Description     : Parsing a maliciously crafted DER payload could allocate
│                        │      │                   large amounts of memory, causing memory exhaustion. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ╰ photon : 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://go.dev/cl/709856 
│                        │      │                  ├ [2]: https://go.dev/issue/75671 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-58185 
│                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2025-4011 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.45Z 
│                        │      ╰ LastModifiedDate: 2026-02-06T20:26:41.997Z 
│                        ├ [29] ╭ VulnerabilityID : CVE-2025-58186 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4012 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58186 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:c23825bddde5d71fc52fb27133bee1a467becec78fb332ddd963
│                        │      │                   9e6daf1dbc91 
│                        │      ├ Title           : Despite HTTP headers having a default limit of 1MB, the
│                        │      │                   number of cook ... 
│                        │      ├ Description     : Despite HTTP headers having a default limit of 1MB, the
│                        │      │                   number of cookies that can be parsed does not have a limit.
│                        │      │                    By sending a lot of very small cookies such as "a=;", an
│                        │      │                   attacker can make an HTTP server allocate a large amount of
│                        │      │                    structs, causing large memory consumption. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ╰ photon : 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://go.dev/cl/709855 
│                        │      │                  ├ [2]: https://go.dev/issue/75672 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-58186 
│                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2025-4012 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.547Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [30] ╭ VulnerabilityID : CVE-2025-58187 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4007 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.9, 1.25.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58187 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:67c27782f3a5f449f5f742b5ebe49c8f03e29b13facb7c0ea06c
│                        │      │                   09d09b46949c 
│                        │      ├ Title           : Due to the design of the name constraint checking
│                        │      │                   algorithm, the proce ... 
│                        │      ├ Description     : Due to the design of the name constraint checking
│                        │      │                   algorithm, the processing time of some inputs scale
│                        │      │                   non-linearly with respect to the size of the certificate.
│                        │      │                   This affects programs which validate arbitrary certificate
│                        │      │                   chains. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-407 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ╰ photon : 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://go.dev/cl/709854 
│                        │      │                  ├ [2]: https://go.dev/issue/75681 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-58187 
│                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2025-4007 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.643Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T16:02:27.08Z 
│                        ├ [31] ╭ VulnerabilityID : CVE-2025-58188 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4013 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58188 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:282ababed7c619d8ad221043de2cea8f87a4ca57bbde347fa0ad
│                        │      │                   3d1cef711abe 
│                        │      ├ Title           : Validating certificate chains which contain DSA public keys
│                        │      │                    can cause  ... 
│                        │      ├ Description     : Validating certificate chains which contain DSA public keys
│                        │      │                    can cause programs to panic, due to a interface cast that
│                        │      │                   assumes they implement the Equal method. This affects
│                        │      │                   programs which validate arbitrary certificate chains. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-295 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ╰ photon : 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://go.dev/cl/709853 
│                        │      │                  ├ [2]: https://go.dev/issue/75675 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-58188 
│                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2025-4013 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.74Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T15:55:11.97Z 
│                        ├ [32] ╭ VulnerabilityID : CVE-2025-58189 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4008 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58189 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0f545622f5c25e92dcfe3da2de61f4eb4701a0ed629e16ca734a
│                        │      │                   7e23fb52c3d1 
│                        │      ├ Title           : When Conn.Handshake fails during ALPN negotiation the error
│                        │      │                    contains a ... 
│                        │      ├ Description     : When Conn.Handshake fails during ALPN negotiation the error
│                        │      │                    contains attacker controlled information (the ALPN
│                        │      │                   protocols sent by the client) which is not escaped. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-532 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ╰ photon : 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://go.dev/cl/707776 
│                        │      │                  ├ [2]: https://go.dev/issue/75652 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-58189 
│                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2025-4008 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.833Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T15:49:24.543Z 
│                        ├ [33] ╭ VulnerabilityID : CVE-2025-61723 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4009 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61723 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f9caabac52e1078b8d3199c5088f388f5b914a7a333e6ef0a5a2
│                        │      │                   66c47d7d72e4 
│                        │      ├ Title           : The processing time for parsing some invalid inputs scales
│                        │      │                   non-linearl ... 
│                        │      ├ Description     : The processing time for parsing some invalid inputs scales
│                        │      │                   non-linearly with respect to the size of the input. This
│                        │      │                   affects programs which parse untrusted PEM inputs. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ╰ photon : 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://go.dev/cl/709858 
│                        │      │                  ├ [2]: https://go.dev/issue/75676 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-61723 
│                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2025-4009 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:19.927Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T15:49:05.343Z 
│                        ├ [34] ╭ VulnerabilityID : CVE-2025-61724 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4015 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61724 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0fddebeee1d62a8caf2ab5b75f06ad35a2195c4693705a2778e4
│                        │      │                   1761942f03b5 
│                        │      ├ Title           : The Reader.ReadResponse function constructs a response
│                        │      │                   string through  ... 
│                        │      ├ Description     : The Reader.ReadResponse function constructs a response
│                        │      │                   string through repeated string concatenation of lines. When
│                        │      │                    the number of lines in a response is large, this can cause
│                        │      │                    excessive CPU consumption. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ╰ photon : 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:L 
│                        │      │                            ╰ V3Score : 5.3 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://go.dev/cl/709859 
│                        │      │                  ├ [2]: https://go.dev/issue/75716 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-61724 
│                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2025-4015 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:20.02Z 
│                        │      ╰ LastModifiedDate: 2026-01-29T15:30:53.69Z 
│                        ├ [35] ╭ VulnerabilityID : CVE-2025-61725 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4006 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.8, 1.25.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61725 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:9622100cc8041d4df811769e66763df150ad05e8820caf680cfa
│                        │      │                   5aeb7ec727ae 
│                        │      ├ Title           : The ParseAddress function constructs domain-literal address
│                        │      │                    components ... 
│                        │      ├ Description     : The ParseAddress function constructs domain-literal address
│                        │      │                    components through repeated string concatenation. When
│                        │      │                   parsing large domain-literal components, this can cause
│                        │      │                   excessive CPU consumption. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ╰ photon : 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/10/08/1 
│                        │      │                  ├ [1]: https://go.dev/cl/709860 
│                        │      │                  ├ [2]: https://go.dev/issue/75680 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/4Emdl2i
│                        │      │                  │      Q_bI 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2025-61725 
│                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2025-4006 
│                        │      ├ PublishedDate   : 2025-10-29T23:16:20.113Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [36] ╭ VulnerabilityID : CVE-2025-61726 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4341 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.12, 1.25.6 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61726 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:93faa136909bca59ffc34647373182f2f982a932e2ad6e02d248
│                        │      │                   a0495d9db86c 
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
│                        │      │                  ├ amazon     : 2 
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
│                        ├ [37] ╭ VulnerabilityID : CVE-2025-61727 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4175 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.11, 1.25.5 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61727 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:79e356b93e9b7a9479a53610f776f8a9d4ade07342a979b6e7d7
│                        │      │                   a344462dba49 
│                        │      ├ Title           : An excluded subdomain constraint in a certificate chain
│                        │      │                   does not restr ... 
│                        │      ├ Description     : An excluded subdomain constraint in a certificate chain
│                        │      │                   does not restrict the usage of wildcard SANs in the leaf
│                        │      │                   certificate. For example a constraint that excludes the
│                        │      │                   subdomain test.example.com does not prevent a leaf
│                        │      │                   certificate from claiming the SAN *.example.com. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-295 
│                        │      ├ VendorSeverity   ╭ amazon : 3 
│                        │      │                  ├ bitnami: 2 
│                        │      │                  ╰ photon : 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/723900 
│                        │      │                  ├ [1]: https://go.dev/issue/76442 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/8FJoBkP
│                        │      │                  │      ddm4 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2025-61727 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2025-4175 
│                        │      ├ PublishedDate   : 2025-12-03T20:16:25.607Z 
│                        │      ╰ LastModifiedDate: 2025-12-18T20:15:10.957Z 
│                        ├ [38] ╭ VulnerabilityID : CVE-2025-61729 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-4155 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.11, 1.25.5 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61729 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:d1284baeb52ce3ca489612be46032ee73c6654776edfb1d68d78
│                        │      │                   4181d75b780b 
│                        │      ├ Title           : Within HostnameError.Error(), when constructing an error
│                        │      │                   string, there ... 
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
│                        │      │                  ╰ rocky      : 3 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:3928 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/2418462 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2434432 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2437111 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2418462 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2434432 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2437111 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-61726 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-61729 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-68121 
│                        │      │                  ├ [10]: https://errata.almalinux.org/9/ALSA-2026-3928.html 
│                        │      │                  ├ [11]: https://errata.rockylinux.org/RLSA-2026:3928 
│                        │      │                  ├ [12]: https://go.dev/cl/725920 
│                        │      │                  ├ [13]: https://go.dev/issue/76445 
│                        │      │                  ├ [14]: https://groups.google.com/g/golang-announce/c/8FJoBk
│                        │      │                  │       Pddm4 
│                        │      │                  ├ [15]: https://linux.oracle.com/cve/CVE-2025-61729.html 
│                        │      │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2026-5146.html 
│                        │      │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2025-61729 
│                        │      │                  ╰ [18]: https://pkg.go.dev/vuln/GO-2025-4155 
│                        │      ├ PublishedDate   : 2025-12-02T19:15:51.447Z 
│                        │      ╰ LastModifiedDate: 2025-12-19T18:25:28.283Z 
│                        ├ [39] ╭ VulnerabilityID : CVE-2026-25679 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4601 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.8, 1.26.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25679 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:7b2e2fb645f3b2c340b9fe2de40258854d3d27f3bad7b7a79c23
│                        │      │                   4e4f4d3eaeb7 
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
│                        │      │                  ├ [6] : https://errata.rockylinux.org/RLSA-2026:8841 
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
│                        ├ [40] ╭ VulnerabilityID : CVE-2026-32280 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4947 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32280 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:7c33a904e5815a534426966244ac73c7b3702d517fa679ae2696
│                        │      │                   da24287c24a2 
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
│                        │      │                  ├ amazon     : 2 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:14200 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-32280 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2456336 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2456338 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2456339 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2456336 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2456338 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32280 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32282 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32283 
│                        │      │                  ├ [11]: https://errata.almalinux.org/9/ALSA-2026-14200.html 
│                        │      │                  ├ [12]: https://errata.rockylinux.org/RLSA-2026:14200 
│                        │      │                  ├ [13]: https://go.dev/cl/758320 
│                        │      │                  ├ [14]: https://go.dev/issue/78282 
│                        │      │                  ├ [15]: https://groups.google.com/g/golang-announce/c/0uYbvb
│                        │      │                  │       PZRWU 
│                        │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-32280.html 
│                        │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-16875.html 
│                        │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-32280 
│                        │      │                  ├ [19]: https://pkg.go.dev/vuln/GO-2026-4947 
│                        │      │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-32280 
│                        │      ├ PublishedDate   : 2026-04-08T02:16:03.247Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T19:16:42.18Z 
│                        ├ [41] ╭ VulnerabilityID : CVE-2026-32281 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4946 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32281 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:6385815fca7d7024e2a44180a353737579f1bf9eea3f63c42edd
│                        │      │                   321961fdc1e9 
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
│                        │      ├ VendorSeverity   ╭ amazon : 2 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ├ nvd    : 3 
│                        │      │                  ╰ redhat : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 5.9 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-32281 
│                        │      │                  ├ [1]: https://go.dev/cl/758061 
│                        │      │                  ├ [2]: https://go.dev/issue/78281 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/0uYbvbP
│                        │      │                  │      ZRWU 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-32281 
│                        │      │                  ├ [5]: https://pkg.go.dev/vuln/GO-2026-4946 
│                        │      │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-32281 
│                        │      ├ PublishedDate   : 2026-04-08T02:16:03.35Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T19:15:57.75Z 
│                        ├ [42] ╭ VulnerabilityID : CVE-2026-32283 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4870 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32283 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:ca472874ee61ff73878fc81f797b353a454706aa30c87256faf9
│                        │      │                   3f43c010418b 
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
│                        │      │                  ├ amazon     : 2 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:14200 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-32283 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2456336 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2456338 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2456339 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2456336 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2456338 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32280 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32282 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32283 
│                        │      │                  ├ [11]: https://errata.almalinux.org/9/ALSA-2026-14200.html 
│                        │      │                  ├ [12]: https://errata.rockylinux.org/RLSA-2026:14200 
│                        │      │                  ├ [13]: https://go.dev/cl/763767 
│                        │      │                  ├ [14]: https://go.dev/issue/78334 
│                        │      │                  ├ [15]: https://groups.google.com/g/golang-announce/c/0uYbvb
│                        │      │                  │       PZRWU 
│                        │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-32283.html 
│                        │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-17075.html 
│                        │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-32283 
│                        │      │                  ├ [19]: https://pkg.go.dev/vuln/GO-2026-4870 
│                        │      │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-32283 
│                        │      ├ PublishedDate   : 2026-04-08T02:16:03.58Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T19:12:10.54Z 
│                        ├ [43] ╭ VulnerabilityID : CVE-2026-33811 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4981 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33811 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:6975d55c95e86352169eef596eef3a1a220b451c0e4b6c5f5c82
│                        │      │                   c9a05d751979 
│                        │      ├ Title           : When using LookupCNAME with the cgo DNS resolver, a very
│                        │      │                   long CNAME re ... 
│                        │      ├ Description     : When using LookupCNAME with the cgo DNS resolver, a very
│                        │      │                   long CNAME response can trigger a double-free of C memory
│                        │      │                   and a crash. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-415 
│                        │      ├ VendorSeverity   ╭ bitnami: 3 
│                        │      │                  ╰ nvd    : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/767860 
│                        │      │                  ├ [1]: https://go.dev/issue/78803 
│                        │      │                  ├ [2]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-33811 
│                        │      │                  ╰ [4]: https://pkg.go.dev/vuln/GO-2026-4981 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:42.77Z 
│                        │      ╰ LastModifiedDate: 2026-05-12T20:23:02.333Z 
│                        ├ [44] ╭ VulnerabilityID : CVE-2026-33814 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4918 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:fe1b69ff61320c7610ea89edb8a46be2dc1770b94932179d254a
│                        │      │                   9038d86d412b 
│                        │      ├ Title           : When processing HTTP/2 SETTINGS frames, transport will
│                        │      │                   enter an infini ... 
│                        │      ├ Description     : When processing HTTP/2 SETTINGS frames, transport will
│                        │      │                   enter an infinite loop of writing CONTINUATION frames if it
│                        │      │                    receives a SETTINGS_MAX_FRAME_SIZE with a value of 0. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-835 
│                        │      ├ VendorSeverity   ╭ azure  : 3 
│                        │      │                  ├ bitnami: 3 
│                        │      │                  ╰ nvd    : 3 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                  │         │           :N/A:H 
│                        │      │                  │         ╰ V3Score : 7.5 
│                        │      │                  ╰ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │      │                            │           :N/A:H 
│                        │      │                            ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://go.dev/cl/761581 
│                        │      │                  ├ [1]: https://go.dev/cl/761640 
│                        │      │                  ├ [2]: https://go.dev/issue/78476 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │      │                  ╰ [5]: https://pkg.go.dev/vuln/GO-2026-4918 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T14:41:59.52Z 
│                        ├ [45] ╭ VulnerabilityID : CVE-2026-39820 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4986 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39820 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:5f3fb5c61e8b9f4caae83ed694739b7ef62603671b7546f77225
│                        │      │                   99e6df314557 
│                        │      ├ Title           : Well-crafted inputs reaching ParseAddress,
│                        │      │                   ParseAddressList, and Parse ... 
│                        │      ├ Description     : Well-crafted inputs reaching ParseAddress,
│                        │      │                   ParseAddressList, and ParseDate were able to trigger
│                        │      │                   excessive CPU exhaustion and memory allocations. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ bitnami: 3 
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
│                        ├ [46] ╭ VulnerabilityID : CVE-2026-39836 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4971 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39836 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0a67f8e9e53e6ee06dd27eb1fba011b9c2f834856d35df7f33fa
│                        │      │                   28a12d8e779b 
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
│                        ├ [47] ╭ VulnerabilityID : CVE-2026-42499 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4977 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42499 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f13e65d3ffa0699e07e67198378fc39b048dac8eadf92f8c0460
│                        │      │                   ad37fd3b9246 
│                        │      ├ Title           : Pathological inputs could cause DoS through consumePhrase
│                        │      │                   when parsing ... 
│                        │      ├ Description     : Pathological inputs could cause DoS through consumePhrase
│                        │      │                   when parsing an email address according to RFC 5322. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ─ bitnami: 3 
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
│                        ├ [48] ╭ VulnerabilityID : CVE-2025-0913 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-3750 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.10, 1.24.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-0913 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:cc7143d9f6ed47c60b1f3b5fa861f407a77175efbd5050c15681
│                        │      │                   552beb8fcd7f 
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
│                        ├ [49] ╭ VulnerabilityID : CVE-2025-22870 
│                        │      ├ VendorIDs        ╭ [0]: GHSA-qxp5-gwg8-xv66 
│                        │      │                  ╰ [1]: GO-2025-3503 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.7, 1.24.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22870 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0bb38c62e722f2f2131f4ec37abdbe1e39f4d23c0106a502c0b6
│                        │      │                   2a6b2136837b 
│                        │      ├ Title           : Matching of hosts against proxy patterns can improperly
│                        │      │                   treat an IPv6  ... 
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
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N/
│                        │      │                         │           A:L 
│                        │      │                         ╰ V3Score : 4.4 
│                        │      ├ References       ╭ [0] : http://www.openwall.com/lists/oss-security/2025/03/0
│                        │      │                  │       7/2 
│                        │      │                  ├ [1] : https://github.com/golang/go/issues/71984 
│                        │      │                  ├ [2] : https://go-review.googlesource.com/q/project:net 
│                        │      │                  ├ [3] : https://go.dev/cl/654697 
│                        │      │                  ├ [4] : https://go.dev/issue/71984 
│                        │      │                  ├ [5] : https://groups.google.com/g/golang-announce/c/4t3lzH
│                        │      │                  │       3I0eI/m/b42ImqrBAQAJ 
│                        │      │                  ├ [6] : https://nvd.nist.gov/vuln/detail/CVE-2025-22870 
│                        │      │                  ├ [7] : https://pkg.go.dev/vuln/GO-2025-3503 
│                        │      │                  ├ [8] : https://security.netapp.com/advisory/ntap-20250509-0
│                        │      │                  │       007 
│                        │      │                  ├ [9] : https://security.netapp.com/advisory/ntap-20250509-0
│                        │      │                  │       007/ 
│                        │      │                  ├ [10]: https://ubuntu.com/security/notices/USN-7574-1 
│                        │      │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2025-22870 
│                        │      ├ PublishedDate   : 2025-03-12T19:15:38.31Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T23:16:32.86Z 
│                        ├ [50] ╭ VulnerabilityID : CVE-2025-22873 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4403 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.9, 1.24.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-22873 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:2d23aa47ca2579101bfeb8c49019bbce61def0e3d06898994cef
│                        │      │                   2945aac5c3e8 
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
│                        ├ [51] ╭ VulnerabilityID : CVE-2025-4673 
│                        │      ├ VendorIDs        ─ [0]: GO-2025-3751 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.23.10, 1.24.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-4673 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:cf72bd505a59bd51504dfbd6d374be96d3f586867e2d84e52ff5
│                        │      │                   5d562cf7636b 
│                        │      ├ Title           : Proxy-Authorization and Proxy-Authenticate headers
│                        │      │                   persisted on cross- ... 
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
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:C/C:H/I
│                        │      │                            │           :N/A:N 
│                        │      │                            ╰ V3Score : 6.8 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:15887 
│                        │      │                  ├ [1] : https://bugzilla.redhat.com/2373305 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/show_bug.cgi?id=2373305 
│                        │      │                  ├ [3] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       025-4673 
│                        │      │                  ├ [4] : https://errata.almalinux.org/9/ALSA-2025-15887.html 
│                        │      │                  ├ [5] : https://errata.rockylinux.org/RLSA-2025:15887 
│                        │      │                  ├ [6] : https://go.dev/cl/679257 
│                        │      │                  ├ [7] : https://go.dev/issue/73816 
│                        │      │                  ├ [8] : https://groups.google.com/g/golang-announce/c/ufZ8Wp
│                        │      │                  │       EsA3A 
│                        │      │                  ├ [9] : https://linux.oracle.com/cve/CVE-2025-4673.html 
│                        │      │                  ├ [10]: https://linux.oracle.com/errata/ELSA-2025-10677.html 
│                        │      │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2025-4673 
│                        │      │                  ├ [12]: https://pkg.go.dev/vuln/GO-2025-3751 
│                        │      │                  ├ [13]: https://ubuntu.com/security/notices/USN-7574-1 
│                        │      │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2025-4673 
│                        │      ├ PublishedDate   : 2025-06-11T17:15:42.993Z 
│                        │      ╰ LastModifiedDate: 2026-04-15T00:35:42.02Z 
│                        ├ [52] ╭ VulnerabilityID : CVE-2025-61728 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4342 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.12, 1.25.6 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61728 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:05b8b1feeeb854e8e8eab4c3f68e5734d497100fd129e5fcd0b1
│                        │      │                   eb045df0bcdb 
│                        │      ├ Title           : golang: archive/zip: Excessive CPU consumption when
│                        │      │                   building archive index in archive/zip 
│                        │      ├ Description     : archive/zip uses a super-linear file name indexing
│                        │      │                   algorithm that is invoked the first time a file in an
│                        │      │                   archive is opened. This can lead to a denial of service
│                        │      │                   when consuming a maliciously constructed ZIP archive. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
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
│                        │      │                  ├ [16]: https://errata.rockylinux.org/RLSA-2026:3337 
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
│                        ├ [53] ╭ VulnerabilityID : CVE-2025-61730 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4340 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.24.12, 1.25.6 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-61730 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:1dbfa37d200264570a3c796b5fe501bb5c4bcc8a1b60cec291b9
│                        │      │                   eee1d8bf9883 
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
│                        ├ [54] ╭ VulnerabilityID : CVE-2026-27142 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4603 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.8, 1.26.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27142 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:808de7454ddb2a4a795363e3c04a5f2c47147925ae1b2cad7912
│                        │      │                   0717ec2866ea 
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
│                        ├ [55] ╭ VulnerabilityID : CVE-2026-32282 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4864 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32282 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:a3bdd9d83ea435063f86d0bc4c722daea195a81eedc5fc9b32c0
│                        │      │                   87d86240d496 
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
│                        │      │                  ├ amazon     : 2 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:14200 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-32282 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2456336 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2456338 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2456339 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2456336 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2456338 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2456339 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32280 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32282 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-32283 
│                        │      │                  ├ [11]: https://errata.almalinux.org/9/ALSA-2026-14200.html 
│                        │      │                  ├ [12]: https://errata.rockylinux.org/RLSA-2026:14200 
│                        │      │                  ├ [13]: https://go.dev/cl/763761 
│                        │      │                  ├ [14]: https://go.dev/issue/78293 
│                        │      │                  ├ [15]: https://groups.google.com/g/golang-announce/c/0uYbvb
│                        │      │                  │       PZRWU 
│                        │      │                  ├ [16]: https://linux.oracle.com/cve/CVE-2026-32282.html 
│                        │      │                  ├ [17]: https://linux.oracle.com/errata/ELSA-2026-17075.html 
│                        │      │                  ├ [18]: https://nvd.nist.gov/vuln/detail/CVE-2026-32282 
│                        │      │                  ├ [19]: https://pkg.go.dev/vuln/GO-2026-4864 
│                        │      │                  ╰ [20]: https://www.cve.org/CVERecord?id=CVE-2026-32282 
│                        │      ├ PublishedDate   : 2026-04-08T02:16:03.467Z 
│                        │      ╰ LastModifiedDate: 2026-04-16T19:15:39.4Z 
│                        ├ [56] ╭ VulnerabilityID : CVE-2026-32288 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4869 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32288 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:16594f0aa6307d3c0c6847169295d4affa5cb88173237a96fa54
│                        │      │                   02e2d5e71a27 
│                        │      ├ Title           : archive/tar: golang: Go's archive/tar package: Denial of
│                        │      │                   Service via maliciously-crafted archive 
│                        │      ├ Description     : tar.Reader can allocate an unbounded amount of memory when
│                        │      │                   reading a maliciously-crafted archive containing a large
│                        │      │                   number of sparse regions encoded in the "old GNU sparse
│                        │      │                   map" format. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-770 
│                        │      ├ VendorSeverity   ╭ amazon : 2 
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
│                        ├ [57] ╭ VulnerabilityID : CVE-2026-32289 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4865 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.9, 1.26.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-32289 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:2bf24c7fb6fd25840e3b17c38cf43a130f7ea30238d2ef37cbf1
│                        │      │                   d7145550a31c 
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
│                        │      ├ VendorSeverity   ╭ amazon : 2 
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
│                        ├ [58] ╭ VulnerabilityID : CVE-2026-39823 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4982 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39823 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:32e9c65a12e0a95e60bc3654ddd32542991471145ed42f8ef6ca
│                        │      │                   7ffaa7205331 
│                        │      ├ Title           : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │      │                    correctly  ... 
│                        │      ├ Description     : CVE-2026-27142 fixed a vulnerability in which URLs were not
│                        │      │                    correctly escaped inside of a <meta> tag's <content>
│                        │      │                   attribute. If the URL content were to insert ASCII
│                        │      │                   whitespaces around the '=' rune inside of the <content>
│                        │      │                   attribute, the escaper would fail to similarly escape it,
│                        │      │                   leading to XSS. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-79 
│                        │      ├ VendorSeverity   ─ bitnami: 2 
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
│                        ├ [59] ╭ VulnerabilityID : CVE-2026-39825 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4976 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39825 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:d9582e56069415e30b62463bd16d8d3014665face4c895fe11e6
│                        │      │                   aebeeda620d7 
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
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ─ bitnami: 2 
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
│                        ├ [60] ╭ VulnerabilityID : CVE-2026-39826 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4980 
│                        │      ├ PkgID           : stdlib@v1.22.12 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                        │      │                  ╰ UID : a3059653e617f681 
│                        │      ├ InstalledVersion: v1.22.12 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                        │      │                  │         b50965a5704335972fcd3 
│                        │      │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                        │      │                            45533142f27c10df0e094 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39826 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:02acef1f02b571c266fd915e56f871b5f3eb1cea5ada9de4b0ac
│                        │      │                   0c957b4d5bef 
│                        │      ├ Title           : If a trusted template author were to write a <script> tag
│                        │      │                   containing a ... 
│                        │      ├ Description     : If a trusted template author were to write a <script> tag
│                        │      │                   containing an empty 'type' attribute or a 'type' attribute
│                        │      │                   with an ASCII whitespace, the execution of the template
│                        │      │                   would incorrectly escape any data passed into the <script>
│                        │      │                   block. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-116 
│                        │      ├ VendorSeverity   ─ bitnami: 2 
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
│                        ╰ [61] ╭ VulnerabilityID : CVE-2026-27139 
│                               ├ VendorIDs        ─ [0]: GO-2026-4602 
│                               ├ PkgID           : stdlib@v1.22.12 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.22.12 
│                               │                  ╰ UID : a3059653e617f681 
│                               ├ InstalledVersion: v1.22.12 
│                               ├ FixedVersion    : 1.25.8, 1.26.1 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691
│                               │                  │         b50965a5704335972fcd3 
│                               │                  ╰ DiffID: sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e032
│                               │                            45533142f27c10df0e094 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27139 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:d0c409a88407353e4fc920ede6454e2b0330d23a836134be992e
│                               │                   031711b7dfde 
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
│                      ├ Layer     ╭ Digest   : sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b50965a570433
│                      │           │            5972fcd3 
│                      │           ├ DiffID   : sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e03245533142f27c1
│                      │           │            0df0e094 
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
│                      ├ Layer     ╭ Digest   : sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b50965a570433
│                      │           │            5972fcd3 
│                      │           ├ DiffID   : sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e03245533142f27c1
│                      │           │            0df0e094 
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
                       ├ Layer     ╭ Digest   : sha256:b82000af5f3a17bb17f9e21670c8abedb9165bdb691b50965a570433
                       │           │            5972fcd3 
                       │           ├ DiffID   : sha256:4826fab554e2719dc7204c18d73b9abf0c80fa4e03245533142f27c1
                       │           │            0df0e094 
                       │           ╰ CreatedBy: COPY / / # buildkit 
                       ╰ Offset   : 36 
```
