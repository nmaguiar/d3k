```yaml
╭ [0]  ╭ Target         : nmaguiar/d3k:build (ubuntu 26.04) 
│      ├ Class          : os-pkgs 
│      ├ Type           : ubuntu 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]   ╭ VulnerabilityID : CVE-2026-27456 
│                        │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                        │       ├ PkgName         : bsdutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&
│                        │       │                  │       distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : d513a572db034d99 
│                        │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:11fab7a5f3a2be4b8c1c38cfcf2179a8d767fe45ea6ed7fd4df
│                        │       │                   e807f6a14eabe 
│                        │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │       │                   loop devices 
│                        │       ├ Description     : util-linux is a random collection of Linux utilities.
│                        │       │                   Prior to version 2.41.4, a TOCTOU
│                        │       │                   (Time-of-Check-Time-of-Use) vulnerability has been
│                        │       │                   identified in the SUID binary /usr/bin/mount from
│                        │       │                   util-linux. The mount binary, when setting up loop
│                        │       │                   devices, validates the source file path with user
│                        │       │                   privileges via fork() + setuid() + realpath(), but
│                        │       │                   subsequently re-canonicalizes and opens it with root
│                        │       │                   privileges (euid=0) without verifying that the path has
│                        │       │                   not been replaced between both operations. Neither
│                        │       │                   O_NOFOLLOW, nor inode comparison, nor post-open fstat()
│                        │       │                   are employed. This allows a local unprivileged user to
│                        │       │                   replace the source file with a symlink pointing to any
│                        │       │                   root-owned file or device during the race window, causing
│                        │       │                   the SUID binary to open and mount it as root. Exploitation
│                        │       │                    requires an /etc/fstab entry with user,loop options whose
│                        │       │                    path points to a directory where the attacker has write
│                        │       │                   permission, and that /usr/bin/mount has the SUID bit set
│                        │       │                   (the default configuration on virtually all Linux
│                        │       │                   distributions). The impact is unauthorized read access to
│                        │       │                   root-protected files and block devices, including backup
│                        │       │                   images, disk volumes, and any file containing a valid
│                        │       │                   filesystem. This issue has been patched in version
│                        │       │                   2.41.4. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-59 
│                        │       │                  ├ [1]: CWE-269 
│                        │       │                  ╰ [2]: CWE-367 
│                        │       ├ VendorSeverity   ╭ azure       : 2 
│                        │       │                  ├ bottlerocket: 2 
│                        │       │                  ├ julia       : 2 
│                        │       │                  ├ redhat      : 2 
│                        │       │                  ╰ ubuntu      : 2 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                  │        │           :N/A:N 
│                        │       │                  │        ╰ V3Score : 4.7 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :N/A:N 
│                        │       │                           ╰ V3Score : 4.7 
│                        │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │       │                  │      26-27456 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core
│                        │       │                  │      -kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sx
│                        │       │                  │      d.toml 
│                        │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e39
│                        │       │                  │      0467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/ta
│                        │       │                  │      g/v2.41.4 
│                        │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/ad
│                        │       │                  │      visories/GHSA-qq4x-vfq4-9h9g 
│                        │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [1]   ╭ VulnerabilityID : CVE-2026-3184 
│                        │       ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                        │       ├ PkgName         : bsdutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&
│                        │       │                  │       distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : d513a572db034d99 
│                        │       ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:36042819bb40f8d60c2fb1305bcf95eac55c780358a73e14a08
│                        │       │                   263ba8b0ccc31 
│                        │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │       │                   improper hostname canonicalization 
│                        │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │       │                   canonicalization in the `login(1)` utility, when invoked
│                        │       │                   with the `-h` option, can modify the supplied remote
│                        │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │       │                   could exploit this by providing a specially crafted
│                        │       │                   hostname, potentially bypassing host-based Pluggable
│                        │       │                   Authentication Modules (PAM) access control rules that
│                        │       │                   rely on fully qualified domain names. This could lead to
│                        │       │                   unauthorized access. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-289 
│                        │       ├ VendorSeverity   ╭ azure : 1 
│                        │       │                  ├ nvd   : 2 
│                        │       │                  ├ photon: 2 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 5.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.7 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │       ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [2]   ╭ VulnerabilityID : CVE-2024-52005 
│                        │       ├ PkgID           : git@1:2.53.0-1ubuntu1 
│                        │       ├ PkgName         : git 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.53.0-1ubuntu1?arch=amd64&distr
│                        │       │                  │       o=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : 52058baed6a8c082 
│                        │       ├ InstalledVersion: 1:2.53.0-1ubuntu1 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:fe698e601ba941cdd560aed469ae088fe83b49cba889173c57e
│                        │       │                   35ac4403bc96f 
│                        │       ├ Title           : git: The sideband payload is passed unfiltered to the
│                        │       │                   terminal in git 
│                        │       ├ Description     : Git is a source code management tool. When cloning from a
│                        │       │                   server (or fetching, or pushing), informational or error
│                        │       │                   messages are transported from the remote Git process to
│                        │       │                   the client via the so-called "sideband channel". These
│                        │       │                   messages will be prefixed with "remote:" and printed
│                        │       │                   directly to the standard error output. Typically, this
│                        │       │                   standard error output is connected to a terminal that
│                        │       │                   understands ANSI escape sequences, which Git did not
│                        │       │                   protect against. Most modern terminals support control
│                        │       │                   sequences that can be used by a malicious actor to hide
│                        │       │                   and misrepresent information, or to mislead the user into
│                        │       │                   executing untrusted scripts. As requested on the
│                        │       │                   git-security mailing list, the patches are under
│                        │       │                   discussion on the public mailing list. Users are advised
│                        │       │                   to update as soon as possible. Users unable to upgrade
│                        │       │                   should avoid recursive clones unless they are from trusted
│                        │       │                    sources. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-116 
│                        │       │                  ╰ [1]: CWE-150 
│                        │       ├ VendorSeverity   ╭ alma       : 2 
│                        │       │                  ├ amazon     : 2 
│                        │       │                  ├ bitnami    : 3 
│                        │       │                  ├ nvd        : 3 
│                        │       │                  ├ oracle-oval: 2 
│                        │       │                  ├ redhat     : 2 
│                        │       │                  ├ rocky      : 2 
│                        │       │                  ╰ ubuntu     : 2 
│                        │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:N/PR:N/UI:A/VC
│                        │       │                  │         │            :H/VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │       │                  │         ╰ V40Score : 7.5 
│                        │       │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/
│                        │       │                  │         │           I:H/A:H 
│                        │       │                  │         ╰ V3Score : 8.8 
│                        │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/
│                        │       │                            │           I:H/A:H 
│                        │       │                            ╰ V3Score : 7.5 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7409 
│                        │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:8414 
│                        │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2024-52005 
│                        │       │                  ├ [3] : https://bugzilla.redhat.com/2338289 
│                        │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2338289 
│                        │       │                  ├ [5] : https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2024-52005 
│                        │       │                  ├ [7] : https://errata.almalinux.org/8/ALSA-2025-8414.html 
│                        │       │                  ├ [8] : https://errata.rockylinux.org/RLSA-2025:7409 
│                        │       │                  ├ [9] : https://github.com/git/git/security/advisories/GHSA
│                        │       │                  │       -7jjc-gg6m-3329 
│                        │       │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-52005.html 
│                        │       │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-8414.html 
│                        │       │                  ├ [12]: https://lore.kernel.org/git/1M9FnZ-1taoNo1wwh-00ESS
│                        │       │                  │       d@mail.gmx.net 
│                        │       │                  ├ [13]: https://lore.kernel.org/git/8570a129-d66a-465a-905e
│                        │       │                  │       -0a077c69c409@gmail.com/T/#t 
│                        │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-52005 
│                        │       │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-52005 
│                        │       ├ PublishedDate   : 2025-01-15T18:15:24.13Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T08:06:47.217Z 
│                        ├ [3]   ╭ VulnerabilityID : CVE-2024-52005 
│                        │       ├ PkgID           : git-man@1:2.53.0-1ubuntu1 
│                        │       ├ PkgName         : git-man 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.53.0-1ubuntu1?arch=all&dis
│                        │       │                  │       tro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : a19d1931460c0147 
│                        │       ├ InstalledVersion: 1:2.53.0-1ubuntu1 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:1b6db319ca625f8076c213619b0cfed68b872a7807c7dce10d9
│                        │       │                   1f671c2c27931 
│                        │       ├ Title           : git: The sideband payload is passed unfiltered to the
│                        │       │                   terminal in git 
│                        │       ├ Description     : Git is a source code management tool. When cloning from a
│                        │       │                   server (or fetching, or pushing), informational or error
│                        │       │                   messages are transported from the remote Git process to
│                        │       │                   the client via the so-called "sideband channel". These
│                        │       │                   messages will be prefixed with "remote:" and printed
│                        │       │                   directly to the standard error output. Typically, this
│                        │       │                   standard error output is connected to a terminal that
│                        │       │                   understands ANSI escape sequences, which Git did not
│                        │       │                   protect against. Most modern terminals support control
│                        │       │                   sequences that can be used by a malicious actor to hide
│                        │       │                   and misrepresent information, or to mislead the user into
│                        │       │                   executing untrusted scripts. As requested on the
│                        │       │                   git-security mailing list, the patches are under
│                        │       │                   discussion on the public mailing list. Users are advised
│                        │       │                   to update as soon as possible. Users unable to upgrade
│                        │       │                   should avoid recursive clones unless they are from trusted
│                        │       │                    sources. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-116 
│                        │       │                  ╰ [1]: CWE-150 
│                        │       ├ VendorSeverity   ╭ alma       : 2 
│                        │       │                  ├ amazon     : 2 
│                        │       │                  ├ bitnami    : 3 
│                        │       │                  ├ nvd        : 3 
│                        │       │                  ├ oracle-oval: 2 
│                        │       │                  ├ redhat     : 2 
│                        │       │                  ├ rocky      : 2 
│                        │       │                  ╰ ubuntu     : 2 
│                        │       ├ CVSS             ╭ bitnami ╭ V40Vector: CVSS:4.0/AV:N/AC:H/AT:N/PR:N/UI:A/VC
│                        │       │                  │         │            :H/VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │       │                  │         ╰ V40Score : 7.5 
│                        │       │                  ├ nvd     ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/
│                        │       │                  │         │           I:H/A:H 
│                        │       │                  │         ╰ V3Score : 8.8 
│                        │       │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/
│                        │       │                            │           I:H/A:H 
│                        │       │                            ╰ V3Score : 7.5 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:7409 
│                        │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:8414 
│                        │       │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2024-52005 
│                        │       │                  ├ [3] : https://bugzilla.redhat.com/2338289 
│                        │       │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2338289 
│                        │       │                  ├ [5] : https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2024-52005 
│                        │       │                  ├ [7] : https://errata.almalinux.org/8/ALSA-2025-8414.html 
│                        │       │                  ├ [8] : https://errata.rockylinux.org/RLSA-2025:7409 
│                        │       │                  ├ [9] : https://github.com/git/git/security/advisories/GHSA
│                        │       │                  │       -7jjc-gg6m-3329 
│                        │       │                  ├ [10]: https://linux.oracle.com/cve/CVE-2024-52005.html 
│                        │       │                  ├ [11]: https://linux.oracle.com/errata/ELSA-2025-8414.html 
│                        │       │                  ├ [12]: https://lore.kernel.org/git/1M9FnZ-1taoNo1wwh-00ESS
│                        │       │                  │       d@mail.gmx.net 
│                        │       │                  ├ [13]: https://lore.kernel.org/git/8570a129-d66a-465a-905e
│                        │       │                  │       -0a077c69c409@gmail.com/T/#t 
│                        │       │                  ├ [14]: https://nvd.nist.gov/vuln/detail/CVE-2024-52005 
│                        │       │                  ╰ [15]: https://www.cve.org/CVERecord?id=CVE-2024-52005 
│                        │       ├ PublishedDate   : 2025-01-15T18:15:24.13Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T08:06:47.217Z 
│                        ├ [4]   ╭ VulnerabilityID : CVE-2026-27456 
│                        │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : libblkid1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64
│                        │       │                  │       &distro=ubuntu-26.04 
│                        │       │                  ╰ UID : cfada1ce2d53117c 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:e2d08a5bafe33aa36d24e5f182bd7c41e8c085d50b95c6ccfcb
│                        │       │                   a482154f51aed 
│                        │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │       │                   loop devices 
│                        │       ├ Description     : util-linux is a random collection of Linux utilities.
│                        │       │                   Prior to version 2.41.4, a TOCTOU
│                        │       │                   (Time-of-Check-Time-of-Use) vulnerability has been
│                        │       │                   identified in the SUID binary /usr/bin/mount from
│                        │       │                   util-linux. The mount binary, when setting up loop
│                        │       │                   devices, validates the source file path with user
│                        │       │                   privileges via fork() + setuid() + realpath(), but
│                        │       │                   subsequently re-canonicalizes and opens it with root
│                        │       │                   privileges (euid=0) without verifying that the path has
│                        │       │                   not been replaced between both operations. Neither
│                        │       │                   O_NOFOLLOW, nor inode comparison, nor post-open fstat()
│                        │       │                   are employed. This allows a local unprivileged user to
│                        │       │                   replace the source file with a symlink pointing to any
│                        │       │                   root-owned file or device during the race window, causing
│                        │       │                   the SUID binary to open and mount it as root. Exploitation
│                        │       │                    requires an /etc/fstab entry with user,loop options whose
│                        │       │                    path points to a directory where the attacker has write
│                        │       │                   permission, and that /usr/bin/mount has the SUID bit set
│                        │       │                   (the default configuration on virtually all Linux
│                        │       │                   distributions). The impact is unauthorized read access to
│                        │       │                   root-protected files and block devices, including backup
│                        │       │                   images, disk volumes, and any file containing a valid
│                        │       │                   filesystem. This issue has been patched in version
│                        │       │                   2.41.4. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-59 
│                        │       │                  ├ [1]: CWE-269 
│                        │       │                  ╰ [2]: CWE-367 
│                        │       ├ VendorSeverity   ╭ azure       : 2 
│                        │       │                  ├ bottlerocket: 2 
│                        │       │                  ├ julia       : 2 
│                        │       │                  ├ redhat      : 2 
│                        │       │                  ╰ ubuntu      : 2 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                  │        │           :N/A:N 
│                        │       │                  │        ╰ V3Score : 4.7 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :N/A:N 
│                        │       │                           ╰ V3Score : 4.7 
│                        │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │       │                  │      26-27456 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core
│                        │       │                  │      -kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sx
│                        │       │                  │      d.toml 
│                        │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e39
│                        │       │                  │      0467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/ta
│                        │       │                  │      g/v2.41.4 
│                        │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/ad
│                        │       │                  │      visories/GHSA-qq4x-vfq4-9h9g 
│                        │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [5]   ╭ VulnerabilityID : CVE-2026-3184 
│                        │       ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : libblkid1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64
│                        │       │                  │       &distro=ubuntu-26.04 
│                        │       │                  ╰ UID : cfada1ce2d53117c 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:da63efd9a32a880e952a8e23b92bb4dd5fb29378b2507ef5bd3
│                        │       │                   cbe23ef35f549 
│                        │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │       │                   improper hostname canonicalization 
│                        │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │       │                   canonicalization in the `login(1)` utility, when invoked
│                        │       │                   with the `-h` option, can modify the supplied remote
│                        │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │       │                   could exploit this by providing a specially crafted
│                        │       │                   hostname, potentially bypassing host-based Pluggable
│                        │       │                   Authentication Modules (PAM) access control rules that
│                        │       │                   rely on fully qualified domain names. This could lead to
│                        │       │                   unauthorized access. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-289 
│                        │       ├ VendorSeverity   ╭ azure : 1 
│                        │       │                  ├ nvd   : 2 
│                        │       │                  ├ photon: 2 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 5.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.7 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │       ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [6]   ╭ VulnerabilityID : CVE-2025-1352 
│                        │       ├ PkgID           : libelf1t64@0.194-4 
│                        │       ├ PkgName         : libelf1t64 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro
│                        │       │                  │       =ubuntu-26.04 
│                        │       │                  ╰ UID : 90e8b887354154e4 
│                        │       ├ InstalledVersion: 0.194-4 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1352 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:7d027026062f63e38960ff4a0d76ac83d9814697e887425cd33
│                        │       │                   71a5be01d489c 
│                        │       ├ Title           : elfutils: GNU elfutils eu-readelf libdw_alloc.c
│                        │       │                   __libdw_thread_tail memory corruption 
│                        │       ├ Description     : A vulnerability has been found in GNU elfutils 0.192 and
│                        │       │                   classified as critical. This vulnerability affects the
│                        │       │                   function __libdw_thread_tail in the library libdw_alloc.c
│                        │       │                   of the component eu-readelf. The manipulation of the
│                        │       │                   argument w leads to memory corruption. The attack can be
│                        │       │                   initiated remotely. The complexity of an attack is rather
│                        │       │                   high. The exploitation appears to be difficult. The
│                        │       │                   exploit has been disclosed to the public and may be used.
│                        │       │                   The name of the patch is
│                        │       │                   2636426a091bd6c6f7f02e49ab20d4cdc6bfc753. It is
│                        │       │                   recommended to apply a patch to fix this issue. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-119 
│                        │       ├ VendorSeverity   ╭ amazon: 2 
│                        │       │                  ├ azure : 1 
│                        │       │                  ├ nvd   : 3 
│                        │       │                  ├ photon: 3 
│                        │       │                  ├ redhat: 2 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:H/I
│                        │       │                  │        │           :H/A:H 
│                        │       │                  │        ╰ V3Score : 7.5 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:R/S:U/C:L/I
│                        │       │                           │           :L/A:L 
│                        │       │                           ╰ V3Score : 5 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1352 
│                        │       │                  ├ [1] : https://cert-portal.siemens.com/productcert/html/ss
│                        │       │                  │       a-253495.html 
│                        │       │                  ├ [2] : https://nvd.nist.gov/vuln/detail/CVE-2025-1352 
│                        │       │                  ├ [3] : https://sourceware.org/bugzilla/attachment.cgi?id=1
│                        │       │                  │       5923 
│                        │       │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=32650 
│                        │       │                  ├ [5] : https://sourceware.org/bugzilla/show_bug.cgi?id=326
│                        │       │                  │       50#c2 
│                        │       │                  ├ [6] : https://vuldb.com/?ctiid.295960 
│                        │       │                  ├ [7] : https://vuldb.com/?id.295960 
│                        │       │                  ├ [8] : https://vuldb.com/?submit.495965 
│                        │       │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-1352 
│                        │       │                  ╰ [10]: https://www.gnu.org/ 
│                        │       ├ PublishedDate   : 2025-02-16T15:15:09.133Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T08:38:57.857Z 
│                        ├ [7]   ╭ VulnerabilityID : CVE-2025-1376 
│                        │       ├ PkgID           : libelf1t64@0.194-4 
│                        │       ├ PkgName         : libelf1t64 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro
│                        │       │                  │       =ubuntu-26.04 
│                        │       │                  ╰ UID : 90e8b887354154e4 
│                        │       ├ InstalledVersion: 0.194-4 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1376 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:efef46331440cb08d75b6f4edd4d3a43988d3c31b72cb33b1b9
│                        │       │                   833d51304920a 
│                        │       ├ Title           : elfutils: GNU elfutils eu-strip elf_strptr.c elf_strptr
│                        │       │                   denial of service 
│                        │       ├ Description     : A vulnerability classified as problematic was found in GNU
│                        │       │                    elfutils 0.192. This vulnerability affects the function
│                        │       │                   elf_strptr in the library /libelf/elf_strptr.c of the
│                        │       │                   component eu-strip. The manipulation leads to denial of
│                        │       │                   service. It is possible to launch the attack on the local
│                        │       │                   host. The complexity of an attack is rather high. The
│                        │       │                   exploitation appears to be difficult. The exploit has been
│                        │       │                    disclosed to the public and may be used. The name of the
│                        │       │                   patch is b16f441cca0a4841050e3215a9f120a6d8aea918. It is
│                        │       │                   recommended to apply a patch to fix this issue. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-404 
│                        │       ├ VendorSeverity   ╭ azure : 1 
│                        │       │                  ├ nvd   : 2 
│                        │       │                  ├ photon: 2 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I
│                        │       │                  │        │           :N/A:H 
│                        │       │                  │        ╰ V3Score : 4.7 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:L 
│                        │       │                           ╰ V3Score : 2.5 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/security/cve/CVE-2025-1376 
│                        │       │                  ├ [1] : https://cert-portal.siemens.com/productcert/html/ss
│                        │       │                  │       a-253495.html 
│                        │       │                  ├ [2] : https://nvd.nist.gov/vuln/detail/CVE-2025-1376 
│                        │       │                  ├ [3] : https://sourceware.org/bugzilla/attachment.cgi?id=1
│                        │       │                  │       5940 
│                        │       │                  ├ [4] : https://sourceware.org/bugzilla/show_bug.cgi?id=32672 
│                        │       │                  ├ [5] : https://sourceware.org/bugzilla/show_bug.cgi?id=326
│                        │       │                  │       72#c3 
│                        │       │                  ├ [6] : https://vuldb.com/?ctiid.295984 
│                        │       │                  ├ [7] : https://vuldb.com/?id.295984 
│                        │       │                  ├ [8] : https://vuldb.com/?submit.497538 
│                        │       │                  ├ [9] : https://www.cve.org/CVERecord?id=CVE-2025-1376 
│                        │       │                  ╰ [10]: https://www.gnu.org/ 
│                        │       ├ PublishedDate   : 2025-02-17T05:15:09.807Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T08:39:00.957Z 
│                        ├ [8]   ╭ VulnerabilityID : CVE-2025-66382 
│                        │       ├ PkgID           : libexpat1@2.7.4-1 
│                        │       ├ PkgName         : libexpat1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=
│                        │       │                  │       ubuntu-26.04 
│                        │       │                  ╰ UID : c17b9d4b5a8b1286 
│                        │       ├ InstalledVersion: 2.7.4-1 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:3cffec4d674072c415999b6ea803da41ff0629f534a465ae245
│                        │       │                   deac578f4878a 
│                        │       ├ Title           : libexpat: libexpat: Denial of service via crafted file
│                        │       │                   processing 
│                        │       ├ Description     : In libexpat through 2.7.3, a crafted file with an
│                        │       │                   approximate size of 2 MiB can lead to dozens of seconds of
│                        │       │                    processing time. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-407 
│                        │       ├ VendorSeverity   ╭ azure : 1 
│                        │       │                  ├ julia : 2 
│                        │       │                  ├ nvd   : 2 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │       │                  │        │           :N/A:H 
│                        │       │                  │        ╰ V3Score : 5.5 
│                        │       │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │       │                  │        │           :N/A:H 
│                        │       │                  │        ╰ V3Score : 5.5 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:L 
│                        │       │                           ╰ V3Score : 2.9 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2025/12/0
│                        │       │                  │      2/1 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2025-66382 
│                        │       │                  ├ [2]: https://cert-portal.siemens.com/productcert/html/ssa
│                        │       │                  │      -082556.html 
│                        │       │                  ├ [3]: https://cert-portal.siemens.com/productcert/html/ssa
│                        │       │                  │      -253495.html 
│                        │       │                  ├ [4]: https://github.com/libexpat/libexpat/issues/1076 
│                        │       │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2025-66382 
│                        │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2025-66382 
│                        │       ├ PublishedDate   : 2025-11-28T07:15:57.9Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T09:56:45.24Z 
│                        ├ [9]   ╭ VulnerabilityID : CVE-2024-2236 
│                        │       ├ PkgID           : libgcrypt20@1.12.0-2ubuntu1 
│                        │       ├ PkgName         : libgcrypt20 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2ubuntu1?arch=amd
│                        │       │                  │       64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 45e5e1ad6adb0acd 
│                        │       ├ InstalledVersion: 1.12.0-2ubuntu1 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:c29e8f1484500ad8fe5f8598a8428af8272b1e26c00e4cfd3ca
│                        │       │                   c843d013a31a6 
│                        │       ├ Title           : libgcrypt: vulnerable to Marvin Attack 
│                        │       ├ Description     : A timing-based side-channel flaw was found in libgcrypt's
│                        │       │                   RSA implementation. This issue may allow a remote attacker
│                        │       │                    to initiate a Bleichenbacher-style attack, which can lead
│                        │       │                    to the decryption of RSA ciphertexts. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-385 
│                        │       ├ VendorSeverity   ╭ alma       : 2 
│                        │       │                  ├ amazon     : 2 
│                        │       │                  ├ oracle-oval: 2 
│                        │       │                  ├ redhat     : 2 
│                        │       │                  ├ rocky      : 2 
│                        │       │                  ╰ ubuntu     : 1 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I
│                        │       │                           │           :N/A:N 
│                        │       │                           ╰ V3Score : 5.9 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2024:9404 
│                        │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2025:3530 
│                        │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2025:3534 
│                        │       │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2024-2236 
│                        │       │                  ├ [4] : https://bugzilla.redhat.com/2245218 
│                        │       │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2245218 
│                        │       │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2268268 
│                        │       │                  ├ [7] : https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2024-2236 
│                        │       │                  ├ [9] : https://dev.gnupg.org/T7136 
│                        │       │                  ├ [10]: https://errata.almalinux.org/9/ALSA-2024-9404.html 
│                        │       │                  ├ [11]: https://errata.rockylinux.org/RLSA-2024:9404 
│                        │       │                  ├ [12]: https://github.com/tomato42/marvin-toolkit/tree/mas
│                        │       │                  │       ter/example/libgcrypt 
│                        │       │                  ├ [13]: https://gitlab.com/redhat-crypto/libgcrypt/libgcryp
│                        │       │                  │       t-mirror/-/merge_requests/17 
│                        │       │                  ├ [14]: https://linux.oracle.com/cve/CVE-2024-2236.html 
│                        │       │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2024-9404.html 
│                        │       │                  ├ [16]: https://lists.gnupg.org/pipermail/gcrypt-devel/2024
│                        │       │                  │       -March/005607.html 
│                        │       │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2024-2236 
│                        │       │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2024-2236 
│                        │       ├ PublishedDate   : 2024-03-06T22:15:57.977Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T07:24:06.083Z 
│                        ├ [10]  ╭ VulnerabilityID : CVE-2026-22185 
│                        │       ├ PkgID           : liblmdb0@0.9.31-1build2 
│                        │       ├ PkgName         : liblmdb0 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/liblmdb0@0.9.31-1build2?arch=amd64&d
│                        │       │                  │       istro=ubuntu-26.04 
│                        │       │                  ╰ UID : a4418a4b692862c1 
│                        │       ├ InstalledVersion: 0.9.31-1build2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-22185 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:fef6a177eaf140c067c978e5069d59d3a2f80c2375a905ee34e
│                        │       │                   bdd8411aad0a5 
│                        │       ├ Title           : OpenLDAP: OpenLDAP LMDB: Denial of Service and Information
│                        │       │                    Disclosure via Heap Buffer Underflow 
│                        │       ├ Description     : OpenLDAP Lightning Memory-Mapped Database (LMDB) versions
│                        │       │                   up to and including 0.9.14, prior to commit 8e1fda8,
│                        │       │                   contain a heap buffer underflow in the readline() function
│                        │       │                    of mdb_load. When processing malformed input containing
│                        │       │                   an embedded NUL byte, an unsigned offset calculation can
│                        │       │                   underflow and cause an out-of-bounds read of one byte
│                        │       │                   before the allocated heap buffer. This can cause mdb_load
│                        │       │                   to crash, leading to a limited denial-of-service
│                        │       │                   condition. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-125 
│                        │       │                  ╰ [1]: CWE-191 
│                        │       ├ VendorSeverity   ╭ redhat: 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I
│                        │       │                           │           :N/A:H 
│                        │       │                           ╰ V3Score : 6.8 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-22185 
│                        │       │                  ├ [1]: https://bugs.openldap.org/show_bug.cgi?id=10421 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-22185 
│                        │       │                  ├ [3]: https://seclists.org/fulldisclosure/2026/Jan/5 
│                        │       │                  ├ [4]: https://seclists.org/fulldisclosure/2026/Jan/8 
│                        │       │                  ├ [5]: https://www.cve.org/CVERecord?id=CVE-2026-22185 
│                        │       │                  ├ [6]: https://www.openldap.org/ 
│                        │       │                  ╰ [7]: https://www.vulncheck.com/advisories/openldap-lmdb-m
│                        │       │                         db-load-heap-buffer-underflow-in-readline 
│                        │       ├ PublishedDate   : 2026-01-07T21:16:01.733Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:19:30.257Z 
│                        ├ [11]  ╭ VulnerabilityID : CVE-2026-27456 
│                        │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : libmount1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64
│                        │       │                  │       &distro=ubuntu-26.04 
│                        │       │                  ╰ UID : ec572950b070797 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:61c248500a2682fd56e60b962335d3f7ff5361a1c68464ccd0c
│                        │       │                   10f89951aa010 
│                        │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │       │                   loop devices 
│                        │       ├ Description     : util-linux is a random collection of Linux utilities.
│                        │       │                   Prior to version 2.41.4, a TOCTOU
│                        │       │                   (Time-of-Check-Time-of-Use) vulnerability has been
│                        │       │                   identified in the SUID binary /usr/bin/mount from
│                        │       │                   util-linux. The mount binary, when setting up loop
│                        │       │                   devices, validates the source file path with user
│                        │       │                   privileges via fork() + setuid() + realpath(), but
│                        │       │                   subsequently re-canonicalizes and opens it with root
│                        │       │                   privileges (euid=0) without verifying that the path has
│                        │       │                   not been replaced between both operations. Neither
│                        │       │                   O_NOFOLLOW, nor inode comparison, nor post-open fstat()
│                        │       │                   are employed. This allows a local unprivileged user to
│                        │       │                   replace the source file with a symlink pointing to any
│                        │       │                   root-owned file or device during the race window, causing
│                        │       │                   the SUID binary to open and mount it as root. Exploitation
│                        │       │                    requires an /etc/fstab entry with user,loop options whose
│                        │       │                    path points to a directory where the attacker has write
│                        │       │                   permission, and that /usr/bin/mount has the SUID bit set
│                        │       │                   (the default configuration on virtually all Linux
│                        │       │                   distributions). The impact is unauthorized read access to
│                        │       │                   root-protected files and block devices, including backup
│                        │       │                   images, disk volumes, and any file containing a valid
│                        │       │                   filesystem. This issue has been patched in version
│                        │       │                   2.41.4. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-59 
│                        │       │                  ├ [1]: CWE-269 
│                        │       │                  ╰ [2]: CWE-367 
│                        │       ├ VendorSeverity   ╭ azure       : 2 
│                        │       │                  ├ bottlerocket: 2 
│                        │       │                  ├ julia       : 2 
│                        │       │                  ├ redhat      : 2 
│                        │       │                  ╰ ubuntu      : 2 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                  │        │           :N/A:N 
│                        │       │                  │        ╰ V3Score : 4.7 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :N/A:N 
│                        │       │                           ╰ V3Score : 4.7 
│                        │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │       │                  │      26-27456 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core
│                        │       │                  │      -kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sx
│                        │       │                  │      d.toml 
│                        │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e39
│                        │       │                  │      0467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/ta
│                        │       │                  │      g/v2.41.4 
│                        │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/ad
│                        │       │                  │      visories/GHSA-qq4x-vfq4-9h9g 
│                        │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [12]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │       ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : libmount1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64
│                        │       │                  │       &distro=ubuntu-26.04 
│                        │       │                  ╰ UID : ec572950b070797 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:27f2a0ca6e915ce6117357c7d6385c33c9e6b4a6e0c00f0cd97
│                        │       │                   3866bfa71cbfb 
│                        │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │       │                   improper hostname canonicalization 
│                        │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │       │                   canonicalization in the `login(1)` utility, when invoked
│                        │       │                   with the `-h` option, can modify the supplied remote
│                        │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │       │                   could exploit this by providing a specially crafted
│                        │       │                   hostname, potentially bypassing host-based Pluggable
│                        │       │                   Authentication Modules (PAM) access control rules that
│                        │       │                   rely on fully qualified domain names. This could lead to
│                        │       │                   unauthorized access. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-289 
│                        │       ├ VendorSeverity   ╭ azure : 1 
│                        │       │                  ├ nvd   : 2 
│                        │       │                  ├ photon: 2 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 5.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.7 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │       ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [13]  ╭ VulnerabilityID : CVE-2026-15059 
│                        │       ├ PkgID           : libnss-systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libnss-systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libnss-systemd@259.5-0ubuntu3.3?arch
│                        │       │                  │       =amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : a7f76ada50639d4f 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15059 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:de6e11f5b3c7200c9fb9fd61bd9de7c265cc5e351237febda7b
│                        │       │                   c5d9b094a288c 
│                        │       ├ Description     : Local unprivileged users can terminate arbitrary local
│                        │       │                   processes via a systemd-oomd IPC API due to a missing path
│                        │       │                    traversal validation. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-22 
│                        │       │                  ╰ [1]: CWE-59 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-652q-wxr6-h5j6 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15059 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:20.76Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:40.983Z 
│                        ├ [14]  ╭ VulnerabilityID : CVE-2026-15060 
│                        │       ├ PkgID           : libnss-systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libnss-systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libnss-systemd@259.5-0ubuntu3.3?arch
│                        │       │                  │       =amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : a7f76ada50639d4f 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15060 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:3dacd5d57b957028d6e571e483423c4877f28f2dea0719c2544
│                        │       │                   dbf6beb5dd3a9 
│                        │       ├ Description     : When systemd-machined >= v259 (or v258 with a custom
│                        │       │                   `polkit` policy that allows `register-machine` access) is
│                        │       │                   running on a desktop system, an unprivileged user logged
│                        │       │                   in a desktop graphical session can kill arbitrary
│                        │       │                   processes, even privileged ones.
│                        │       │                   
│                        │       │                   - versions older than v259 are not affected, unless
│                        │       │                   unprivileged access is granted for the `register-machine`
│                        │       │                   polkit action via a local, custom policy config file
│                        │       │                   - versions older than v258 are not affected
│                        │       │                   - unrelated to the systemd service manager (pid 1 or user
│                        │       │                   session managers)
│                        │       │                   - systemd-machined is not typically installed by default,
│                        │       │                   and is typically in an optional, separate package (e.g.:
│                        │       │                   systemd-container)
│                        │       │                   - terminal-only or remote sessions (e.g.: ssh) are not
│                        │       │                   affected 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-284 
│                        │       │                  ╰ [1]: CWE-862 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-qwv4-3gwc-w5g8 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15060 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.13Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:41.087Z 
│                        ├ [15]  ╭ VulnerabilityID : CVE-2026-16742 
│                        │       ├ PkgID           : libnss-systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libnss-systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libnss-systemd@259.5-0ubuntu3.3?arch
│                        │       │                  │       =amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : a7f76ada50639d4f 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-16742 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:a9e9cf11d5d7ecc26c50106419bb1cd7fa7bc15e7d17bc96784
│                        │       │                   b411fcbaf3901 
│                        │       ├ Description     : systemd-homed contains a local privilege escalation bug
│                        │       │                   via arbitrary system group addition to a local, logged in,
│                        │       │                    homed-managed user 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-269 
│                        │       │                  ╰ [1]: CWE-347 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-jm29-p7hh-vjhv 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-16742 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.277Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T16:19:29.157Z 
│                        ├ [16]  ╭ VulnerabilityID : CVE-2026-40228 
│                        │       ├ PkgID           : libnss-systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libnss-systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libnss-systemd@259.5-0ubuntu3.3?arch
│                        │       │                  │       =amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : a7f76ada50639d4f 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:c24d81fe014da90597304af93fd964837a238ed21792edeef3e
│                        │       │                   fc8f7aec9c695 
│                        │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │       │                   terminals via logger command 
│                        │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │       │                   sequences to the terminals of arbitrary users when a
│                        │       │                   "logger -p emerg" command is executed, if
│                        │       │                   ForwardToWall=yes is set. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-669 
│                        │       ├ VendorSeverity   ╭ nvd   : 1 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 3.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 2.9 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      5/1 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/
│                        │       │                         08/1 
│                        │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [17]  ╭ VulnerabilityID : CVE-2026-13757 
│                        │       ├ PkgID           : libp11-kit0@0.26.2-2 
│                        │       ├ PkgName         : libp11-kit0 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libp11-kit0@0.26.2-2?arch=amd64&dist
│                        │       │                  │       ro=ubuntu-26.04 
│                        │       │                  ╰ UID : 38d0559292d79a63 
│                        │       ├ InstalledVersion: 0.26.2-2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13757 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:298036532cde9ea93820061d92d4274031da854f0129dda355c
│                        │       │                   d5dd65b09327b 
│                        │       ├ Title           : p11-kit: Stack exhaustion via unbounded recursion in RPC
│                        │       │                   attribute parsing 
│                        │       ├ Description     : A flaw was found in p11-kit. The RPC message attribute
│                        │       │                   parsing functions p11_rpc_message_get_attribute() and
│                        │       │                   p11_rpc_message_get_attribute_array_value() form a
│                        │       │                   mutually-recursive call chain with no recursion depth
│                        │       │                   limit when processing nested CKA_WRAP_TEMPLATE,
│                        │       │                   CKA_UNWRAP_TEMPLATE, and CKA_DERIVE_TEMPLATE attributes.
│                        │       │                   An unauthenticated attacker with local access to the
│                        │       │                   p11-kit RPC Unix domain socket can send a specially
│                        │       │                   crafted request with deeply nested template attributes,
│                        │       │                   causing stack exhaustion and crashing the p11-kit server
│                        │       │                   process and its dependent services. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-674 
│                        │       ├ VendorSeverity   ╭ alma       : 2 
│                        │       │                  ├ oracle-oval: 2 
│                        │       │                  ├ redhat     : 2 
│                        │       │                  ├ rocky      : 2 
│                        │       │                  ╰ ubuntu     : 2 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:H 
│                        │       │                           ╰ V3Score : 6.2 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:37469 
│                        │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:38342 
│                        │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:49667 
│                        │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:49668 
│                        │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:53371 
│                        │       │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:54387 
│                        │       │                  ├ [6] : https://access.redhat.com/security/cve/CVE-2026-13757 
│                        │       │                  ├ [7] : https://bugzilla.redhat.com/2494556 
│                        │       │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2494556 
│                        │       │                  ├ [9] : https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-13757 
│                        │       │                  ├ [11]: https://errata.almalinux.org/10/ALSA-2026-49668.html 
│                        │       │                  ├ [12]: https://errata.rockylinux.org/RLSA-2026:49667 
│                        │       │                  ├ [13]: https://github.com/advisories/GHSA-p2wm-69qx-x25w 
│                        │       │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-13757.html 
│                        │       │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-49668.html 
│                        │       │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-13757 
│                        │       │                  ╰ [17]: https://www.cve.org/CVERecord?id=CVE-2026-13757 
│                        │       ├ PublishedDate   : 2026-06-29T19:16:40.907Z 
│                        │       ╰ LastModifiedDate: 2026-08-12T16:16:52.253Z 
│                        ├ [18]  ╭ VulnerabilityID : CVE-2026-15059 
│                        │       ├ PkgID           : libpam-systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libpam-systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-systemd@259.5-0ubuntu3.3?arch
│                        │       │                  │       =amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 59371c6d06e92fa3 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15059 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:71f9010d32a1cad37ee9a75ac9028ba381a47c2e7a207f9f5d3
│                        │       │                   0b9ed782bb58f 
│                        │       ├ Description     : Local unprivileged users can terminate arbitrary local
│                        │       │                   processes via a systemd-oomd IPC API due to a missing path
│                        │       │                    traversal validation. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-22 
│                        │       │                  ╰ [1]: CWE-59 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-652q-wxr6-h5j6 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15059 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:20.76Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:40.983Z 
│                        ├ [19]  ╭ VulnerabilityID : CVE-2026-15060 
│                        │       ├ PkgID           : libpam-systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libpam-systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-systemd@259.5-0ubuntu3.3?arch
│                        │       │                  │       =amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 59371c6d06e92fa3 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15060 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:7c61e56feaf6070e3f3dde1278a431d6d31bb3b8770e133abbe
│                        │       │                   be2873a57e105 
│                        │       ├ Description     : When systemd-machined >= v259 (or v258 with a custom
│                        │       │                   `polkit` policy that allows `register-machine` access) is
│                        │       │                   running on a desktop system, an unprivileged user logged
│                        │       │                   in a desktop graphical session can kill arbitrary
│                        │       │                   processes, even privileged ones.
│                        │       │                   
│                        │       │                   - versions older than v259 are not affected, unless
│                        │       │                   unprivileged access is granted for the `register-machine`
│                        │       │                   polkit action via a local, custom policy config file
│                        │       │                   - versions older than v258 are not affected
│                        │       │                   - unrelated to the systemd service manager (pid 1 or user
│                        │       │                   session managers)
│                        │       │                   - systemd-machined is not typically installed by default,
│                        │       │                   and is typically in an optional, separate package (e.g.:
│                        │       │                   systemd-container)
│                        │       │                   - terminal-only or remote sessions (e.g.: ssh) are not
│                        │       │                   affected 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-284 
│                        │       │                  ╰ [1]: CWE-862 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-qwv4-3gwc-w5g8 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15060 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.13Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:41.087Z 
│                        ├ [20]  ╭ VulnerabilityID : CVE-2026-16742 
│                        │       ├ PkgID           : libpam-systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libpam-systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-systemd@259.5-0ubuntu3.3?arch
│                        │       │                  │       =amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 59371c6d06e92fa3 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-16742 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:1e30431f2b488066d8fbb38abc27bb5d21ee99183ece9091de2
│                        │       │                   9b23cb7f49abb 
│                        │       ├ Description     : systemd-homed contains a local privilege escalation bug
│                        │       │                   via arbitrary system group addition to a local, logged in,
│                        │       │                    homed-managed user 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-269 
│                        │       │                  ╰ [1]: CWE-347 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-jm29-p7hh-vjhv 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-16742 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.277Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T16:19:29.157Z 
│                        ├ [21]  ╭ VulnerabilityID : CVE-2026-40228 
│                        │       ├ PkgID           : libpam-systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libpam-systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-systemd@259.5-0ubuntu3.3?arch
│                        │       │                  │       =amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 59371c6d06e92fa3 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:36856816dae2183cbf9438a264a943a103ece4d4fbf06f13d80
│                        │       │                   1d8d09f0b6861 
│                        │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │       │                   terminals via logger command 
│                        │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │       │                   sequences to the terminals of arbitrary users when a
│                        │       │                   "logger -p emerg" command is executed, if
│                        │       │                   ForwardToWall=yes is set. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-669 
│                        │       ├ VendorSeverity   ╭ nvd   : 1 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 3.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 2.9 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      5/1 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/
│                        │       │                         08/1 
│                        │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [22]  ╭ VulnerabilityID : CVE-2026-27456 
│                        │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : libsmartcols1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : eb8f24163bcc7b6b 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:a1de1e19b37d9c91a109015e645d8ddff0ea532cfc9b606c478
│                        │       │                   8c999e1282ab7 
│                        │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │       │                   loop devices 
│                        │       ├ Description     : util-linux is a random collection of Linux utilities.
│                        │       │                   Prior to version 2.41.4, a TOCTOU
│                        │       │                   (Time-of-Check-Time-of-Use) vulnerability has been
│                        │       │                   identified in the SUID binary /usr/bin/mount from
│                        │       │                   util-linux. The mount binary, when setting up loop
│                        │       │                   devices, validates the source file path with user
│                        │       │                   privileges via fork() + setuid() + realpath(), but
│                        │       │                   subsequently re-canonicalizes and opens it with root
│                        │       │                   privileges (euid=0) without verifying that the path has
│                        │       │                   not been replaced between both operations. Neither
│                        │       │                   O_NOFOLLOW, nor inode comparison, nor post-open fstat()
│                        │       │                   are employed. This allows a local unprivileged user to
│                        │       │                   replace the source file with a symlink pointing to any
│                        │       │                   root-owned file or device during the race window, causing
│                        │       │                   the SUID binary to open and mount it as root. Exploitation
│                        │       │                    requires an /etc/fstab entry with user,loop options whose
│                        │       │                    path points to a directory where the attacker has write
│                        │       │                   permission, and that /usr/bin/mount has the SUID bit set
│                        │       │                   (the default configuration on virtually all Linux
│                        │       │                   distributions). The impact is unauthorized read access to
│                        │       │                   root-protected files and block devices, including backup
│                        │       │                   images, disk volumes, and any file containing a valid
│                        │       │                   filesystem. This issue has been patched in version
│                        │       │                   2.41.4. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-59 
│                        │       │                  ├ [1]: CWE-269 
│                        │       │                  ╰ [2]: CWE-367 
│                        │       ├ VendorSeverity   ╭ azure       : 2 
│                        │       │                  ├ bottlerocket: 2 
│                        │       │                  ├ julia       : 2 
│                        │       │                  ├ redhat      : 2 
│                        │       │                  ╰ ubuntu      : 2 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                  │        │           :N/A:N 
│                        │       │                  │        ╰ V3Score : 4.7 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :N/A:N 
│                        │       │                           ╰ V3Score : 4.7 
│                        │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │       │                  │      26-27456 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core
│                        │       │                  │      -kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sx
│                        │       │                  │      d.toml 
│                        │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e39
│                        │       │                  │      0467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/ta
│                        │       │                  │      g/v2.41.4 
│                        │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/ad
│                        │       │                  │      visories/GHSA-qq4x-vfq4-9h9g 
│                        │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [23]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │       ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : libsmartcols1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : eb8f24163bcc7b6b 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:c4c605bfaf86f9ee0b287ae755b5704f8d9f893805d6a3aaf90
│                        │       │                   86869769607d5 
│                        │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │       │                   improper hostname canonicalization 
│                        │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │       │                   canonicalization in the `login(1)` utility, when invoked
│                        │       │                   with the `-h` option, can modify the supplied remote
│                        │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │       │                   could exploit this by providing a specially crafted
│                        │       │                   hostname, potentially bypassing host-based Pluggable
│                        │       │                   Authentication Modules (PAM) access control rules that
│                        │       │                   rely on fully qualified domain names. This could lead to
│                        │       │                   unauthorized access. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-289 
│                        │       ├ VendorSeverity   ╭ azure : 1 
│                        │       │                  ├ nvd   : 2 
│                        │       │                  ├ photon: 2 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 5.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.7 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │       ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [24]  ╭ VulnerabilityID : CVE-2024-56433 
│                        │       ├ PkgID           : libsubid5@1:4.17.4-2ubuntu3 
│                        │       ├ PkgName         : libsubid5 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsubid5@4.17.4-2ubuntu3?arch=amd64
│                        │       │                  │       &distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : 5334fe1c7557bdb3 
│                        │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:b509bbbd1ac4ae00c8efecc4e19008386616ab987d288c657a0
│                        │       │                   0ec4266cb88f6 
│                        │       ├ Title           : shadow-utils: Default subordinate ID configuration in
│                        │       │                   /etc/login.defs could lead to compromise 
│                        │       ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │       │                    default /etc/subuid behavior (e.g., uid 100000 through
│                        │       │                   165535 for the first user account) that can realistically
│                        │       │                   conflict with the uids of users defined on locally
│                        │       │                   administered networks, potentially leading to account
│                        │       │                   takeover, e.g., by leveraging newuidmap for access to an
│                        │       │                   NFS home directory (or same-host resources in the case of
│                        │       │                   remote logins by these local network users). NOTE: it may
│                        │       │                   also be argued that system administrators should not have
│                        │       │                   assigned uids, within local networks, that are within the
│                        │       │                   range that can occur in /etc/subuid. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-1188 
│                        │       ├ VendorSeverity   ╭ alma       : 1 
│                        │       │                  ├ azure      : 1 
│                        │       │                  ├ oracle-oval: 1 
│                        │       │                  ├ redhat     : 1 
│                        │       │                  ├ rocky      : 1 
│                        │       │                  ╰ ubuntu     : 1 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.6 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                        │       │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                        │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │       │                  ├ [4] : https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2024-56433 
│                        │       │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │       │                  ├ [7] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │       │                  ├ [8] : https://github.com/shadow-maint/shadow/blob/e2512d5
│                        │       │                  │       741d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L2
│                        │       │                  │       38-L241 
│                        │       │                  ├ [9] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │       │                  ├ [10]: https://github.com/shadow-maint/shadow/releases/tag
│                        │       │                  │       /4.4 
│                        │       │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │       │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2025-20559-0.h
│                        │       │                  │       tml 
│                        │       │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │       │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │       ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                        ├ [25]  ╭ VulnerabilityID : CVE-2026-15059 
│                        │       ├ PkgID           : libsystemd-shared@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libsystemd-shared 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd-shared@259.5-0ubuntu3.3?a
│                        │       │                  │       rch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 7b423b64d0e24821 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15059 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:ccbd05ebadbcc18516fe4995a9f521ce09385f1a2e69690f469
│                        │       │                   9ccf786f56d5a 
│                        │       ├ Description     : Local unprivileged users can terminate arbitrary local
│                        │       │                   processes via a systemd-oomd IPC API due to a missing path
│                        │       │                    traversal validation. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-22 
│                        │       │                  ╰ [1]: CWE-59 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-652q-wxr6-h5j6 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15059 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:20.76Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:40.983Z 
│                        ├ [26]  ╭ VulnerabilityID : CVE-2026-15060 
│                        │       ├ PkgID           : libsystemd-shared@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libsystemd-shared 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd-shared@259.5-0ubuntu3.3?a
│                        │       │                  │       rch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 7b423b64d0e24821 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15060 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:90f5c28f744f3337806fe0f9b05843c2a9766f7cf402f425675
│                        │       │                   984bc8bf649eb 
│                        │       ├ Description     : When systemd-machined >= v259 (or v258 with a custom
│                        │       │                   `polkit` policy that allows `register-machine` access) is
│                        │       │                   running on a desktop system, an unprivileged user logged
│                        │       │                   in a desktop graphical session can kill arbitrary
│                        │       │                   processes, even privileged ones.
│                        │       │                   
│                        │       │                   - versions older than v259 are not affected, unless
│                        │       │                   unprivileged access is granted for the `register-machine`
│                        │       │                   polkit action via a local, custom policy config file
│                        │       │                   - versions older than v258 are not affected
│                        │       │                   - unrelated to the systemd service manager (pid 1 or user
│                        │       │                   session managers)
│                        │       │                   - systemd-machined is not typically installed by default,
│                        │       │                   and is typically in an optional, separate package (e.g.:
│                        │       │                   systemd-container)
│                        │       │                   - terminal-only or remote sessions (e.g.: ssh) are not
│                        │       │                   affected 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-284 
│                        │       │                  ╰ [1]: CWE-862 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-qwv4-3gwc-w5g8 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15060 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.13Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:41.087Z 
│                        ├ [27]  ╭ VulnerabilityID : CVE-2026-16742 
│                        │       ├ PkgID           : libsystemd-shared@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libsystemd-shared 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd-shared@259.5-0ubuntu3.3?a
│                        │       │                  │       rch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 7b423b64d0e24821 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-16742 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:cf1eeede63012813a50618daa6133d3de5f67f3c9e4f76c5618
│                        │       │                   faa99ebd3af65 
│                        │       ├ Description     : systemd-homed contains a local privilege escalation bug
│                        │       │                   via arbitrary system group addition to a local, logged in,
│                        │       │                    homed-managed user 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-269 
│                        │       │                  ╰ [1]: CWE-347 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-jm29-p7hh-vjhv 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-16742 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.277Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T16:19:29.157Z 
│                        ├ [28]  ╭ VulnerabilityID : CVE-2026-40228 
│                        │       ├ PkgID           : libsystemd-shared@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libsystemd-shared 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd-shared@259.5-0ubuntu3.3?a
│                        │       │                  │       rch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 7b423b64d0e24821 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:539f7088dd2d0292b12a0c5c417ab1b96568067cc51c1a760a9
│                        │       │                   a56487111eb2a 
│                        │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │       │                   terminals via logger command 
│                        │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │       │                   sequences to the terminals of arbitrary users when a
│                        │       │                   "logger -p emerg" command is executed, if
│                        │       │                   ForwardToWall=yes is set. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-669 
│                        │       ├ VendorSeverity   ╭ nvd   : 1 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 3.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 2.9 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      5/1 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/
│                        │       │                         08/1 
│                        │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [29]  ╭ VulnerabilityID : CVE-2026-15059 
│                        │       ├ PkgID           : libsystemd0@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libsystemd0 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3.3?arch=am
│                        │       │                  │       d64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : fcc1e0814fd72e7d 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15059 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:9ad21e7163421cdc9fa3ae11e67c673533adb52f9eed160fd79
│                        │       │                   c42f5a0477d57 
│                        │       ├ Description     : Local unprivileged users can terminate arbitrary local
│                        │       │                   processes via a systemd-oomd IPC API due to a missing path
│                        │       │                    traversal validation. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-22 
│                        │       │                  ╰ [1]: CWE-59 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-652q-wxr6-h5j6 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15059 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:20.76Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:40.983Z 
│                        ├ [30]  ╭ VulnerabilityID : CVE-2026-15060 
│                        │       ├ PkgID           : libsystemd0@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libsystemd0 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3.3?arch=am
│                        │       │                  │       d64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : fcc1e0814fd72e7d 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15060 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:bf6503f358cb0d6e27ced3fe9557f78331ccfa7bbe5e1d975b6
│                        │       │                   0525d217e8272 
│                        │       ├ Description     : When systemd-machined >= v259 (or v258 with a custom
│                        │       │                   `polkit` policy that allows `register-machine` access) is
│                        │       │                   running on a desktop system, an unprivileged user logged
│                        │       │                   in a desktop graphical session can kill arbitrary
│                        │       │                   processes, even privileged ones.
│                        │       │                   
│                        │       │                   - versions older than v259 are not affected, unless
│                        │       │                   unprivileged access is granted for the `register-machine`
│                        │       │                   polkit action via a local, custom policy config file
│                        │       │                   - versions older than v258 are not affected
│                        │       │                   - unrelated to the systemd service manager (pid 1 or user
│                        │       │                   session managers)
│                        │       │                   - systemd-machined is not typically installed by default,
│                        │       │                   and is typically in an optional, separate package (e.g.:
│                        │       │                   systemd-container)
│                        │       │                   - terminal-only or remote sessions (e.g.: ssh) are not
│                        │       │                   affected 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-284 
│                        │       │                  ╰ [1]: CWE-862 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-qwv4-3gwc-w5g8 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15060 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.13Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:41.087Z 
│                        ├ [31]  ╭ VulnerabilityID : CVE-2026-16742 
│                        │       ├ PkgID           : libsystemd0@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libsystemd0 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3.3?arch=am
│                        │       │                  │       d64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : fcc1e0814fd72e7d 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-16742 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:7eff299aff347f5891f7f3f85f415790b0b7c0afd80a78496df
│                        │       │                   e7b754be51f32 
│                        │       ├ Description     : systemd-homed contains a local privilege escalation bug
│                        │       │                   via arbitrary system group addition to a local, logged in,
│                        │       │                    homed-managed user 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-269 
│                        │       │                  ╰ [1]: CWE-347 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-jm29-p7hh-vjhv 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-16742 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.277Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T16:19:29.157Z 
│                        ├ [32]  ╭ VulnerabilityID : CVE-2026-40228 
│                        │       ├ PkgID           : libsystemd0@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libsystemd0 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3.3?arch=am
│                        │       │                  │       d64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : fcc1e0814fd72e7d 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:021576d82525f4f81af23e3501dca6aafa383de46a36cb66f05
│                        │       │                   9e9fcbf6ce097 
│                        │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │       │                   terminals via logger command 
│                        │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │       │                   sequences to the terminals of arbitrary users when a
│                        │       │                   "logger -p emerg" command is executed, if
│                        │       │                   ForwardToWall=yes is set. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-669 
│                        │       ├ VendorSeverity   ╭ nvd   : 1 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 3.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 2.9 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      5/1 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/
│                        │       │                         08/1 
│                        │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [33]  ╭ VulnerabilityID : CVE-2026-15059 
│                        │       ├ PkgID           : libudev1@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libudev1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3.3?arch=amd64
│                        │       │                  │       &distro=ubuntu-26.04 
│                        │       │                  ╰ UID : df574d4e09e87346 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15059 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:f808eea161cc6dc1c77e76f5e43da329224dfef6299b4db9536
│                        │       │                   5879aed2348e1 
│                        │       ├ Description     : Local unprivileged users can terminate arbitrary local
│                        │       │                   processes via a systemd-oomd IPC API due to a missing path
│                        │       │                    traversal validation. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-22 
│                        │       │                  ╰ [1]: CWE-59 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-652q-wxr6-h5j6 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15059 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:20.76Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:40.983Z 
│                        ├ [34]  ╭ VulnerabilityID : CVE-2026-15060 
│                        │       ├ PkgID           : libudev1@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libudev1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3.3?arch=amd64
│                        │       │                  │       &distro=ubuntu-26.04 
│                        │       │                  ╰ UID : df574d4e09e87346 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15060 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:7ddd27568df4e5aae67a47447df438a52865715733fb41c1937
│                        │       │                   7fa02474e8e86 
│                        │       ├ Description     : When systemd-machined >= v259 (or v258 with a custom
│                        │       │                   `polkit` policy that allows `register-machine` access) is
│                        │       │                   running on a desktop system, an unprivileged user logged
│                        │       │                   in a desktop graphical session can kill arbitrary
│                        │       │                   processes, even privileged ones.
│                        │       │                   
│                        │       │                   - versions older than v259 are not affected, unless
│                        │       │                   unprivileged access is granted for the `register-machine`
│                        │       │                   polkit action via a local, custom policy config file
│                        │       │                   - versions older than v258 are not affected
│                        │       │                   - unrelated to the systemd service manager (pid 1 or user
│                        │       │                   session managers)
│                        │       │                   - systemd-machined is not typically installed by default,
│                        │       │                   and is typically in an optional, separate package (e.g.:
│                        │       │                   systemd-container)
│                        │       │                   - terminal-only or remote sessions (e.g.: ssh) are not
│                        │       │                   affected 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-284 
│                        │       │                  ╰ [1]: CWE-862 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-qwv4-3gwc-w5g8 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15060 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.13Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:41.087Z 
│                        ├ [35]  ╭ VulnerabilityID : CVE-2026-16742 
│                        │       ├ PkgID           : libudev1@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libudev1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3.3?arch=amd64
│                        │       │                  │       &distro=ubuntu-26.04 
│                        │       │                  ╰ UID : df574d4e09e87346 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-16742 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:9cac331a458d0cfc30fe9e11c4a8127d1635c8effd1cb936004
│                        │       │                   a231d665661a7 
│                        │       ├ Description     : systemd-homed contains a local privilege escalation bug
│                        │       │                   via arbitrary system group addition to a local, logged in,
│                        │       │                    homed-managed user 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-269 
│                        │       │                  ╰ [1]: CWE-347 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-jm29-p7hh-vjhv 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-16742 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.277Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T16:19:29.157Z 
│                        ├ [36]  ╭ VulnerabilityID : CVE-2026-40228 
│                        │       ├ PkgID           : libudev1@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : libudev1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3.3?arch=amd64
│                        │       │                  │       &distro=ubuntu-26.04 
│                        │       │                  ╰ UID : df574d4e09e87346 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:992a87eb79384ea5157980b4485329d0cc667074e7e70a643cc
│                        │       │                   524ff60326e9e 
│                        │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │       │                   terminals via logger command 
│                        │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │       │                   sequences to the terminals of arbitrary users when a
│                        │       │                   "logger -p emerg" command is executed, if
│                        │       │                   ForwardToWall=yes is set. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-669 
│                        │       ├ VendorSeverity   ╭ nvd   : 1 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 3.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 2.9 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      5/1 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/
│                        │       │                         08/1 
│                        │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [37]  ╭ VulnerabilityID : CVE-2026-27456 
│                        │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : libuuid1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&
│                        │       │                  │       distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 927585f152fe989a 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:07fee9fd3a45dfa5df0a13057f249ad79887571749ff9a83913
│                        │       │                   8d623814a0bc7 
│                        │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │       │                   loop devices 
│                        │       ├ Description     : util-linux is a random collection of Linux utilities.
│                        │       │                   Prior to version 2.41.4, a TOCTOU
│                        │       │                   (Time-of-Check-Time-of-Use) vulnerability has been
│                        │       │                   identified in the SUID binary /usr/bin/mount from
│                        │       │                   util-linux. The mount binary, when setting up loop
│                        │       │                   devices, validates the source file path with user
│                        │       │                   privileges via fork() + setuid() + realpath(), but
│                        │       │                   subsequently re-canonicalizes and opens it with root
│                        │       │                   privileges (euid=0) without verifying that the path has
│                        │       │                   not been replaced between both operations. Neither
│                        │       │                   O_NOFOLLOW, nor inode comparison, nor post-open fstat()
│                        │       │                   are employed. This allows a local unprivileged user to
│                        │       │                   replace the source file with a symlink pointing to any
│                        │       │                   root-owned file or device during the race window, causing
│                        │       │                   the SUID binary to open and mount it as root. Exploitation
│                        │       │                    requires an /etc/fstab entry with user,loop options whose
│                        │       │                    path points to a directory where the attacker has write
│                        │       │                   permission, and that /usr/bin/mount has the SUID bit set
│                        │       │                   (the default configuration on virtually all Linux
│                        │       │                   distributions). The impact is unauthorized read access to
│                        │       │                   root-protected files and block devices, including backup
│                        │       │                   images, disk volumes, and any file containing a valid
│                        │       │                   filesystem. This issue has been patched in version
│                        │       │                   2.41.4. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-59 
│                        │       │                  ├ [1]: CWE-269 
│                        │       │                  ╰ [2]: CWE-367 
│                        │       ├ VendorSeverity   ╭ azure       : 2 
│                        │       │                  ├ bottlerocket: 2 
│                        │       │                  ├ julia       : 2 
│                        │       │                  ├ redhat      : 2 
│                        │       │                  ╰ ubuntu      : 2 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                  │        │           :N/A:N 
│                        │       │                  │        ╰ V3Score : 4.7 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :N/A:N 
│                        │       │                           ╰ V3Score : 4.7 
│                        │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │       │                  │      26-27456 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core
│                        │       │                  │      -kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sx
│                        │       │                  │      d.toml 
│                        │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e39
│                        │       │                  │      0467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/ta
│                        │       │                  │      g/v2.41.4 
│                        │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/ad
│                        │       │                  │      visories/GHSA-qq4x-vfq4-9h9g 
│                        │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [38]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │       ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : libuuid1 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&
│                        │       │                  │       distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 927585f152fe989a 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:70cb40208ccc8de75f8fa6c8d6a80bb67bd41c48ffd3b4d4560
│                        │       │                   ba0905f45250a 
│                        │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │       │                   improper hostname canonicalization 
│                        │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │       │                   canonicalization in the `login(1)` utility, when invoked
│                        │       │                   with the `-h` option, can modify the supplied remote
│                        │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │       │                   could exploit this by providing a specially crafted
│                        │       │                   hostname, potentially bypassing host-based Pluggable
│                        │       │                   Authentication Modules (PAM) access control rules that
│                        │       │                   rely on fully qualified domain names. This could lead to
│                        │       │                   unauthorized access. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-289 
│                        │       ├ VendorSeverity   ╭ azure : 1 
│                        │       │                  ├ nvd   : 2 
│                        │       │                  ├ photon: 2 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 5.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.7 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │       ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [39]  ╭ VulnerabilityID : CVE-2026-27456 
│                        │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │       ├ PkgName         : login 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubunt
│                        │       │                  │       u2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : 591feb53ee99f4f9 
│                        │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:f68bce41d2c73c85138c924e0d7e6d3a1101cc8bd6216becd14
│                        │       │                   ca04d70bdef69 
│                        │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │       │                   loop devices 
│                        │       ├ Description     : util-linux is a random collection of Linux utilities.
│                        │       │                   Prior to version 2.41.4, a TOCTOU
│                        │       │                   (Time-of-Check-Time-of-Use) vulnerability has been
│                        │       │                   identified in the SUID binary /usr/bin/mount from
│                        │       │                   util-linux. The mount binary, when setting up loop
│                        │       │                   devices, validates the source file path with user
│                        │       │                   privileges via fork() + setuid() + realpath(), but
│                        │       │                   subsequently re-canonicalizes and opens it with root
│                        │       │                   privileges (euid=0) without verifying that the path has
│                        │       │                   not been replaced between both operations. Neither
│                        │       │                   O_NOFOLLOW, nor inode comparison, nor post-open fstat()
│                        │       │                   are employed. This allows a local unprivileged user to
│                        │       │                   replace the source file with a symlink pointing to any
│                        │       │                   root-owned file or device during the race window, causing
│                        │       │                   the SUID binary to open and mount it as root. Exploitation
│                        │       │                    requires an /etc/fstab entry with user,loop options whose
│                        │       │                    path points to a directory where the attacker has write
│                        │       │                   permission, and that /usr/bin/mount has the SUID bit set
│                        │       │                   (the default configuration on virtually all Linux
│                        │       │                   distributions). The impact is unauthorized read access to
│                        │       │                   root-protected files and block devices, including backup
│                        │       │                   images, disk volumes, and any file containing a valid
│                        │       │                   filesystem. This issue has been patched in version
│                        │       │                   2.41.4. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-59 
│                        │       │                  ├ [1]: CWE-269 
│                        │       │                  ╰ [2]: CWE-367 
│                        │       ├ VendorSeverity   ╭ azure       : 2 
│                        │       │                  ├ bottlerocket: 2 
│                        │       │                  ├ julia       : 2 
│                        │       │                  ├ redhat      : 2 
│                        │       │                  ╰ ubuntu      : 2 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                  │        │           :N/A:N 
│                        │       │                  │        ╰ V3Score : 4.7 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :N/A:N 
│                        │       │                           ╰ V3Score : 4.7 
│                        │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │       │                  │      26-27456 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core
│                        │       │                  │      -kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sx
│                        │       │                  │      d.toml 
│                        │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e39
│                        │       │                  │      0467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/ta
│                        │       │                  │      g/v2.41.4 
│                        │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/ad
│                        │       │                  │      visories/GHSA-qq4x-vfq4-9h9g 
│                        │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [40]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │       ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │       ├ PkgName         : login 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubunt
│                        │       │                  │       u2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : 591feb53ee99f4f9 
│                        │       ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:38e21c30d9c85505e8258932ff1b3897cc4782e4840daff9351
│                        │       │                   d7a776b11c9bf 
│                        │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │       │                   improper hostname canonicalization 
│                        │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │       │                   canonicalization in the `login(1)` utility, when invoked
│                        │       │                   with the `-h` option, can modify the supplied remote
│                        │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │       │                   could exploit this by providing a specially crafted
│                        │       │                   hostname, potentially bypassing host-based Pluggable
│                        │       │                   Authentication Modules (PAM) access control rules that
│                        │       │                   rely on fully qualified domain names. This could lead to
│                        │       │                   unauthorized access. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-289 
│                        │       ├ VendorSeverity   ╭ azure : 1 
│                        │       │                  ├ nvd   : 2 
│                        │       │                  ├ photon: 2 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 5.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.7 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │       ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [41]  ╭ VulnerabilityID : CVE-2024-56433 
│                        │       ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                        │       ├ PkgName         : login.defs 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&
│                        │       │                  │       distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : eaf648d5e4e975f7 
│                        │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:4028c8a5f86393a2f807f61d872cb2efc77138a16f4eac4a735
│                        │       │                   e3a7c682a5d1a 
│                        │       ├ Title           : shadow-utils: Default subordinate ID configuration in
│                        │       │                   /etc/login.defs could lead to compromise 
│                        │       ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │       │                    default /etc/subuid behavior (e.g., uid 100000 through
│                        │       │                   165535 for the first user account) that can realistically
│                        │       │                   conflict with the uids of users defined on locally
│                        │       │                   administered networks, potentially leading to account
│                        │       │                   takeover, e.g., by leveraging newuidmap for access to an
│                        │       │                   NFS home directory (or same-host resources in the case of
│                        │       │                   remote logins by these local network users). NOTE: it may
│                        │       │                   also be argued that system administrators should not have
│                        │       │                   assigned uids, within local networks, that are within the
│                        │       │                   range that can occur in /etc/subuid. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-1188 
│                        │       ├ VendorSeverity   ╭ alma       : 1 
│                        │       │                  ├ azure      : 1 
│                        │       │                  ├ oracle-oval: 1 
│                        │       │                  ├ redhat     : 1 
│                        │       │                  ├ rocky      : 1 
│                        │       │                  ╰ ubuntu     : 1 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.6 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                        │       │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                        │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │       │                  ├ [4] : https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2024-56433 
│                        │       │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │       │                  ├ [7] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │       │                  ├ [8] : https://github.com/shadow-maint/shadow/blob/e2512d5
│                        │       │                  │       741d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L2
│                        │       │                  │       38-L241 
│                        │       │                  ├ [9] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │       │                  ├ [10]: https://github.com/shadow-maint/shadow/releases/tag
│                        │       │                  │       /4.4 
│                        │       │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │       │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2025-20559-0.h
│                        │       │                  │       tml 
│                        │       │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │       │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │       ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                        ├ [42]  ╭ VulnerabilityID : CVE-2026-27456 
│                        │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : mount 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dis
│                        │       │                  │       tro=ubuntu-26.04 
│                        │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:3efdfaacbbd7e3dea4af14dbb38ebdd7540cc4f440aba9f8aa2
│                        │       │                   81ecca54420fb 
│                        │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │       │                   loop devices 
│                        │       ├ Description     : util-linux is a random collection of Linux utilities.
│                        │       │                   Prior to version 2.41.4, a TOCTOU
│                        │       │                   (Time-of-Check-Time-of-Use) vulnerability has been
│                        │       │                   identified in the SUID binary /usr/bin/mount from
│                        │       │                   util-linux. The mount binary, when setting up loop
│                        │       │                   devices, validates the source file path with user
│                        │       │                   privileges via fork() + setuid() + realpath(), but
│                        │       │                   subsequently re-canonicalizes and opens it with root
│                        │       │                   privileges (euid=0) without verifying that the path has
│                        │       │                   not been replaced between both operations. Neither
│                        │       │                   O_NOFOLLOW, nor inode comparison, nor post-open fstat()
│                        │       │                   are employed. This allows a local unprivileged user to
│                        │       │                   replace the source file with a symlink pointing to any
│                        │       │                   root-owned file or device during the race window, causing
│                        │       │                   the SUID binary to open and mount it as root. Exploitation
│                        │       │                    requires an /etc/fstab entry with user,loop options whose
│                        │       │                    path points to a directory where the attacker has write
│                        │       │                   permission, and that /usr/bin/mount has the SUID bit set
│                        │       │                   (the default configuration on virtually all Linux
│                        │       │                   distributions). The impact is unauthorized read access to
│                        │       │                   root-protected files and block devices, including backup
│                        │       │                   images, disk volumes, and any file containing a valid
│                        │       │                   filesystem. This issue has been patched in version
│                        │       │                   2.41.4. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-59 
│                        │       │                  ├ [1]: CWE-269 
│                        │       │                  ╰ [2]: CWE-367 
│                        │       ├ VendorSeverity   ╭ azure       : 2 
│                        │       │                  ├ bottlerocket: 2 
│                        │       │                  ├ julia       : 2 
│                        │       │                  ├ redhat      : 2 
│                        │       │                  ╰ ubuntu      : 2 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                  │        │           :N/A:N 
│                        │       │                  │        ╰ V3Score : 4.7 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :N/A:N 
│                        │       │                           ╰ V3Score : 4.7 
│                        │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │       │                  │      26-27456 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core
│                        │       │                  │      -kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sx
│                        │       │                  │      d.toml 
│                        │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e39
│                        │       │                  │      0467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/ta
│                        │       │                  │      g/v2.41.4 
│                        │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/ad
│                        │       │                  │      visories/GHSA-qq4x-vfq4-9h9g 
│                        │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [43]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │       ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : mount 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dis
│                        │       │                  │       tro=ubuntu-26.04 
│                        │       │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:dea3ce56b1345683a30a5d7490f30475afd649d3c3365aea6a5
│                        │       │                   901772a9bb58e 
│                        │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │       │                   improper hostname canonicalization 
│                        │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │       │                   canonicalization in the `login(1)` utility, when invoked
│                        │       │                   with the `-h` option, can modify the supplied remote
│                        │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │       │                   could exploit this by providing a specially crafted
│                        │       │                   hostname, potentially bypassing host-based Pluggable
│                        │       │                   Authentication Modules (PAM) access control rules that
│                        │       │                   rely on fully qualified domain names. This could lead to
│                        │       │                   unauthorized access. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-289 
│                        │       ├ VendorSeverity   ╭ azure : 1 
│                        │       │                  ├ nvd   : 2 
│                        │       │                  ├ photon: 2 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 5.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.7 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │       ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [44]  ╭ VulnerabilityID : CVE-2026-55655 
│                        │       ├ PkgID           : openssh-client@1:10.2p1-2ubuntu3.5 
│                        │       ├ PkgName         : openssh-client 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-client@10.2p1-2ubuntu3.5?arc
│                        │       │                  │       h=amd64&distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : 989df0fb747990 
│                        │       ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55655 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:42dbec38c9caf60221c8147644c053f11b65de97ca36b9e1196
│                        │       │                   a7d852ba656c9 
│                        │       ├ Title           : openssh: Local MITM of X11 forwarding via abstract UNIX
│                        │       │                   socket pre-binding in Red Hat Enterprise Linux OpenSSH
│                        │       │                   client versions 
│                        │       ├ Description     : A flaw was found in OpenSSH. A local unprivileged attacker
│                        │       │                    on a Linux client host can hijack client-side X11
│                        │       │                   forwarding connections. This is possible by pre-binding
│                        │       │                   the preferred abstract X socket name when X11 forwarding
│                        │       │                   is enabled and a local UNIX-domain X socket is used. A
│                        │       │                   successful attack can compromise the confidentiality of
│                        │       │                   forwarded X11 traffic, including sensitive window contents
│                        │       │                    and input, and may allow some manipulation of the
│                        │       │                   forwarded session. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-923 
│                        │       ├ VendorSeverity   ╭ alma       : 2 
│                        │       │                  ├ amazon     : 2 
│                        │       │                  ├ nvd        : 2 
│                        │       │                  ├ oracle-oval: 3 
│                        │       │                  ├ photon     : 2 
│                        │       │                  ├ redhat     : 2 
│                        │       │                  ├ rocky      : 3 
│                        │       │                  ╰ ubuntu     : 2 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 6.1 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 5 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47755 
│                        │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:54387 
│                        │       │                  ├ [5] : https://access.redhat.com/security/cve/CVE-2026-55655 
│                        │       │                  ├ [6] : https://bugzilla.redhat.com/2462250 
│                        │       │                  ├ [7] : https://bugzilla.redhat.com/2462351 
│                        │       │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │       │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │       │                  ├ [13]: https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [14]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55653 
│                        │       │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55654 
│                        │       │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55655 
│                        │       │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-59996 
│                        │       │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-60002 
│                        │       │                  ├ [19]: https://errata.almalinux.org/8/ALSA-2026-47755.html 
│                        │       │                  ├ [20]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │       │                  ├ [21]: https://linux.oracle.com/cve/CVE-2026-55655.html 
│                        │       │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-55655 
│                        │       │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2026-55655 
│                        │       ├ PublishedDate   : 2026-06-23T04:17:40.787Z 
│                        │       ╰ LastModifiedDate: 2026-08-12T16:17:07.32Z 
│                        ├ [45]  ╭ VulnerabilityID : CVE-2026-55654 
│                        │       ├ PkgID           : openssh-client@1:10.2p1-2ubuntu3.5 
│                        │       ├ PkgName         : openssh-client 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-client@10.2p1-2ubuntu3.5?arc
│                        │       │                  │       h=amd64&distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : 989df0fb747990 
│                        │       ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55654 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:6da44db72fbe2059194de3178842f9ee65191785807a73b5e7a
│                        │       │                   e7a2141155216 
│                        │       ├ Title           : openssh: Heap out-of-bounds read in Red Hat Enterprise
│                        │       │                   Linux versions of OpenSSH GSSAPI indicator cleanup due to
│                        │       │                   missing NULL sentinel termination 
│                        │       ├ Description     : A flaw was found in OpenSSH. This vulnerability, a heap
│                        │       │                   out-of-bounds read, occurs during the cleanup of GSSAPI
│                        │       │                   (Generic Security Service Application Programming
│                        │       │                   Interface) indicators when a trailing NULL termination is
│                        │       │                   missing in the auth-indicators array. A remote attacker,
│                        │       │                   under specific configurations involving GSSAPI
│                        │       │                   authentication and a Kerberos environment, could exploit
│                        │       │                   this to cause the SSH authentication path to crash or
│                        │       │                   abort. This leads to a denial of service (DoS), impacting
│                        │       │                   the availability of the SSH service. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-125 
│                        │       ├ VendorSeverity   ╭ alma       : 3 
│                        │       │                  ├ oracle-oval: 3 
│                        │       │                  ├ redhat     : 1 
│                        │       │                  ├ rocky      : 3 
│                        │       │                  ╰ ubuntu     : 1 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:L 
│                        │       │                           ╰ V3Score : 3.7 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:54387 
│                        │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-55654 
│                        │       │                  ├ [5] : https://bugzilla.redhat.com/2462250 
│                        │       │                  ├ [6] : https://bugzilla.redhat.com/2462351 
│                        │       │                  ├ [7] : https://bugzilla.redhat.com/2462493 
│                        │       │                  ├ [8] : https://bugzilla.redhat.com/2497936 
│                        │       │                  ├ [9] : https://bugzilla.redhat.com/2497944 
│                        │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │       │                  ├ [15]: https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55653 
│                        │       │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55654 
│                        │       │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55655 
│                        │       │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-59996 
│                        │       │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-60002 
│                        │       │                  ├ [21]: https://errata.almalinux.org/10/ALSA-2026-47757.html 
│                        │       │                  ├ [22]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │       │                  ├ [23]: https://linux.oracle.com/cve/CVE-2026-55654.html 
│                        │       │                  ├ [24]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │       │                  ├ [25]: https://nvd.nist.gov/vuln/detail/CVE-2026-55654 
│                        │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-55654 
│                        │       ├ PublishedDate   : 2026-06-23T04:17:40.587Z 
│                        │       ╰ LastModifiedDate: 2026-08-12T16:17:07.16Z 
│                        ├ [46]  ╭ VulnerabilityID : CVE-2026-55655 
│                        │       ├ PkgID           : openssh-server@1:10.2p1-2ubuntu3.5 
│                        │       ├ PkgName         : openssh-server 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-server@10.2p1-2ubuntu3.5?arc
│                        │       │                  │       h=amd64&distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : 5a7ec8b3c9fb5642 
│                        │       ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55655 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:e832b9d14b807e38c0510809f443a67b9a27522eb7abdda422f
│                        │       │                   ef6f142cd1a4e 
│                        │       ├ Title           : openssh: Local MITM of X11 forwarding via abstract UNIX
│                        │       │                   socket pre-binding in Red Hat Enterprise Linux OpenSSH
│                        │       │                   client versions 
│                        │       ├ Description     : A flaw was found in OpenSSH. A local unprivileged attacker
│                        │       │                    on a Linux client host can hijack client-side X11
│                        │       │                   forwarding connections. This is possible by pre-binding
│                        │       │                   the preferred abstract X socket name when X11 forwarding
│                        │       │                   is enabled and a local UNIX-domain X socket is used. A
│                        │       │                   successful attack can compromise the confidentiality of
│                        │       │                   forwarded X11 traffic, including sensitive window contents
│                        │       │                    and input, and may allow some manipulation of the
│                        │       │                   forwarded session. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-923 
│                        │       ├ VendorSeverity   ╭ alma       : 2 
│                        │       │                  ├ amazon     : 2 
│                        │       │                  ├ nvd        : 2 
│                        │       │                  ├ oracle-oval: 3 
│                        │       │                  ├ photon     : 2 
│                        │       │                  ├ redhat     : 2 
│                        │       │                  ├ rocky      : 3 
│                        │       │                  ╰ ubuntu     : 2 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 6.1 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 5 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47755 
│                        │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:54387 
│                        │       │                  ├ [5] : https://access.redhat.com/security/cve/CVE-2026-55655 
│                        │       │                  ├ [6] : https://bugzilla.redhat.com/2462250 
│                        │       │                  ├ [7] : https://bugzilla.redhat.com/2462351 
│                        │       │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │       │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │       │                  ├ [13]: https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [14]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55653 
│                        │       │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55654 
│                        │       │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55655 
│                        │       │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-59996 
│                        │       │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-60002 
│                        │       │                  ├ [19]: https://errata.almalinux.org/8/ALSA-2026-47755.html 
│                        │       │                  ├ [20]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │       │                  ├ [21]: https://linux.oracle.com/cve/CVE-2026-55655.html 
│                        │       │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-55655 
│                        │       │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2026-55655 
│                        │       ├ PublishedDate   : 2026-06-23T04:17:40.787Z 
│                        │       ╰ LastModifiedDate: 2026-08-12T16:17:07.32Z 
│                        ├ [47]  ╭ VulnerabilityID : CVE-2026-55654 
│                        │       ├ PkgID           : openssh-server@1:10.2p1-2ubuntu3.5 
│                        │       ├ PkgName         : openssh-server 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-server@10.2p1-2ubuntu3.5?arc
│                        │       │                  │       h=amd64&distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : 5a7ec8b3c9fb5642 
│                        │       ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55654 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:4c2b87c73c638b6252d233cbe057d158eeb5cb9d816b0cf4278
│                        │       │                   cea8d3b79815b 
│                        │       ├ Title           : openssh: Heap out-of-bounds read in Red Hat Enterprise
│                        │       │                   Linux versions of OpenSSH GSSAPI indicator cleanup due to
│                        │       │                   missing NULL sentinel termination 
│                        │       ├ Description     : A flaw was found in OpenSSH. This vulnerability, a heap
│                        │       │                   out-of-bounds read, occurs during the cleanup of GSSAPI
│                        │       │                   (Generic Security Service Application Programming
│                        │       │                   Interface) indicators when a trailing NULL termination is
│                        │       │                   missing in the auth-indicators array. A remote attacker,
│                        │       │                   under specific configurations involving GSSAPI
│                        │       │                   authentication and a Kerberos environment, could exploit
│                        │       │                   this to cause the SSH authentication path to crash or
│                        │       │                   abort. This leads to a denial of service (DoS), impacting
│                        │       │                   the availability of the SSH service. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-125 
│                        │       ├ VendorSeverity   ╭ alma       : 3 
│                        │       │                  ├ oracle-oval: 3 
│                        │       │                  ├ redhat     : 1 
│                        │       │                  ├ rocky      : 3 
│                        │       │                  ╰ ubuntu     : 1 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:L 
│                        │       │                           ╰ V3Score : 3.7 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:54387 
│                        │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-55654 
│                        │       │                  ├ [5] : https://bugzilla.redhat.com/2462250 
│                        │       │                  ├ [6] : https://bugzilla.redhat.com/2462351 
│                        │       │                  ├ [7] : https://bugzilla.redhat.com/2462493 
│                        │       │                  ├ [8] : https://bugzilla.redhat.com/2497936 
│                        │       │                  ├ [9] : https://bugzilla.redhat.com/2497944 
│                        │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │       │                  ├ [15]: https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55653 
│                        │       │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55654 
│                        │       │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55655 
│                        │       │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-59996 
│                        │       │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-60002 
│                        │       │                  ├ [21]: https://errata.almalinux.org/10/ALSA-2026-47757.html 
│                        │       │                  ├ [22]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │       │                  ├ [23]: https://linux.oracle.com/cve/CVE-2026-55654.html 
│                        │       │                  ├ [24]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │       │                  ├ [25]: https://nvd.nist.gov/vuln/detail/CVE-2026-55654 
│                        │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-55654 
│                        │       ├ PublishedDate   : 2026-06-23T04:17:40.587Z 
│                        │       ╰ LastModifiedDate: 2026-08-12T16:17:07.16Z 
│                        ├ [48]  ╭ VulnerabilityID : CVE-2026-55655 
│                        │       ├ PkgID           : openssh-sftp-server@1:10.2p1-2ubuntu3.5 
│                        │       ├ PkgName         : openssh-sftp-server 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-sftp-server@10.2p1-2ubuntu3.
│                        │       │                  │       5?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : 1742a78d49e11eae 
│                        │       ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55655 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:a31c6670494fba860e4ae64f5fa9e26b2a1a65a68944aaf4c12
│                        │       │                   8792e1ac30952 
│                        │       ├ Title           : openssh: Local MITM of X11 forwarding via abstract UNIX
│                        │       │                   socket pre-binding in Red Hat Enterprise Linux OpenSSH
│                        │       │                   client versions 
│                        │       ├ Description     : A flaw was found in OpenSSH. A local unprivileged attacker
│                        │       │                    on a Linux client host can hijack client-side X11
│                        │       │                   forwarding connections. This is possible by pre-binding
│                        │       │                   the preferred abstract X socket name when X11 forwarding
│                        │       │                   is enabled and a local UNIX-domain X socket is used. A
│                        │       │                   successful attack can compromise the confidentiality of
│                        │       │                   forwarded X11 traffic, including sensitive window contents
│                        │       │                    and input, and may allow some manipulation of the
│                        │       │                   forwarded session. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-923 
│                        │       ├ VendorSeverity   ╭ alma       : 2 
│                        │       │                  ├ amazon     : 2 
│                        │       │                  ├ nvd        : 2 
│                        │       │                  ├ oracle-oval: 3 
│                        │       │                  ├ photon     : 2 
│                        │       │                  ├ redhat     : 2 
│                        │       │                  ├ rocky      : 3 
│                        │       │                  ╰ ubuntu     : 2 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 6.1 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 5 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47755 
│                        │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │       │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:54387 
│                        │       │                  ├ [5] : https://access.redhat.com/security/cve/CVE-2026-55655 
│                        │       │                  ├ [6] : https://bugzilla.redhat.com/2462250 
│                        │       │                  ├ [7] : https://bugzilla.redhat.com/2462351 
│                        │       │                  ├ [8] : https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │       │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │       │                  ├ [13]: https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [14]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55653 
│                        │       │                  ├ [15]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55654 
│                        │       │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55655 
│                        │       │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-59996 
│                        │       │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-60002 
│                        │       │                  ├ [19]: https://errata.almalinux.org/8/ALSA-2026-47755.html 
│                        │       │                  ├ [20]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │       │                  ├ [21]: https://linux.oracle.com/cve/CVE-2026-55655.html 
│                        │       │                  ├ [22]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │       │                  ├ [23]: https://nvd.nist.gov/vuln/detail/CVE-2026-55655 
│                        │       │                  ╰ [24]: https://www.cve.org/CVERecord?id=CVE-2026-55655 
│                        │       ├ PublishedDate   : 2026-06-23T04:17:40.787Z 
│                        │       ╰ LastModifiedDate: 2026-08-12T16:17:07.32Z 
│                        ├ [49]  ╭ VulnerabilityID : CVE-2026-55654 
│                        │       ├ PkgID           : openssh-sftp-server@1:10.2p1-2ubuntu3.5 
│                        │       ├ PkgName         : openssh-sftp-server 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-sftp-server@10.2p1-2ubuntu3.
│                        │       │                  │       5?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : 1742a78d49e11eae 
│                        │       ├ InstalledVersion: 1:10.2p1-2ubuntu3.5 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55654 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:c4da2d4e66b5ee77227864a73723caff07121f4b87d845b69bd
│                        │       │                   07f8b43c2a9b4 
│                        │       ├ Title           : openssh: Heap out-of-bounds read in Red Hat Enterprise
│                        │       │                   Linux versions of OpenSSH GSSAPI indicator cleanup due to
│                        │       │                   missing NULL sentinel termination 
│                        │       ├ Description     : A flaw was found in OpenSSH. This vulnerability, a heap
│                        │       │                   out-of-bounds read, occurs during the cleanup of GSSAPI
│                        │       │                   (Generic Security Service Application Programming
│                        │       │                   Interface) indicators when a trailing NULL termination is
│                        │       │                   missing in the auth-indicators array. A remote attacker,
│                        │       │                   under specific configurations involving GSSAPI
│                        │       │                   authentication and a Kerberos environment, could exploit
│                        │       │                   this to cause the SSH authentication path to crash or
│                        │       │                   abort. This leads to a denial of service (DoS), impacting
│                        │       │                   the availability of the SSH service. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-125 
│                        │       ├ VendorSeverity   ╭ alma       : 3 
│                        │       │                  ├ oracle-oval: 3 
│                        │       │                  ├ redhat     : 1 
│                        │       │                  ├ rocky      : 3 
│                        │       │                  ╰ ubuntu     : 1 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:L 
│                        │       │                           ╰ V3Score : 3.7 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36759 
│                        │       │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:47756 
│                        │       │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:47757 
│                        │       │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:54387 
│                        │       │                  ├ [4] : https://access.redhat.com/security/cve/CVE-2026-55654 
│                        │       │                  ├ [5] : https://bugzilla.redhat.com/2462250 
│                        │       │                  ├ [6] : https://bugzilla.redhat.com/2462351 
│                        │       │                  ├ [7] : https://bugzilla.redhat.com/2462493 
│                        │       │                  ├ [8] : https://bugzilla.redhat.com/2497936 
│                        │       │                  ├ [9] : https://bugzilla.redhat.com/2497944 
│                        │       │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │       │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2462351 
│                        │       │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │       │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2497936 
│                        │       │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2497944 
│                        │       │                  ├ [15]: https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [16]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55653 
│                        │       │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55654 
│                        │       │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-55655 
│                        │       │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-59996 
│                        │       │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2026-60002 
│                        │       │                  ├ [21]: https://errata.almalinux.org/10/ALSA-2026-47757.html 
│                        │       │                  ├ [22]: https://errata.rockylinux.org/RLSA-2026:47756 
│                        │       │                  ├ [23]: https://linux.oracle.com/cve/CVE-2026-55654.html 
│                        │       │                  ├ [24]: https://linux.oracle.com/errata/ELSA-2026-47757.html 
│                        │       │                  ├ [25]: https://nvd.nist.gov/vuln/detail/CVE-2026-55654 
│                        │       │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-55654 
│                        │       ├ PublishedDate   : 2026-06-23T04:17:40.587Z 
│                        │       ╰ LastModifiedDate: 2026-08-12T16:17:07.16Z 
│                        ├ [50]  ╭ VulnerabilityID : CVE-2024-56433 
│                        │       ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                        │       ├ PkgName         : passwd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&di
│                        │       │                  │       stro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : 6f8f43a2d44eb6a2 
│                        │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:25d05404e523df448f9f8f4bdb906630add79d439593178e735
│                        │       │                   bcd4b19cfdd08 
│                        │       ├ Title           : shadow-utils: Default subordinate ID configuration in
│                        │       │                   /etc/login.defs could lead to compromise 
│                        │       ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │       │                    default /etc/subuid behavior (e.g., uid 100000 through
│                        │       │                   165535 for the first user account) that can realistically
│                        │       │                   conflict with the uids of users defined on locally
│                        │       │                   administered networks, potentially leading to account
│                        │       │                   takeover, e.g., by leveraging newuidmap for access to an
│                        │       │                   NFS home directory (or same-host resources in the case of
│                        │       │                   remote logins by these local network users). NOTE: it may
│                        │       │                   also be argued that system administrators should not have
│                        │       │                   assigned uids, within local networks, that are within the
│                        │       │                   range that can occur in /etc/subuid. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-1188 
│                        │       ├ VendorSeverity   ╭ alma       : 1 
│                        │       │                  ├ azure      : 1 
│                        │       │                  ├ oracle-oval: 1 
│                        │       │                  ├ redhat     : 1 
│                        │       │                  ├ rocky      : 1 
│                        │       │                  ╰ ubuntu     : 1 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.6 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                        │       │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                        │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │       │                  ├ [4] : https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2024-56433 
│                        │       │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │       │                  ├ [7] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │       │                  ├ [8] : https://github.com/shadow-maint/shadow/blob/e2512d5
│                        │       │                  │       741d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L2
│                        │       │                  │       38-L241 
│                        │       │                  ├ [9] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │       │                  ├ [10]: https://github.com/shadow-maint/shadow/releases/tag
│                        │       │                  │       /4.4 
│                        │       │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │       │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2025-20559-0.h
│                        │       │                  │       tml 
│                        │       │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │       │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │       ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                        ├ [51]  ╭ VulnerabilityID : CVE-2018-6952 
│                        │       ├ PkgID           : patch@2.8-2build1 
│                        │       ├ PkgName         : patch 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=
│                        │       │                  │       ubuntu-26.04 
│                        │       │                  ╰ UID : 9486141e347bb260 
│                        │       ├ InstalledVersion: 2.8-2build1 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2018-6952 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:0f71b63683f9963876abdc761330b121e017c3fd4fedb2b306c
│                        │       │                   4432b4f369076 
│                        │       ├ Title           : patch: Double free of memory in pch.c:another_hunk()
│                        │       │                   causes a crash 
│                        │       ├ Description     : A double free exists in the another_hunk function in pch.c
│                        │       │                    in GNU patch through 2.7.6. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-415 
│                        │       ├ VendorSeverity   ╭ amazon     : 3 
│                        │       │                  ├ azure      : 3 
│                        │       │                  ├ cbl-mariner: 3 
│                        │       │                  ├ julia      : 3 
│                        │       │                  ├ nvd        : 3 
│                        │       │                  ├ oracle-oval: 1 
│                        │       │                  ├ photon     : 3 
│                        │       │                  ├ redhat     : 1 
│                        │       │                  ╰ ubuntu     : 1 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │       │                  │        │           :N/A:H 
│                        │       │                  │        ╰ V3Score : 7.5 
│                        │       │                  ├ nvd    ╭ V2Vector: AV:N/AC:L/Au:N/C:N/I:N/A:P 
│                        │       │                  │        ├ V3Vector: CVSS:3.0/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │       │                  │        │           :N/A:H 
│                        │       │                  │        ├ V2Score : 5 
│                        │       │                  │        ╰ V3Score : 7.5 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:L 
│                        │       │                           ╰ V3Score : 3.3 
│                        │       ├ References       ╭ [0]: http://www.securityfocus.com/bid/103047 
│                        │       │                  ├ [1]: https://access.redhat.com/errata/RHSA-2019:2033 
│                        │       │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2018-6952 
│                        │       │                  ├ [3]: https://linux.oracle.com/cve/CVE-2018-6952.html 
│                        │       │                  ├ [4]: https://linux.oracle.com/errata/ELSA-2019-2033.html 
│                        │       │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2018-6952 
│                        │       │                  ├ [6]: https://savannah.gnu.org/bugs/index.php?53133 
│                        │       │                  ├ [7]: https://security.gentoo.org/glsa/201904-17 
│                        │       │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2018-6952 
│                        │       ├ PublishedDate   : 2018-02-13T19:29:00.573Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T02:02:30.21Z 
│                        ├ [52]  ╭ VulnerabilityID : CVE-2019-20633 
│                        │       ├ PkgID           : patch@2.8-2build1 
│                        │       ├ PkgName         : patch 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=
│                        │       │                  │       ubuntu-26.04 
│                        │       │                  ╰ UID : 9486141e347bb260 
│                        │       ├ InstalledVersion: 2.8-2build1 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2019-20633 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:f559a9c44a2349c9745f25c3449957aa2aacaf13047122c62af
│                        │       │                   155cb8fe2d1d5 
│                        │       ├ Title           : patch: double free in another_hunk function in pch.c 
│                        │       ├ Description     : GNU patch through 2.7.6 contains a free(p_line[p_end])
│                        │       │                   Double Free vulnerability in the function another_hunk in
│                        │       │                   pch.c that can cause a denial of service via a crafted
│                        │       │                   patch file. NOTE: this issue exists because of an
│                        │       │                   incomplete fix for CVE-2018-6952. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-415 
│                        │       ├ VendorSeverity   ╭ cbl-mariner: 2 
│                        │       │                  ├ julia      : 2 
│                        │       │                  ├ nvd        : 2 
│                        │       │                  ├ photon     : 2 
│                        │       │                  ├ redhat     : 1 
│                        │       │                  ╰ ubuntu     : 1 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │       │                  │        │           :N/A:H 
│                        │       │                  │        ╰ V3Score : 5.5 
│                        │       │                  ├ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:N/I:N/A:P 
│                        │       │                  │        ├ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │       │                  │        │           :N/A:H 
│                        │       │                  │        ├ V2Score : 4.3 
│                        │       │                  │        ╰ V3Score : 5.5 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.0/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:L 
│                        │       │                           ╰ V3Score : 3.3 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2019-20633 
│                        │       │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2019-20633 
│                        │       │                  ├ [2]: https://savannah.gnu.org/bugs/index.php?56683 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2019-20633 
│                        │       ├ PublishedDate   : 2020-03-25T17:15:14.013Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T02:30:50.59Z 
│                        ├ [53]  ╭ VulnerabilityID : CVE-2021-45261 
│                        │       ├ PkgID           : patch@2.8-2build1 
│                        │       ├ PkgName         : patch 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=
│                        │       │                  │       ubuntu-26.04 
│                        │       │                  ╰ UID : 9486141e347bb260 
│                        │       ├ InstalledVersion: 2.8-2build1 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-45261 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:19ad9f53cdd86e1774d1acae49b4b99bb3166e433540fa08a30
│                        │       │                   c13108deb9cc0 
│                        │       ├ Title           : patch: Invalid Pointer via another_hunk function 
│                        │       ├ Description     : An Invalid Pointer vulnerability exists in GNU patch 2.7
│                        │       │                   via the another_hunk function, which causes a Denial of
│                        │       │                   Service. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-763 
│                        │       ├ VendorSeverity   ╭ nvd   : 2 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:N/I:N/A:P 
│                        │       │                  │        ├ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │       │                  │        │           :N/A:H 
│                        │       │                  │        ├ V2Score : 4.3 
│                        │       │                  │        ╰ V3Score : 5.5 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I
│                        │       │                           │           :N/A:H 
│                        │       │                           ╰ V3Score : 5.5 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2021-45261 
│                        │       │                  ├ [1]: https://nvd.nist.gov/vuln/detail/CVE-2021-45261 
│                        │       │                  ├ [2]: https://savannah.gnu.org/bugs/?61685 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2021-45261 
│                        │       ├ PublishedDate   : 2021-12-22T18:15:08.1Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T04:13:14.107Z 
│                        ├ [54]  ╭ VulnerabilityID : CVE-2026-35341 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:d2776e11afb2a3b783eeb4c5b46a5278bc4222093e6e7535232
│                        │       │                   d9d30f35cfcbf 
│                        │       ├ Title           : A vulnerability in uutils coreutils mkfifo allows for the
│                        │       │                   unauthorized ... 
│                        │       ├ Description     : A vulnerability in uutils coreutils mkfifo allows for the
│                        │       │                   unauthorized modification of permissions on existing
│                        │       │                   files. When mkfifo fails to create a FIFO because a file
│                        │       │                   already exists at the target path, it fails to terminate
│                        │       │                   the operation for that path and continues to execute a
│                        │       │                   follow-up set_permissions call. This results in the
│                        │       │                   existing file's permissions being changed to the default
│                        │       │                   mode (often 644 after umask), potentially exposing
│                        │       │                   sensitive files such as SSH private keys to other users on
│                        │       │                    the system. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-732 
│                        │       ├ VendorSeverity   ╭ ghsa  : 3 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H
│                        │       │                         │           /A:N 
│                        │       │                         ╰ V3Score : 7.1 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10020 
│                        │       │                  ├ [2]: https://github.com/uutils/coreutils/pull/10376 
│                        │       │                  ├ [3]: https://github.com/uutils/coreutils/security/advisor
│                        │       │                  │      ies/GHSA-pmf6-rcx4-v53v 
│                        │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-35341 
│                        │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-35341 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:36.06Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:25.5Z 
│                        ├ [55]  ╭ VulnerabilityID : CVE-2026-35344 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:d47e82cba5fe6d226f3754d02523274ae75498ac0b53821ed56
│                        │       │                   b8ec1ef6a6936 
│                        │       ├ Title           : The dd utility in uutils coreutils suppresses errors
│                        │       │                   during file trunc ... 
│                        │       ├ Description     : The dd utility in uutils coreutils suppresses errors
│                        │       │                   during file truncation operations by unconditionally
│                        │       │                   calling Result::ok() on truncation attempts. While
│                        │       │                   intended to mimic GNU behavior for special files like
│                        │       │                   /dev/null, the uutils implementation also hides failures
│                        │       │                   on regular files and directories caused by full disks or
│                        │       │                   read-only file systems. This can lead to silent data
│                        │       │                   corruption in backup or migration scripts, as the utility
│                        │       │                   may report a successful operation even when the
│                        │       │                   destination file contains old or garbage data. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-252 
│                        │       ├ VendorSeverity   ╭ ghsa  : 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L
│                        │       │                         │           /A:N 
│                        │       │                         ╰ V3Score : 3.3 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/9745 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35344 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35344 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:36.49Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:25.833Z 
│                        ├ [56]  ╭ VulnerabilityID : CVE-2026-35345 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:4bc2edadb43298da0bb33e103697ee190e9c5009fc634a89132
│                        │       │                   f8b489108f701 
│                        │       ├ Title           : A vulnerability in the tail utility of uutils coreutils
│                        │       │                   allows for the ... 
│                        │       ├ Description     : A vulnerability in the tail utility of uutils coreutils
│                        │       │                   allows for the exfiltration of sensitive file contents
│                        │       │                   when using the --follow=name option. Unlike GNU tail, the
│                        │       │                   uutils implementation continues to monitor a path after it
│                        │       │                    has been replaced by a symbolic link, subsequently
│                        │       │                   outputting the contents of the link's target. In
│                        │       │                   environments where a privileged user (e.g., root) monitors
│                        │       │                    a log directory, a local attacker with write access to
│                        │       │                   that directory can replace a log file with a symlink to a
│                        │       │                   sensitive system file (such as /etc/shadow), causing tail
│                        │       │                   to disclose the contents of the sensitive file. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-59 
│                        │       │                  ╰ [1]: CWE-367 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:L
│                        │       │                         │           /A:N 
│                        │       │                         ╰ V3Score : 5.3 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10328 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35345 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35345 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:36.627Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:25.943Z 
│                        ├ [57]  ╭ VulnerabilityID : CVE-2026-35348 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:6deeb2ac681f43c43fb14178bcd6780c68f28ad71827b7e824e
│                        │       │                   742a8a086eb9a 
│                        │       ├ Title           : The sort utility in uutils coreutils is vulnerable to a
│                        │       │                   process panic  ... 
│                        │       ├ Description     : The sort utility in uutils coreutils is vulnerable to a
│                        │       │                   process panic when using the --files0-from option with
│                        │       │                   inputs containing non-UTF-8 filenames. The implementation
│                        │       │                   enforces UTF-8 encoding and utilizes expect(), causing an
│                        │       │                   immediate crash when encountering valid but non-UTF-8
│                        │       │                   paths. This diverges from GNU sort, which treats filenames
│                        │       │                    as raw bytes. A local attacker can exploit this to crash
│                        │       │                   the utility and disrupt automated pipelines. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-248 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │       │                         │           /A:H 
│                        │       │                         ╰ V3Score : 5.5 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/9696 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35348 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35348 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:37.04Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:26.27Z 
│                        ├ [58]  ╭ VulnerabilityID : CVE-2026-35350 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:e8b68d4e70658dc6db862994c1f2b7ecde290dae09ff9c202e5
│                        │       │                   4395d362f4a21 
│                        │       ├ Title           : The cp utility in uutils coreutils fails to properly
│                        │       │                   handle setuid and ... 
│                        │       ├ Description     : The cp utility in uutils coreutils fails to properly
│                        │       │                   handle setuid and setgid bits when ownership preservation
│                        │       │                   fails. When copying with the -p (preserve) flag, the
│                        │       │                   utility applies the source mode bits even if the chown
│                        │       │                   operation is unsuccessful. This can result in a user-owned
│                        │       │                    copy retaining original privileged bits, creating
│                        │       │                   unexpected privileged executables that violate local
│                        │       │                   security policies. This differs from GNU cp, which clears
│                        │       │                   these bits when ownership cannot be preserved. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-281 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:H
│                        │       │                         │           /A:L 
│                        │       │                         ╰ V3Score : 6.6 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/9750 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35350 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35350 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:37.327Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:26.48Z 
│                        ├ [59]  ╭ VulnerabilityID : CVE-2026-35351 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:cc94ff91d5f3c050377f4f0ccfe4bad2eb3b1d36476822dfbec
│                        │       │                   dd6abe658185e 
│                        │       ├ Title           : The mv utility in uutils coreutils fails to preserve file
│                        │       │                   ownership du ... 
│                        │       ├ Description     : The mv utility in uutils coreutils fails to preserve file
│                        │       │                   ownership during moves across different filesystem
│                        │       │                   boundaries. The utility falls back to a copy-and-delete
│                        │       │                   routine that creates the destination file using the
│                        │       │                   caller's UID/GID rather than the source's metadata. This
│                        │       │                   flaw breaks backups and migrations, causing files moved by
│                        │       │                    a privileged user (e.g., root) to become root-owned
│                        │       │                   unexpectedly, which can lead to information disclosure or
│                        │       │                   restricted access for the intended owners. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-281 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:L/I:L
│                        │       │                         │           /A:L 
│                        │       │                         ╰ V3Score : 4.2 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/9714 
│                        │       │                  ├ [2]: https://github.com/uutils/coreutils/pull/11706 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35351 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35351 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:37.457Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:26.587Z 
│                        ├ [60]  ╭ VulnerabilityID : CVE-2026-35352 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:d7ff2c176c54011e1ede2d5d8bd5b04f66757f8c85c8905f9db
│                        │       │                   a3925a547b2ed 
│                        │       ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                        │       │                   exists in the m ... 
│                        │       ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                        │       │                   exists in the mkfifo utility of uutils coreutils. The
│                        │       │                   utility creates a FIFO and then performs a path-based
│                        │       │                   chmod to set permissions. A local attacker with write
│                        │       │                   access to the parent directory can swap the newly created
│                        │       │                   FIFO for a symbolic link between these two operations.
│                        │       │                   This redirects the chmod call to an arbitrary file,
│                        │       │                   potentially enabling privilege escalation if the utility
│                        │       │                   is run with elevated privileges. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-367 
│                        │       ├ VendorSeverity   ╭ ghsa  : 3 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H
│                        │       │                         │           /A:H 
│                        │       │                         ╰ V3Score : 7 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      4/4 
│                        │       │                  ├ [1]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      4/5 
│                        │       │                  ├ [2]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      4/6 
│                        │       │                  ├ [3]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [4]: https://github.com/uutils/coreutils/issues/10020 
│                        │       │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-35352 
│                        │       │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-35352 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:37.597Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:26.69Z 
│                        ├ [61]  ╭ VulnerabilityID : CVE-2026-35354 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:1f71f54703fa92444b58b48fad07a556594a6562cc0f4fe12f8
│                        │       │                   83727868e9615 
│                        │       ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                        │       │                   exists in the mv ... 
│                        │       ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                        │       │                   exists in the mv utility of uutils coreutils during
│                        │       │                   cross-device moves. The extended attribute (xattr)
│                        │       │                   preservation logic uses multiple path-based system calls
│                        │       │                   that perform fresh path-to-inode lookups for each
│                        │       │                   operation. A local attacker with write access to the
│                        │       │                   directory can exploit this race to swap files between
│                        │       │                   calls, causing the destination file to receive an
│                        │       │                   inconsistent mix of security xattrs, such as SELinux
│                        │       │                   labels or file capabilities. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-367 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H
│                        │       │                         │           /A:N 
│                        │       │                         ╰ V3Score : 4.7 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10014 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35354 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35354 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:37.867Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:26.907Z 
│                        ├ [62]  ╭ VulnerabilityID : CVE-2026-35357 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:45b16ae398216b84b5e583a4c4879909c41a714dea532a5f4d4
│                        │       │                   c10113f6cf370 
│                        │       ├ Title           : The cp utility in uutils coreutils is vulnerable to an
│                        │       │                   information dis ... 
│                        │       ├ Description     : The cp utility in uutils coreutils is vulnerable to an
│                        │       │                   information disclosure race condition. Destination files
│                        │       │                   are initially created with umask-derived permissions
│                        │       │                   (e.g., 0644) before being restricted to their final mode
│                        │       │                   (e.g., 0600) later in the process. A local attacker can
│                        │       │                   race to open the file during this window; once obtained,
│                        │       │                   the file descriptor remains valid and readable even after
│                        │       │                   the permissions are tightened, exposing sensitive or
│                        │       │                   private file contents. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-367 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                        │       │                         │           /A:N 
│                        │       │                         ╰ V3Score : 4.7 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10011 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35357 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35357 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:38.267Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:27.223Z 
│                        ├ [63]  ╭ VulnerabilityID : CVE-2026-35359 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:4c37c3529a08b296a3a46f7234facfc8ee6bc51051903d64899
│                        │       │                   b43538450f8f4 
│                        │       ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability in
│                        │       │                   the cp utilit ... 
│                        │       ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability in
│                        │       │                   the cp utility of uutils coreutils allows an attacker to
│                        │       │                   bypass no-dereference intent. The utility checks if a
│                        │       │                   source path is a symbolic link using path-based metadata
│                        │       │                   but subsequently opens it without the O_NOFOLLOW flag. An
│                        │       │                   attacker with concurrent write access can swap a regular
│                        │       │                   file for a symbolic link during this window, causing a
│                        │       │                   privileged cp process to copy the contents of arbitrary
│                        │       │                   sensitive files into a destination controlled by the
│                        │       │                   attacker. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-59 
│                        │       │                  ╰ [1]: CWE-367 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:N
│                        │       │                         │           /A:N 
│                        │       │                         ╰ V3Score : 4.7 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10017 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35359 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35359 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:38.537Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:27.437Z 
│                        ├ [64]  ╭ VulnerabilityID : CVE-2026-35360 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:efdd90a8d3d14304460b3f2ddbc72aaa69f8ac16ec9856cfbdc
│                        │       │                   9a03ec65df870 
│                        │       ├ Title           : The touch utility in uutils coreutils is vulnerable to a
│                        │       │                   Time-of-Check ... 
│                        │       ├ Description     : The touch utility in uutils coreutils is vulnerable to a
│                        │       │                   Time-of-Check to Time-of-Use (TOCTOU) race condition
│                        │       │                   during file creation. When the utility identifies a
│                        │       │                   missing path, it later attempts creation using
│                        │       │                   File::create(), which internally uses O_TRUNC. An attacker
│                        │       │                    can exploit this window to create a file or swap a
│                        │       │                   symlink at the target path, causing touch to truncate an
│                        │       │                   existing file and leading to permanent data loss. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-367 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H
│                        │       │                         │           /A:H 
│                        │       │                         ╰ V3Score : 6.3 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10019 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35360 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35360 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:38.673Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:27.543Z 
│                        ├ [65]  ╭ VulnerabilityID : CVE-2026-35363 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:cc839ef8bf1d7d3fe59461925a396da68ec3fc621402c828a1a
│                        │       │                   3bf09296f6300 
│                        │       ├ Title           : A vulnerability in the rm utility of uutils coreutils
│                        │       │                   allows the bypas ... 
│                        │       ├ Description     : A vulnerability in the rm utility of uutils coreutils
│                        │       │                   allows the bypass of safeguard mechanisms intended to
│                        │       │                   protect the current directory. While the utility correctly
│                        │       │                    refuses to delete . or .., it fails to recognize
│                        │       │                   equivalent paths with trailing slashes, such as ./ or
│                        │       │                   .///. An accidental or malicious execution of rm -rf ./
│                        │       │                   results in the silent recursive deletion of all contents
│                        │       │                   within the current directory. The command further obscures
│                        │       │                    the data loss by reporting a misleading 'Invalid input'
│                        │       │                   error, which may cause users to miss the critical window
│                        │       │                   for data recovery. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-22 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:R/S:U/C:N/I:H
│                        │       │                         │           /A:L 
│                        │       │                         ╰ V3Score : 5.6 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/9749 
│                        │       │                  ├ [2]: https://github.com/uutils/coreutils/security/advisor
│                        │       │                  │      ies/GHSA-89p7-7cq3-hhr2 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35363 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35363 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:39.12Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:27.867Z 
│                        ├ [66]  ╭ VulnerabilityID : CVE-2026-35364 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:d7d5468e8d59a5621d0c0bd760ee99dd351f53831abc75fb397
│                        │       │                   0e8ec24a38e8a 
│                        │       ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                        │       │                   exists in the m ... 
│                        │       ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) race condition
│                        │       │                   exists in the mv utility of uutils coreutils during
│                        │       │                   cross-device operations. The utility removes the
│                        │       │                   destination path before recreating it through a copy
│                        │       │                   operation. A local attacker with write access to the
│                        │       │                   destination directory can exploit this window to replace
│                        │       │                   the destination with a symbolic link. The subsequent
│                        │       │                   privileged move operation will follow the symlink,
│                        │       │                   allowing the attacker to redirect the write and overwrite
│                        │       │                   an arbitrary target file with contents from the source. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-367 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H
│                        │       │                         │           /A:H 
│                        │       │                         ╰ V3Score : 6.3 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10015 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35364 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35364 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:39.737Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:27.97Z 
│                        ├ [67]  ╭ VulnerabilityID : CVE-2026-35367 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:01489f85b6d8d21532207c702919b4cb62549f51825140b6505
│                        │       │                   00c1091b08013 
│                        │       ├ Title           : The nohup utility in uutils coreutils creates its default
│                        │       │                   output file, ... 
│                        │       ├ Description     : The nohup utility in uutils coreutils creates its default
│                        │       │                   output file, nohup.out, without specifying explicit
│                        │       │                   restricted permissions. This causes the file to inherit
│                        │       │                   umask-based permissions, typically resulting in a
│                        │       │                   world-readable file (0644). In multi-user environments,
│                        │       │                   this allows any user on the system to read the captured
│                        │       │                   stdout/stderr output of a command, potentially exposing
│                        │       │                   sensitive information. This behavior diverges from GNU
│                        │       │                   coreutils, which creates nohup.out with owner-only (0600)
│                        │       │                   permissions. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-732 
│                        │       ├ VendorSeverity   ╭ ghsa  : 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:N
│                        │       │                         │           /A:N 
│                        │       │                         ╰ V3Score : 3.3 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10021 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35367 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35367 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:40.423Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:28.297Z 
│                        ├ [68]  ╭ VulnerabilityID : CVE-2026-35368 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:f9384bda93cc22d8acdc7143f44d80e836eff1a5cee9d5b7716
│                        │       │                   a8d195515ce9e 
│                        │       ├ Title           : A vulnerability exists in the chroot utility of uutils
│                        │       │                   coreutils when  ... 
│                        │       ├ Description     : A vulnerability exists in the chroot utility of uutils
│                        │       │                   coreutils when using the --userspec option. The utility
│                        │       │                   resolves the user specification via getpwnam() after
│                        │       │                   entering the chroot but before dropping root privileges.
│                        │       │                   On glibc-based systems, this can trigger the Name Service
│                        │       │                   Switch (NSS) to load shared libraries (e.g.,
│                        │       │                   libnss_*.so.2) from the new root directory. If the NEWROOT
│                        │       │                    is writable by an attacker, they can inject a malicious
│                        │       │                   NSS module to execute arbitrary code as root, facilitating
│                        │       │                    a full container escape or privilege escalation. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-426 
│                        │       ├ VendorSeverity   ╭ ghsa  : 3 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:C/C:H/I:H
│                        │       │                         │           /A:H 
│                        │       │                         ╰ V3Score : 7.9 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10327 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35368 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35368 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:40.56Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:28.4Z 
│                        ├ [69]  ╭ VulnerabilityID : CVE-2026-35370 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:4b13ecc74ff7bd6395849b149d3986cca6eac9a0b12d2827524
│                        │       │                   7abc51ef4756a 
│                        │       ├ Title           : The id utility in uutils coreutils miscalculates the
│                        │       │                   groups= section o ... 
│                        │       ├ Description     : The id utility in uutils coreutils miscalculates the
│                        │       │                   groups= section of its output. The implementation uses a
│                        │       │                   user's real GID instead of their effective GID to compute
│                        │       │                   the group list, leading to potentially divergent output
│                        │       │                   compared to GNU coreutils. Because many scripts and
│                        │       │                   automated processes rely on the output of id to make
│                        │       │                   security-critical access-control or permission decisions,
│                        │       │                   this discrepancy can lead to unauthorized access or
│                        │       │                   security misconfigurations. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-863 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:L/I:L
│                        │       │                         │           /A:N 
│                        │       │                         ╰ V3Score : 4.4 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10006 
│                        │       │                  ├ [2]: https://github.com/uutils/coreutils/security/advisor
│                        │       │                  │      ies/GHSA-47c7-qrm7-mqw7 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35370 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35370 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:40.833Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:28.613Z 
│                        ├ [70]  ╭ VulnerabilityID : CVE-2026-35371 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:0ecf16ef9ba76b9de57c8c79c28d88f1f86e2acdec0d4476bb9
│                        │       │                   dea9e31bb423f 
│                        │       ├ Title           : The id utility in uutils coreutils exhibits incorrect
│                        │       │                   behavior in its  ... 
│                        │       ├ Description     : The id utility in uutils coreutils exhibits incorrect
│                        │       │                   behavior in its "pretty print" output when the real UID
│                        │       │                   and effective UID differ. The implementation incorrectly
│                        │       │                   uses the effective GID instead of the effective UID when
│                        │       │                   performing a name lookup for the effective user. This
│                        │       │                   results in misleading diagnostic output that can cause
│                        │       │                   automated scripts or system administrators to make
│                        │       │                   incorrect decisions regarding file permissions or access
│                        │       │                   control. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-451 
│                        │       ├ VendorSeverity   ╭ ghsa  : 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:L
│                        │       │                         │           /A:N 
│                        │       │                         ╰ V3Score : 3.3 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/issues/10006 
│                        │       │                  ├ [2]: https://github.com/uutils/coreutils/security/advisor
│                        │       │                  │      ies/GHSA-xv5w-cw7x-72gj 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35371 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35371 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:40.987Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:28.723Z 
│                        ├ [71]  ╭ VulnerabilityID : CVE-2026-35373 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:176f333b38c86e9589ffc2b81a5a044fa4b21fbae75a6cd9320
│                        │       │                   a88381872ce53 
│                        │       ├ Title           : A logic error in the ln utility of uutils coreutils causes
│                        │       │                    the program ... 
│                        │       ├ Description     : A logic error in the ln utility of uutils coreutils causes
│                        │       │                    the program to reject source paths containing non-UTF-8
│                        │       │                   filename bytes when using target-directory forms (e.g., ln
│                        │       │                    SOURCE... DIRECTORY). While GNU ln treats filenames as
│                        │       │                   raw bytes and creates the links correctly, the uutils
│                        │       │                   implementation enforces UTF-8 encoding, resulting in a
│                        │       │                   failure to stat the file and a non-zero exit code. In
│                        │       │                   environments where automated scripts or system tasks
│                        │       │                   process valid but non-UTF-8 filenames common on Unix
│                        │       │                   filesystems, this divergence causes the utility to fail,
│                        │       │                   leading to a local denial of service for those specific
│                        │       │                   operations. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-176 
│                        │       ├ VendorSeverity   ╭ ghsa  : 1 
│                        │       │                  ├ nvd   : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ╭ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │       │                  │      │           /A:L 
│                        │       │                  │      ╰ V3Score : 3.3 
│                        │       │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │       │                         │           /A:H 
│                        │       │                         ╰ V3Score : 5.5 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/pull/11403 
│                        │       │                  ├ [2]: https://github.com/uutils/coreutils/security/advisor
│                        │       │                  │      ies/GHSA-jcjr-rh8q-7xqf 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-35373 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-35373 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:41.997Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:28.933Z 
│                        ├ [72]  ╭ VulnerabilityID : CVE-2026-35374 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:c25ae21092a7930a34d6b70680a54d081c13d4183fb69f65d24
│                        │       │                   69e4546d620c3 
│                        │       ├ Title           : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                        │       │                   exists in the sp ... 
│                        │       ├ Description     : A Time-of-Check to Time-of-Use (TOCTOU) vulnerability
│                        │       │                   exists in the split utility of uutils coreutils. The
│                        │       │                   program attempts to prevent data loss by checking for
│                        │       │                   identity between input and output files using their file
│                        │       │                   paths before initiating the split operation. However, the
│                        │       │                   utility subsequently opens the output file with truncation
│                        │       │                    after this path-based validation is complete. A local
│                        │       │                   attacker with write access to the directory can exploit
│                        │       │                   this race window by manipulating mutable path components
│                        │       │                   (e.g., swapping a path with a symbolic link). This can
│                        │       │                   cause split to truncate and write to an unintended target
│                        │       │                   file, potentially including the input file itself or other
│                        │       │                    sensitive files accessible to the process, leading to
│                        │       │                   permanent data loss. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-367 
│                        │       ├ VendorSeverity   ╭ ghsa  : 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:N/I:H
│                        │       │                         │           /A:H 
│                        │       │                         ╰ V3Score : 6.3 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/pull/11401 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35374 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35374 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:42.127Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:29.04Z 
│                        ├ [73]  ╭ VulnerabilityID : CVE-2026-35377 
│                        │       ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │       ├ PkgName         : rust-coreutils 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 15e3b6ce4401d8b0 
│                        │       ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:d130369f5d4570d49131edcde6accebdbe3fb217c702ab9ec22
│                        │       │                   687d3a9be634b 
│                        │       ├ Title           : A logic error in the env utility of uutils coreutils
│                        │       │                   causes a failure  ... 
│                        │       ├ Description     : A logic error in the env utility of uutils coreutils
│                        │       │                   causes a failure to correctly parse command-line arguments
│                        │       │                    when utilizing the -S (split-string) option. In GNU env,
│                        │       │                   backslashes within single quotes are treated literally
│                        │       │                   (with the exceptions of \\ and \'). However, the uutils
│                        │       │                   implementation incorrectly attempts to validate these
│                        │       │                   sequences, resulting in an "invalid sequence" error and an
│                        │       │                    immediate process termination with an exit status of 125
│                        │       │                   when encountering valid but unrecognized sequences like \a
│                        │       │                    or \x. This divergence from GNU behavior breaks
│                        │       │                   compatibility for automated scripts and administrative
│                        │       │                   workflows that rely on standard split-string semantics,
│                        │       │                   leading to a local denial of service for those
│                        │       │                   operations. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-20 
│                        │       ├ VendorSeverity   ╭ ghsa  : 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:N
│                        │       │                         │           /A:L 
│                        │       │                         ╰ V3Score : 3.3 
│                        │       ├ References       ╭ [0]: https://github.com/uutils/coreutils 
│                        │       │                  ├ [1]: https://github.com/uutils/coreutils/pull/11512 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-35377 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-35377 
│                        │       ├ PublishedDate   : 2026-04-22T17:16:42.577Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:40:29.357Z 
│                        ├ [74]  ╭ VulnerabilityID : CVE-2026-15059 
│                        │       ├ PkgID           : systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd@259.5-0ubuntu3.3?arch=amd64&
│                        │       │                  │       distro=ubuntu-26.04 
│                        │       │                  ╰ UID : b86f46f01bbdf6db 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15059 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:2372b183b1d2ddfc8146d85f43c600a199bfe15fed7eaaddc7c
│                        │       │                   49ac9528a58f7 
│                        │       ├ Description     : Local unprivileged users can terminate arbitrary local
│                        │       │                   processes via a systemd-oomd IPC API due to a missing path
│                        │       │                    traversal validation. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-22 
│                        │       │                  ╰ [1]: CWE-59 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-652q-wxr6-h5j6 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15059 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:20.76Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:40.983Z 
│                        ├ [75]  ╭ VulnerabilityID : CVE-2026-15060 
│                        │       ├ PkgID           : systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd@259.5-0ubuntu3.3?arch=amd64&
│                        │       │                  │       distro=ubuntu-26.04 
│                        │       │                  ╰ UID : b86f46f01bbdf6db 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15060 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:f8bdadcddc84c15512d733fc7ba5bc1ccea8f0d3dc6ee10981b
│                        │       │                   49e6118893ad1 
│                        │       ├ Description     : When systemd-machined >= v259 (or v258 with a custom
│                        │       │                   `polkit` policy that allows `register-machine` access) is
│                        │       │                   running on a desktop system, an unprivileged user logged
│                        │       │                   in a desktop graphical session can kill arbitrary
│                        │       │                   processes, even privileged ones.
│                        │       │                   
│                        │       │                   - versions older than v259 are not affected, unless
│                        │       │                   unprivileged access is granted for the `register-machine`
│                        │       │                   polkit action via a local, custom policy config file
│                        │       │                   - versions older than v258 are not affected
│                        │       │                   - unrelated to the systemd service manager (pid 1 or user
│                        │       │                   session managers)
│                        │       │                   - systemd-machined is not typically installed by default,
│                        │       │                   and is typically in an optional, separate package (e.g.:
│                        │       │                   systemd-container)
│                        │       │                   - terminal-only or remote sessions (e.g.: ssh) are not
│                        │       │                   affected 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-284 
│                        │       │                  ╰ [1]: CWE-862 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-qwv4-3gwc-w5g8 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15060 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.13Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:41.087Z 
│                        ├ [76]  ╭ VulnerabilityID : CVE-2026-16742 
│                        │       ├ PkgID           : systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd@259.5-0ubuntu3.3?arch=amd64&
│                        │       │                  │       distro=ubuntu-26.04 
│                        │       │                  ╰ UID : b86f46f01bbdf6db 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-16742 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:5a51b2718003bf988a14f15a446b435a754ea4f3e1698cd8ef1
│                        │       │                   558ef5725f8a2 
│                        │       ├ Description     : systemd-homed contains a local privilege escalation bug
│                        │       │                   via arbitrary system group addition to a local, logged in,
│                        │       │                    homed-managed user 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-269 
│                        │       │                  ╰ [1]: CWE-347 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-jm29-p7hh-vjhv 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-16742 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.277Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T16:19:29.157Z 
│                        ├ [77]  ╭ VulnerabilityID : CVE-2026-40228 
│                        │       ├ PkgID           : systemd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd@259.5-0ubuntu3.3?arch=amd64&
│                        │       │                  │       distro=ubuntu-26.04 
│                        │       │                  ╰ UID : b86f46f01bbdf6db 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:2c7a658724f1ad1ac9b77b5bd6df42aa660482782ac13778ec2
│                        │       │                   368f147398943 
│                        │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │       │                   terminals via logger command 
│                        │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │       │                   sequences to the terminals of arbitrary users when a
│                        │       │                   "logger -p emerg" command is executed, if
│                        │       │                   ForwardToWall=yes is set. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-669 
│                        │       ├ VendorSeverity   ╭ nvd   : 1 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 3.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 2.9 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      5/1 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/
│                        │       │                         08/1 
│                        │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [78]  ╭ VulnerabilityID : CVE-2026-15059 
│                        │       ├ PkgID           : systemd-cryptsetup@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-cryptsetup 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-cryptsetup@259.5-0ubuntu3.3?
│                        │       │                  │       arch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : af6b7c311bd33196 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15059 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:0e6e415436c1948b5b4c9f76244e3a801e40fb3bb4420f7d64f
│                        │       │                   8b92b88916426 
│                        │       ├ Description     : Local unprivileged users can terminate arbitrary local
│                        │       │                   processes via a systemd-oomd IPC API due to a missing path
│                        │       │                    traversal validation. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-22 
│                        │       │                  ╰ [1]: CWE-59 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-652q-wxr6-h5j6 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15059 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:20.76Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:40.983Z 
│                        ├ [79]  ╭ VulnerabilityID : CVE-2026-15060 
│                        │       ├ PkgID           : systemd-cryptsetup@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-cryptsetup 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-cryptsetup@259.5-0ubuntu3.3?
│                        │       │                  │       arch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : af6b7c311bd33196 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15060 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:c21771788db817dfff0ac2a15e3b5ddc7f96feade0f06587553
│                        │       │                   cd30d6f723a78 
│                        │       ├ Description     : When systemd-machined >= v259 (or v258 with a custom
│                        │       │                   `polkit` policy that allows `register-machine` access) is
│                        │       │                   running on a desktop system, an unprivileged user logged
│                        │       │                   in a desktop graphical session can kill arbitrary
│                        │       │                   processes, even privileged ones.
│                        │       │                   
│                        │       │                   - versions older than v259 are not affected, unless
│                        │       │                   unprivileged access is granted for the `register-machine`
│                        │       │                   polkit action via a local, custom policy config file
│                        │       │                   - versions older than v258 are not affected
│                        │       │                   - unrelated to the systemd service manager (pid 1 or user
│                        │       │                   session managers)
│                        │       │                   - systemd-machined is not typically installed by default,
│                        │       │                   and is typically in an optional, separate package (e.g.:
│                        │       │                   systemd-container)
│                        │       │                   - terminal-only or remote sessions (e.g.: ssh) are not
│                        │       │                   affected 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-284 
│                        │       │                  ╰ [1]: CWE-862 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-qwv4-3gwc-w5g8 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15060 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.13Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:41.087Z 
│                        ├ [80]  ╭ VulnerabilityID : CVE-2026-16742 
│                        │       ├ PkgID           : systemd-cryptsetup@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-cryptsetup 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-cryptsetup@259.5-0ubuntu3.3?
│                        │       │                  │       arch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : af6b7c311bd33196 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-16742 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:f927912d1ada669e0b83e3fdfdc8f363f54fae0777809638747
│                        │       │                   6075a6bf341f7 
│                        │       ├ Description     : systemd-homed contains a local privilege escalation bug
│                        │       │                   via arbitrary system group addition to a local, logged in,
│                        │       │                    homed-managed user 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-269 
│                        │       │                  ╰ [1]: CWE-347 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-jm29-p7hh-vjhv 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-16742 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.277Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T16:19:29.157Z 
│                        ├ [81]  ╭ VulnerabilityID : CVE-2026-40228 
│                        │       ├ PkgID           : systemd-cryptsetup@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-cryptsetup 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-cryptsetup@259.5-0ubuntu3.3?
│                        │       │                  │       arch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : af6b7c311bd33196 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:d45d1d39d6f125e48949529eb5aec5887e4cdfc57b87c468419
│                        │       │                   2fccf8d387e82 
│                        │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │       │                   terminals via logger command 
│                        │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │       │                   sequences to the terminals of arbitrary users when a
│                        │       │                   "logger -p emerg" command is executed, if
│                        │       │                   ForwardToWall=yes is set. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-669 
│                        │       ├ VendorSeverity   ╭ nvd   : 1 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 3.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 2.9 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      5/1 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/
│                        │       │                         08/1 
│                        │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [82]  ╭ VulnerabilityID : CVE-2026-15059 
│                        │       ├ PkgID           : systemd-resolved@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-resolved 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-resolved@259.5-0ubuntu3.3?ar
│                        │       │                  │       ch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 10e1efbaf32dbc4a 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15059 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:7f4579fe5d7c6735f2162aa1ca953075f257aaadb6a21900da5
│                        │       │                   67800d3eb1a4a 
│                        │       ├ Description     : Local unprivileged users can terminate arbitrary local
│                        │       │                   processes via a systemd-oomd IPC API due to a missing path
│                        │       │                    traversal validation. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-22 
│                        │       │                  ╰ [1]: CWE-59 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-652q-wxr6-h5j6 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15059 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:20.76Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:40.983Z 
│                        ├ [83]  ╭ VulnerabilityID : CVE-2026-15060 
│                        │       ├ PkgID           : systemd-resolved@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-resolved 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-resolved@259.5-0ubuntu3.3?ar
│                        │       │                  │       ch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 10e1efbaf32dbc4a 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15060 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:a5e766516cb2313a2c8225798fed0f72755560df4d98775e9e3
│                        │       │                   1ec728dafaff6 
│                        │       ├ Description     : When systemd-machined >= v259 (or v258 with a custom
│                        │       │                   `polkit` policy that allows `register-machine` access) is
│                        │       │                   running on a desktop system, an unprivileged user logged
│                        │       │                   in a desktop graphical session can kill arbitrary
│                        │       │                   processes, even privileged ones.
│                        │       │                   
│                        │       │                   - versions older than v259 are not affected, unless
│                        │       │                   unprivileged access is granted for the `register-machine`
│                        │       │                   polkit action via a local, custom policy config file
│                        │       │                   - versions older than v258 are not affected
│                        │       │                   - unrelated to the systemd service manager (pid 1 or user
│                        │       │                   session managers)
│                        │       │                   - systemd-machined is not typically installed by default,
│                        │       │                   and is typically in an optional, separate package (e.g.:
│                        │       │                   systemd-container)
│                        │       │                   - terminal-only or remote sessions (e.g.: ssh) are not
│                        │       │                   affected 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-284 
│                        │       │                  ╰ [1]: CWE-862 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-qwv4-3gwc-w5g8 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15060 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.13Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:41.087Z 
│                        ├ [84]  ╭ VulnerabilityID : CVE-2026-16742 
│                        │       ├ PkgID           : systemd-resolved@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-resolved 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-resolved@259.5-0ubuntu3.3?ar
│                        │       │                  │       ch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 10e1efbaf32dbc4a 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-16742 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:cf72eb89500ed9170b6fddb883cc2a1ab19f4bb733d9dbb7d17
│                        │       │                   5e45c9a7fcbf9 
│                        │       ├ Description     : systemd-homed contains a local privilege escalation bug
│                        │       │                   via arbitrary system group addition to a local, logged in,
│                        │       │                    homed-managed user 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-269 
│                        │       │                  ╰ [1]: CWE-347 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-jm29-p7hh-vjhv 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-16742 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.277Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T16:19:29.157Z 
│                        ├ [85]  ╭ VulnerabilityID : CVE-2026-40228 
│                        │       ├ PkgID           : systemd-resolved@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-resolved 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-resolved@259.5-0ubuntu3.3?ar
│                        │       │                  │       ch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 10e1efbaf32dbc4a 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:e2092ddd092ef252ee43d0becde9abd061a0984f21d8e38fc39
│                        │       │                   b301b57d215e7 
│                        │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │       │                   terminals via logger command 
│                        │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │       │                   sequences to the terminals of arbitrary users when a
│                        │       │                   "logger -p emerg" command is executed, if
│                        │       │                   ForwardToWall=yes is set. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-669 
│                        │       ├ VendorSeverity   ╭ nvd   : 1 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 3.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 2.9 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      5/1 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/
│                        │       │                         08/1 
│                        │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [86]  ╭ VulnerabilityID : CVE-2026-15059 
│                        │       ├ PkgID           : systemd-sysv@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-sysv 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-sysv@259.5-0ubuntu3.3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 1d1b2d4862ed7f48 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15059 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:a97f92b3240389148c08ce5d71a7ab2507e53a2134d00bba0e1
│                        │       │                   3fdf09ed124ce 
│                        │       ├ Description     : Local unprivileged users can terminate arbitrary local
│                        │       │                   processes via a systemd-oomd IPC API due to a missing path
│                        │       │                    traversal validation. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-22 
│                        │       │                  ╰ [1]: CWE-59 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-652q-wxr6-h5j6 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15059 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:20.76Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:40.983Z 
│                        ├ [87]  ╭ VulnerabilityID : CVE-2026-15060 
│                        │       ├ PkgID           : systemd-sysv@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-sysv 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-sysv@259.5-0ubuntu3.3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 1d1b2d4862ed7f48 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15060 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:fba30c808f289c4a1d11d82349473a80bd5f4e2cc24eabaf632
│                        │       │                   8de1b8e95fdc6 
│                        │       ├ Description     : When systemd-machined >= v259 (or v258 with a custom
│                        │       │                   `polkit` policy that allows `register-machine` access) is
│                        │       │                   running on a desktop system, an unprivileged user logged
│                        │       │                   in a desktop graphical session can kill arbitrary
│                        │       │                   processes, even privileged ones.
│                        │       │                   
│                        │       │                   - versions older than v259 are not affected, unless
│                        │       │                   unprivileged access is granted for the `register-machine`
│                        │       │                   polkit action via a local, custom policy config file
│                        │       │                   - versions older than v258 are not affected
│                        │       │                   - unrelated to the systemd service manager (pid 1 or user
│                        │       │                   session managers)
│                        │       │                   - systemd-machined is not typically installed by default,
│                        │       │                   and is typically in an optional, separate package (e.g.:
│                        │       │                   systemd-container)
│                        │       │                   - terminal-only or remote sessions (e.g.: ssh) are not
│                        │       │                   affected 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-284 
│                        │       │                  ╰ [1]: CWE-862 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-qwv4-3gwc-w5g8 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15060 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.13Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:41.087Z 
│                        ├ [88]  ╭ VulnerabilityID : CVE-2026-16742 
│                        │       ├ PkgID           : systemd-sysv@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-sysv 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-sysv@259.5-0ubuntu3.3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 1d1b2d4862ed7f48 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-16742 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:579543de00a72d2f654942338812bdbefe9e84b03d715b8a269
│                        │       │                   2bf0e1b4accea 
│                        │       ├ Description     : systemd-homed contains a local privilege escalation bug
│                        │       │                   via arbitrary system group addition to a local, logged in,
│                        │       │                    homed-managed user 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-269 
│                        │       │                  ╰ [1]: CWE-347 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-jm29-p7hh-vjhv 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-16742 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.277Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T16:19:29.157Z 
│                        ├ [89]  ╭ VulnerabilityID : CVE-2026-40228 
│                        │       ├ PkgID           : systemd-sysv@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-sysv 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-sysv@259.5-0ubuntu3.3?arch=a
│                        │       │                  │       md64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 1d1b2d4862ed7f48 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:4a74c6c76ee48a6debd55db0fdc67516915a29510858d5572e7
│                        │       │                   f45cbdb416b5a 
│                        │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │       │                   terminals via logger command 
│                        │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │       │                   sequences to the terminals of arbitrary users when a
│                        │       │                   "logger -p emerg" command is executed, if
│                        │       │                   ForwardToWall=yes is set. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-669 
│                        │       ├ VendorSeverity   ╭ nvd   : 1 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 3.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 2.9 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      5/1 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/
│                        │       │                         08/1 
│                        │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [90]  ╭ VulnerabilityID : CVE-2026-15059 
│                        │       ├ PkgID           : systemd-timesyncd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-timesyncd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-timesyncd@259.5-0ubuntu3.3?a
│                        │       │                  │       rch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 5f0b8627479e9b69 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15059 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:2a672b28946dc2bbff8ed5a84d05b130432234f31a05a4ea779
│                        │       │                   3f0a8e3658c32 
│                        │       ├ Description     : Local unprivileged users can terminate arbitrary local
│                        │       │                   processes via a systemd-oomd IPC API due to a missing path
│                        │       │                    traversal validation. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-22 
│                        │       │                  ╰ [1]: CWE-59 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-652q-wxr6-h5j6 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15059 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:20.76Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:40.983Z 
│                        ├ [91]  ╭ VulnerabilityID : CVE-2026-15060 
│                        │       ├ PkgID           : systemd-timesyncd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-timesyncd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-timesyncd@259.5-0ubuntu3.3?a
│                        │       │                  │       rch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 5f0b8627479e9b69 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15060 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:5bbd1ad7d06d5b98d508cb49c97980a8789ae069f8a8cf2b351
│                        │       │                   b4a440a9519e4 
│                        │       ├ Description     : When systemd-machined >= v259 (or v258 with a custom
│                        │       │                   `polkit` policy that allows `register-machine` access) is
│                        │       │                   running on a desktop system, an unprivileged user logged
│                        │       │                   in a desktop graphical session can kill arbitrary
│                        │       │                   processes, even privileged ones.
│                        │       │                   
│                        │       │                   - versions older than v259 are not affected, unless
│                        │       │                   unprivileged access is granted for the `register-machine`
│                        │       │                   polkit action via a local, custom policy config file
│                        │       │                   - versions older than v258 are not affected
│                        │       │                   - unrelated to the systemd service manager (pid 1 or user
│                        │       │                   session managers)
│                        │       │                   - systemd-machined is not typically installed by default,
│                        │       │                   and is typically in an optional, separate package (e.g.:
│                        │       │                   systemd-container)
│                        │       │                   - terminal-only or remote sessions (e.g.: ssh) are not
│                        │       │                   affected 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-284 
│                        │       │                  ╰ [1]: CWE-862 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-qwv4-3gwc-w5g8 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-15060 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.13Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T18:17:41.087Z 
│                        ├ [92]  ╭ VulnerabilityID : CVE-2026-16742 
│                        │       ├ PkgID           : systemd-timesyncd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-timesyncd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-timesyncd@259.5-0ubuntu3.3?a
│                        │       │                  │       rch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 5f0b8627479e9b69 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ FixedVersion    : 259.5-0ubuntu3.4 
│                        │       ├ Status          : fixed 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-16742 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:eafbdc9fc09484d6205ba644fc5ad69a082c13ec12504769f46
│                        │       │                   ca16f290d5fff 
│                        │       ├ Description     : systemd-homed contains a local privilege escalation bug
│                        │       │                   via arbitrary system group addition to a local, logged in,
│                        │       │                    homed-managed user 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-269 
│                        │       │                  ╰ [1]: CWE-347 
│                        │       ├ VendorSeverity   ─ ubuntu: 2 
│                        │       ├ References       ╭ [0]: https://github.com/systemd/systemd/security/advisori
│                        │       │                  │      es/GHSA-jm29-p7hh-vjhv 
│                        │       │                  ├ [1]: https://ubuntu.com/security/notices/USN-8626-1 
│                        │       │                  ╰ [2]: https://www.cve.org/CVERecord?id=CVE-2026-16742 
│                        │       ├ PublishedDate   : 2026-08-10T14:17:21.277Z 
│                        │       ╰ LastModifiedDate: 2026-08-10T16:19:29.157Z 
│                        ├ [93]  ╭ VulnerabilityID : CVE-2026-40228 
│                        │       ├ PkgID           : systemd-timesyncd@259.5-0ubuntu3.3 
│                        │       ├ PkgName         : systemd-timesyncd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-timesyncd@259.5-0ubuntu3.3?a
│                        │       │                  │       rch=amd64&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 5f0b8627479e9b69 
│                        │       ├ InstalledVersion: 259.5-0ubuntu3.3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:f7a934921575a3a0d3d61031ccc2b5dfcb21f43e57ae8ea95de
│                        │       │                   8675df81c9d89 
│                        │       ├ Title           : systemd: systemd-journald: Unintended output to user
│                        │       │                   terminals via logger command 
│                        │       ├ Description     : In systemd 259, systemd-journald can send ANSI escape
│                        │       │                   sequences to the terminals of arbitrary users when a
│                        │       │                   "logger -p emerg" command is executed, if
│                        │       │                   ForwardToWall=yes is set. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-669 
│                        │       ├ VendorSeverity   ╭ nvd   : 1 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 1 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 3.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 2.9 
│                        │       ├ References       ╭ [0]: http://www.openwall.com/lists/oss-security/2026/05/0
│                        │       │                  │      5/1 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-40228 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-40228 
│                        │       │                  ├ [3]: https://www.cve.org/CVERecord?id=CVE-2026-40228 
│                        │       │                  ╰ [4]: https://www.openwall.com/lists/oss-security/2026/04/
│                        │       │                         08/1 
│                        │       ├ PublishedDate   : 2026-04-10T16:16:33.753Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T10:44:53.31Z 
│                        ├ [94]  ╭ VulnerabilityID : CVE-2024-56433 
│                        │       ├ PkgID           : uidmap@1:4.17.4-2ubuntu3 
│                        │       ├ PkgName         : uidmap 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/uidmap@4.17.4-2ubuntu3?arch=amd64&di
│                        │       │                  │       stro=ubuntu-26.04&epoch=1 
│                        │       │                  ╰ UID : f2f08615ce289 
│                        │       ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:96235125aceded6b7493b7f0ff33949a7a22b5bc744fc0c545f
│                        │       │                   8acee869d487a 
│                        │       ├ Title           : shadow-utils: Default subordinate ID configuration in
│                        │       │                   /etc/login.defs could lead to compromise 
│                        │       ├ Description     : shadow-utils (aka shadow) 4.4 through 4.17.0 establishes a
│                        │       │                    default /etc/subuid behavior (e.g., uid 100000 through
│                        │       │                   165535 for the first user account) that can realistically
│                        │       │                   conflict with the uids of users defined on locally
│                        │       │                   administered networks, potentially leading to account
│                        │       │                   takeover, e.g., by leveraging newuidmap for access to an
│                        │       │                   NFS home directory (or same-host resources in the case of
│                        │       │                   remote logins by these local network users). NOTE: it may
│                        │       │                   also be argued that system administrators should not have
│                        │       │                   assigned uids, within local networks, that are within the
│                        │       │                   range that can occur in /etc/subuid. 
│                        │       ├ Severity        : LOW 
│                        │       ├ CweIDs           ─ [0]: CWE-1188 
│                        │       ├ VendorSeverity   ╭ alma       : 1 
│                        │       │                  ├ azure      : 1 
│                        │       │                  ├ oracle-oval: 1 
│                        │       │                  ├ redhat     : 1 
│                        │       │                  ├ rocky      : 1 
│                        │       │                  ╰ ubuntu     : 1 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:L/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.6 
│                        │       ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2025:20559 
│                        │       │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2024-56433 
│                        │       │                  ├ [2] : https://bugzilla.redhat.com/2334165 
│                        │       │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2334165 
│                        │       │                  ├ [4] : https://creativecommons.org/licenses/by/4.0/ 
│                        │       │                  ├ [5] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-
│                        │       │                  │       2024-56433 
│                        │       │                  ├ [6] : https://errata.almalinux.org/9/ALSA-2025-20559.html 
│                        │       │                  ├ [7] : https://errata.rockylinux.org/RLSA-2025:20559 
│                        │       │                  ├ [8] : https://github.com/shadow-maint/shadow/blob/e2512d5
│                        │       │                  │       741d4a44bdd81a8c2d0029b6222728cf0/etc/login.defs#L2
│                        │       │                  │       38-L241 
│                        │       │                  ├ [9] : https://github.com/shadow-maint/shadow/issues/1157 
│                        │       │                  ├ [10]: https://github.com/shadow-maint/shadow/releases/tag
│                        │       │                  │       /4.4 
│                        │       │                  ├ [11]: https://linux.oracle.com/cve/CVE-2024-56433.html 
│                        │       │                  ├ [12]: https://linux.oracle.com/errata/ELSA-2025-20559-0.h
│                        │       │                  │       tml 
│                        │       │                  ├ [13]: https://nvd.nist.gov/vuln/detail/CVE-2024-56433 
│                        │       │                  ╰ [14]: https://www.cve.org/CVERecord?id=CVE-2024-56433 
│                        │       ├ PublishedDate   : 2024-12-26T09:15:07.267Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T08:12:10.903Z 
│                        ├ [95]  ╭ VulnerabilityID : CVE-2026-27456 
│                        │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : util-linux 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd6
│                        │       │                  │       4&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 34e9503915630576 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:2a2183bbbb6a25439d65231d923ef92acaa70b946f7a3edd9b1
│                        │       │                   cfaf926a73166 
│                        │       ├ Title           : util-linux: TOCTOU in the mount program when setting up
│                        │       │                   loop devices 
│                        │       ├ Description     : util-linux is a random collection of Linux utilities.
│                        │       │                   Prior to version 2.41.4, a TOCTOU
│                        │       │                   (Time-of-Check-Time-of-Use) vulnerability has been
│                        │       │                   identified in the SUID binary /usr/bin/mount from
│                        │       │                   util-linux. The mount binary, when setting up loop
│                        │       │                   devices, validates the source file path with user
│                        │       │                   privileges via fork() + setuid() + realpath(), but
│                        │       │                   subsequently re-canonicalizes and opens it with root
│                        │       │                   privileges (euid=0) without verifying that the path has
│                        │       │                   not been replaced between both operations. Neither
│                        │       │                   O_NOFOLLOW, nor inode comparison, nor post-open fstat()
│                        │       │                   are employed. This allows a local unprivileged user to
│                        │       │                   replace the source file with a symlink pointing to any
│                        │       │                   root-owned file or device during the race window, causing
│                        │       │                   the SUID binary to open and mount it as root. Exploitation
│                        │       │                    requires an /etc/fstab entry with user,loop options whose
│                        │       │                    path points to a directory where the attacker has write
│                        │       │                   permission, and that /usr/bin/mount has the SUID bit set
│                        │       │                   (the default configuration on virtually all Linux
│                        │       │                   distributions). The impact is unauthorized read access to
│                        │       │                   root-protected files and block devices, including backup
│                        │       │                   images, disk volumes, and any file containing a valid
│                        │       │                   filesystem. This issue has been patched in version
│                        │       │                   2.41.4. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ╭ [0]: CWE-59 
│                        │       │                  ├ [1]: CWE-269 
│                        │       │                  ╰ [2]: CWE-367 
│                        │       ├ VendorSeverity   ╭ azure       : 2 
│                        │       │                  ├ bottlerocket: 2 
│                        │       │                  ├ julia       : 2 
│                        │       │                  ├ redhat      : 2 
│                        │       │                  ╰ ubuntu      : 2 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                  │        │           :N/A:N 
│                        │       │                  │        ╰ V3Score : 4.7 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :N/A:N 
│                        │       │                           ╰ V3Score : 4.7 
│                        │       ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │       │                  │      26-27456 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-27456 
│                        │       │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core
│                        │       │                  │      -kit/blob/develop/advisories/14.5.0/BRSA-jgcxwcxt3sx
│                        │       │                  │      d.toml 
│                        │       │                  ├ [3]: https://github.com/util-linux/util-linux/commit/5e39
│                        │       │                  │      0467b26a3cf3fecc04e1a0d482dff3162fc4 
│                        │       │                  ├ [4]: https://github.com/util-linux/util-linux/releases/ta
│                        │       │                  │      g/v2.41.4 
│                        │       │                  ├ [5]: https://github.com/util-linux/util-linux/security/ad
│                        │       │                  │      visories/GHSA-qq4x-vfq4-9h9g 
│                        │       │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-27456 
│                        │       │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-27456 
│                        │       ├ PublishedDate   : 2026-04-03T22:16:25.4Z 
│                        │       ╰ LastModifiedDate: 2026-07-24T22:10:00.14Z 
│                        ├ [96]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │       ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │       ├ PkgName         : util-linux 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd6
│                        │       │                  │       4&distro=ubuntu-26.04 
│                        │       │                  ╰ UID : 34e9503915630576 
│                        │       ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:61dfc36e153734e5403052be2bf34ef16ff7572a4e8a9a40733
│                        │       │                   0964a0fa3412e 
│                        │       ├ Title           : util-linux: util-linux: Access control bypass due to
│                        │       │                   improper hostname canonicalization 
│                        │       ├ Description     : A flaw was found in util-linux. Improper hostname
│                        │       │                   canonicalization in the `login(1)` utility, when invoked
│                        │       │                   with the `-h` option, can modify the supplied remote
│                        │       │                   hostname before setting `PAM_RHOST`. A remote attacker
│                        │       │                   could exploit this by providing a specially crafted
│                        │       │                   hostname, potentially bypassing host-based Pluggable
│                        │       │                   Authentication Modules (PAM) access control rules that
│                        │       │                   rely on fully qualified domain names. This could lead to
│                        │       │                   unauthorized access. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-289 
│                        │       ├ VendorSeverity   ╭ azure : 1 
│                        │       │                  ├ nvd   : 2 
│                        │       │                  ├ photon: 2 
│                        │       │                  ├ redhat: 1 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 5.3 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I
│                        │       │                           │           :L/A:N 
│                        │       │                           ╰ V3Score : 3.7 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:7180 
│                        │       │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-3184 
│                        │       │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2442570 
│                        │       │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-3184 
│                        │       │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-3184 
│                        │       ├ PublishedDate   : 2026-04-03T19:17:23.377Z 
│                        │       ╰ LastModifiedDate: 2026-07-21T19:10:00.107Z 
│                        ├ [97]  ╭ VulnerabilityID : CVE-2026-51400 
│                        │       ├ PkgID           : vim@2:9.1.2141-1ubuntu4.7 
│                        │       ├ PkgName         : vim 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.2141-1ubuntu4.7?arch=amd64&d
│                        │       │                  │       istro=ubuntu-26.04&epoch=2 
│                        │       │                  ╰ UID : 81174070196e01a7 
│                        │       ├ InstalledVersion: 2:9.1.2141-1ubuntu4.7 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-51400 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:89a36380d9398b38384c8705098815c5893f51dccf983dd117b
│                        │       │                   43148d70ab2f7 
│                        │       ├ Title           : vim: Vim: Arbitrary code execution via vms_fixfilename()
│                        │       │                   function 
│                        │       ├ Description     : An issue in Vim Project v9.2.0389 and earlier allows a
│                        │       │                   local attacker to execute arbitrary code via the
│                        │       │                   vms_fixfilename() function within file vim/src/os_vms.c 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-401 
│                        │       ├ VendorSeverity   ╭ redhat: 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:H 
│                        │       │                           ╰ V3Score : 5.5 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-51400 
│                        │       │                  ├ [1]: https://gist.github.com/jiejiaodedengdai/ff5d34a5231
│                        │       │                  │      67e09b7d8330cc9f5d4e5#file-vim-os_vms-cves-md 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-51400 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-51400 
│                        │       ├ PublishedDate   : 2026-08-04T21:16:36.433Z 
│                        │       ╰ LastModifiedDate: 2026-08-05T18:17:11.477Z 
│                        ├ [98]  ╭ VulnerabilityID : CVE-2026-51401 
│                        │       ├ PkgID           : vim@2:9.1.2141-1ubuntu4.7 
│                        │       ├ PkgName         : vim 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim@9.1.2141-1ubuntu4.7?arch=amd64&d
│                        │       │                  │       istro=ubuntu-26.04&epoch=2 
│                        │       │                  ╰ UID : 81174070196e01a7 
│                        │       ├ InstalledVersion: 2:9.1.2141-1ubuntu4.7 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-51401 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:e9f503ab0d3701fad4ce5b3c444a9d80851ae090091792cbc72
│                        │       │                   b4c064ea9e19e 
│                        │       ├ Title           : vim: Vim: Arbitrary code execution via vms_fixfilename()
│                        │       │                   function 
│                        │       ├ Description     : An issue in Vim Project v9.2.0389 and earlier allows a
│                        │       │                   local attacker to execute arbitrary code via the
│                        │       │                   vms_fixfilename() function within file vim/src/os_vms.c 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-94 
│                        │       ├ VendorSeverity   ╭ redhat: 3 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :H/A:H 
│                        │       │                           ╰ V3Score : 7.8 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-51401 
│                        │       │                  ├ [1]: https://gist.github.com/jiejiaodedengdai/ff5d34a5231
│                        │       │                  │      67e09b7d8330cc9f5d4e5#file-vim-os_vms-cves-md 
│                        │       │                  ├ [2]: https://github.com/vim/vim 
│                        │       │                  ├ [3]: https://github.com/vim/vim/blob/master/src/os_vms.c 
│                        │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-51401 
│                        │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-51401 
│                        │       ├ PublishedDate   : 2026-08-04T21:16:36.567Z 
│                        │       ╰ LastModifiedDate: 2026-08-05T20:17:09.31Z 
│                        ├ [99]  ╭ VulnerabilityID : CVE-2026-51400 
│                        │       ├ PkgID           : vim-common@2:9.1.2141-1ubuntu4.7 
│                        │       ├ PkgName         : vim-common 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.2141-1ubuntu4.7?arch=
│                        │       │                  │       all&distro=ubuntu-26.04&epoch=2 
│                        │       │                  ╰ UID : e4335c61f6d20a99 
│                        │       ├ InstalledVersion: 2:9.1.2141-1ubuntu4.7 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-51400 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:c8638255af64860fe82c77067e8edc26ce8510be3478b3f210b
│                        │       │                   89827db4d444c 
│                        │       ├ Title           : vim: Vim: Arbitrary code execution via vms_fixfilename()
│                        │       │                   function 
│                        │       ├ Description     : An issue in Vim Project v9.2.0389 and earlier allows a
│                        │       │                   local attacker to execute arbitrary code via the
│                        │       │                   vms_fixfilename() function within file vim/src/os_vms.c 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-401 
│                        │       ├ VendorSeverity   ╭ redhat: 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:H 
│                        │       │                           ╰ V3Score : 5.5 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-51400 
│                        │       │                  ├ [1]: https://gist.github.com/jiejiaodedengdai/ff5d34a5231
│                        │       │                  │      67e09b7d8330cc9f5d4e5#file-vim-os_vms-cves-md 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-51400 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-51400 
│                        │       ├ PublishedDate   : 2026-08-04T21:16:36.433Z 
│                        │       ╰ LastModifiedDate: 2026-08-05T18:17:11.477Z 
│                        ├ [100] ╭ VulnerabilityID : CVE-2026-51401 
│                        │       ├ PkgID           : vim-common@2:9.1.2141-1ubuntu4.7 
│                        │       ├ PkgName         : vim-common 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-common@9.1.2141-1ubuntu4.7?arch=
│                        │       │                  │       all&distro=ubuntu-26.04&epoch=2 
│                        │       │                  ╰ UID : e4335c61f6d20a99 
│                        │       ├ InstalledVersion: 2:9.1.2141-1ubuntu4.7 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-51401 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:37f513f927eed7adf8c45765b9aa1639167434cbbd28020d344
│                        │       │                   be853e719c740 
│                        │       ├ Title           : vim: Vim: Arbitrary code execution via vms_fixfilename()
│                        │       │                   function 
│                        │       ├ Description     : An issue in Vim Project v9.2.0389 and earlier allows a
│                        │       │                   local attacker to execute arbitrary code via the
│                        │       │                   vms_fixfilename() function within file vim/src/os_vms.c 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-94 
│                        │       ├ VendorSeverity   ╭ redhat: 3 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :H/A:H 
│                        │       │                           ╰ V3Score : 7.8 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-51401 
│                        │       │                  ├ [1]: https://gist.github.com/jiejiaodedengdai/ff5d34a5231
│                        │       │                  │      67e09b7d8330cc9f5d4e5#file-vim-os_vms-cves-md 
│                        │       │                  ├ [2]: https://github.com/vim/vim 
│                        │       │                  ├ [3]: https://github.com/vim/vim/blob/master/src/os_vms.c 
│                        │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-51401 
│                        │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-51401 
│                        │       ├ PublishedDate   : 2026-08-04T21:16:36.567Z 
│                        │       ╰ LastModifiedDate: 2026-08-05T20:17:09.31Z 
│                        ├ [101] ╭ VulnerabilityID : CVE-2026-51400 
│                        │       ├ PkgID           : vim-runtime@2:9.1.2141-1ubuntu4.7 
│                        │       ├ PkgName         : vim-runtime 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.2141-1ubuntu4.7?arch
│                        │       │                  │       =all&distro=ubuntu-26.04&epoch=2 
│                        │       │                  ╰ UID : b876d7ab71a834bc 
│                        │       ├ InstalledVersion: 2:9.1.2141-1ubuntu4.7 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-51400 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:f8236beef9ba656ab68482cebf6aa2c0c2d7804fe8024b12390
│                        │       │                   ca79bca13f0fb 
│                        │       ├ Title           : vim: Vim: Arbitrary code execution via vms_fixfilename()
│                        │       │                   function 
│                        │       ├ Description     : An issue in Vim Project v9.2.0389 and earlier allows a
│                        │       │                   local attacker to execute arbitrary code via the
│                        │       │                   vms_fixfilename() function within file vim/src/os_vms.c 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-401 
│                        │       ├ VendorSeverity   ╭ redhat: 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:H 
│                        │       │                           ╰ V3Score : 5.5 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-51400 
│                        │       │                  ├ [1]: https://gist.github.com/jiejiaodedengdai/ff5d34a5231
│                        │       │                  │      67e09b7d8330cc9f5d4e5#file-vim-os_vms-cves-md 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-51400 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-51400 
│                        │       ├ PublishedDate   : 2026-08-04T21:16:36.433Z 
│                        │       ╰ LastModifiedDate: 2026-08-05T18:17:11.477Z 
│                        ├ [102] ╭ VulnerabilityID : CVE-2026-51401 
│                        │       ├ PkgID           : vim-runtime@2:9.1.2141-1ubuntu4.7 
│                        │       ├ PkgName         : vim-runtime 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/vim-runtime@9.1.2141-1ubuntu4.7?arch
│                        │       │                  │       =all&distro=ubuntu-26.04&epoch=2 
│                        │       │                  ╰ UID : b876d7ab71a834bc 
│                        │       ├ InstalledVersion: 2:9.1.2141-1ubuntu4.7 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-51401 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:3b16b22c23c66e1af5145dae17e1b78626446e15667d8502e48
│                        │       │                   9ac4a73f042f9 
│                        │       ├ Title           : vim: Vim: Arbitrary code execution via vms_fixfilename()
│                        │       │                   function 
│                        │       ├ Description     : An issue in Vim Project v9.2.0389 and earlier allows a
│                        │       │                   local attacker to execute arbitrary code via the
│                        │       │                   vms_fixfilename() function within file vim/src/os_vms.c 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-94 
│                        │       ├ VendorSeverity   ╭ redhat: 3 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :H/A:H 
│                        │       │                           ╰ V3Score : 7.8 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-51401 
│                        │       │                  ├ [1]: https://gist.github.com/jiejiaodedengdai/ff5d34a5231
│                        │       │                  │      67e09b7d8330cc9f5d4e5#file-vim-os_vms-cves-md 
│                        │       │                  ├ [2]: https://github.com/vim/vim 
│                        │       │                  ├ [3]: https://github.com/vim/vim/blob/master/src/os_vms.c 
│                        │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-51401 
│                        │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-51401 
│                        │       ├ PublishedDate   : 2026-08-04T21:16:36.567Z 
│                        │       ╰ LastModifiedDate: 2026-08-05T20:17:09.31Z 
│                        ├ [103] ╭ VulnerabilityID : CVE-2021-31879 
│                        │       ├ PkgID           : wget@1.25.0-2ubuntu4.3 
│                        │       ├ PkgName         : wget 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/wget@1.25.0-2ubuntu4.3?arch=amd64&di
│                        │       │                  │       stro=ubuntu-26.04 
│                        │       │                  ╰ UID : a7a564ca8877281a 
│                        │       ├ InstalledVersion: 1.25.0-2ubuntu4.3 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-31879 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:a65d5ff5c6f97f86b0c688d72f4cb75aaee0b15935ceffacda9
│                        │       │                   10d1383ecdb40 
│                        │       ├ Title           : wget: authorization header disclosure on redirect 
│                        │       ├ Description     : GNU Wget through 1.21.1 does not omit the Authorization
│                        │       │                   header upon a redirect to a different origin, a related
│                        │       │                   issue to CVE-2018-1000007. 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-601 
│                        │       ├ VendorSeverity   ╭ amazon     : 2 
│                        │       │                  ├ cbl-mariner: 2 
│                        │       │                  ├ julia      : 2 
│                        │       │                  ├ nvd        : 2 
│                        │       │                  ├ photon     : 2 
│                        │       │                  ├ redhat     : 2 
│                        │       │                  ╰ ubuntu     : 2 
│                        │       ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ╰ V3Score : 6.1 
│                        │       │                  ├ nvd    ╭ V2Vector: AV:N/AC:M/Au:N/C:P/I:P/A:N 
│                        │       │                  │        ├ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │       │                  │        │           :L/A:N 
│                        │       │                  │        ├ V2Score : 5.8 
│                        │       │                  │        ╰ V3Score : 6.1 
│                        │       │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:H/I
│                        │       │                           │           :N/A:N 
│                        │       │                           ╰ V3Score : 6.5 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2021-31879 
│                        │       │                  ├ [1]: https://mail.gnu.org/archive/html/bug-wget/2021-02/m
│                        │       │                  │      sg00002.html 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2021-31879 
│                        │       │                  ├ [3]: https://savannah.gnu.org/bugs/?56909 
│                        │       │                  ├ [4]: https://security.netapp.com/advisory/ntap-20210618-0
│                        │       │                  │      002/ 
│                        │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2021-31879 
│                        │       ├ PublishedDate   : 2021-04-29T05:15:08.707Z 
│                        │       ╰ LastModifiedDate: 2026-06-17T03:52:23.987Z 
│                        ├ [104] ╭ VulnerabilityID : CVE-2026-51400 
│                        │       ├ PkgID           : xxd@2:9.1.2141-1ubuntu4.7 
│                        │       ├ PkgName         : xxd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.2141-1ubuntu4.7?arch=amd64&d
│                        │       │                  │       istro=ubuntu-26.04&epoch=2 
│                        │       │                  ╰ UID : 2c613ff4ce2c8406 
│                        │       ├ InstalledVersion: 2:9.1.2141-1ubuntu4.7 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-51400 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:0b990eca01a6a9cc8beed86c26427f9468005662c39c258fb32
│                        │       │                   36fb23349b879 
│                        │       ├ Title           : vim: Vim: Arbitrary code execution via vms_fixfilename()
│                        │       │                   function 
│                        │       ├ Description     : An issue in Vim Project v9.2.0389 and earlier allows a
│                        │       │                   local attacker to execute arbitrary code via the
│                        │       │                   vms_fixfilename() function within file vim/src/os_vms.c 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-401 
│                        │       ├ VendorSeverity   ╭ redhat: 2 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                        │       │                           │           :N/A:H 
│                        │       │                           ╰ V3Score : 5.5 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-51400 
│                        │       │                  ├ [1]: https://gist.github.com/jiejiaodedengdai/ff5d34a5231
│                        │       │                  │      67e09b7d8330cc9f5d4e5#file-vim-os_vms-cves-md 
│                        │       │                  ├ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-51400 
│                        │       │                  ╰ [3]: https://www.cve.org/CVERecord?id=CVE-2026-51400 
│                        │       ├ PublishedDate   : 2026-08-04T21:16:36.433Z 
│                        │       ╰ LastModifiedDate: 2026-08-05T18:17:11.477Z 
│                        ├ [105] ╭ VulnerabilityID : CVE-2026-51401 
│                        │       ├ PkgID           : xxd@2:9.1.2141-1ubuntu4.7 
│                        │       ├ PkgName         : xxd 
│                        │       ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/xxd@9.1.2141-1ubuntu4.7?arch=amd64&d
│                        │       │                  │       istro=ubuntu-26.04&epoch=2 
│                        │       │                  ╰ UID : 2c613ff4ce2c8406 
│                        │       ├ InstalledVersion: 2:9.1.2141-1ubuntu4.7 
│                        │       ├ Status          : affected 
│                        │       ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                        │       │                  │         d7336b2c58d05cd55db5e8 
│                        │       │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                        │       │                            1c3288b3dbfc02159c2a7d 
│                        │       ├ SeveritySource  : ubuntu 
│                        │       ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-51401 
│                        │       ├ DataSource       ╭ ID  : ubuntu 
│                        │       │                  ├ Name: Ubuntu CVE Tracker 
│                        │       │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │       ├ Fingerprint     : sha256:24c973e3b0c41562c838b2e1d2cbe1aa9d51377f24fd782ddfb
│                        │       │                   41cbba3eef996 
│                        │       ├ Title           : vim: Vim: Arbitrary code execution via vms_fixfilename()
│                        │       │                   function 
│                        │       ├ Description     : An issue in Vim Project v9.2.0389 and earlier allows a
│                        │       │                   local attacker to execute arbitrary code via the
│                        │       │                   vms_fixfilename() function within file vim/src/os_vms.c 
│                        │       ├ Severity        : MEDIUM 
│                        │       ├ CweIDs           ─ [0]: CWE-94 
│                        │       ├ VendorSeverity   ╭ redhat: 3 
│                        │       │                  ╰ ubuntu: 2 
│                        │       ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I
│                        │       │                           │           :H/A:H 
│                        │       │                           ╰ V3Score : 7.8 
│                        │       ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-51401 
│                        │       │                  ├ [1]: https://gist.github.com/jiejiaodedengdai/ff5d34a5231
│                        │       │                  │      67e09b7d8330cc9f5d4e5#file-vim-os_vms-cves-md 
│                        │       │                  ├ [2]: https://github.com/vim/vim 
│                        │       │                  ├ [3]: https://github.com/vim/vim/blob/master/src/os_vms.c 
│                        │       │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-51401 
│                        │       │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-51401 
│                        │       ├ PublishedDate   : 2026-08-04T21:16:36.567Z 
│                        │       ╰ LastModifiedDate: 2026-08-05T20:17:09.31Z 
│                        ╰ [106] ╭ VulnerabilityID : CVE-2026-27171 
│                                ├ PkgID           : zlib1g@1:1.3.dfsg+really1.3.1-1ubuntu3 
│                                ├ PkgName         : zlib1g 
│                                ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/zlib1g@1.3.dfsg%2Breally1.3.1-1ubunt
│                                │                  │       u3?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                                │                  ╰ UID : e6f2cecd2b667912 
│                                ├ InstalledVersion: 1:1.3.dfsg+really1.3.1-1ubuntu3 
│                                ├ Status          : affected 
│                                ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713
│                                │                  │         d7336b2c58d05cd55db5e8 
│                                │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c0783564
│                                │                            1c3288b3dbfc02159c2a7d 
│                                ├ SeveritySource  : ubuntu 
│                                ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27171 
│                                ├ DataSource       ╭ ID  : ubuntu 
│                                │                  ├ Name: Ubuntu CVE Tracker 
│                                │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                                ├ Fingerprint     : sha256:18c8c04f02bbf669aa94d601e4d65f6efa328da6ace57e3dfe9
│                                │                   41e4fd2f60924 
│                                ├ Title           : zlib: zlib: Denial of Service via infinite loop in CRC32
│                                │                   combine functions 
│                                ├ Description     : zlib before 1.3.2 allows CPU consumption via
│                                │                   crc32_combine64 and crc32_combine_gen64 because x2nmodp
│                                │                   can do right shifts within a loop that has no termination
│                                │                   condition. 
│                                ├ Severity        : LOW 
│                                ├ CweIDs           ─ [0]: CWE-1284 
│                                ├ VendorSeverity   ╭ amazon     : 1 
│                                │                  ├ azure      : 1 
│                                │                  ├ cbl-mariner: 1 
│                                │                  ├ julia      : 2 
│                                │                  ├ nvd        : 2 
│                                │                  ├ photon     : 2 
│                                │                  ├ redhat     : 1 
│                                │                  ╰ ubuntu     : 1 
│                                ├ CVSS             ╭ julia  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                                │                  │        │           :N/A:H 
│                                │                  │        ╰ V3Score : 5.5 
│                                │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                                │                  │        │           :N/A:H 
│                                │                  │        ╰ V3Score : 5.5 
│                                │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I
│                                │                           │           :N/A:L 
│                                │                           ╰ V3Score : 3.3 
│                                ├ References       ╭ [0] : https://7asecurity.com/blog/2026/02/zlib-7asecurity
│                                │                  │       -audit 
│                                │                  ├ [1] : https://7asecurity.com/blog/2026/02/zlib-7asecurity
│                                │                  │       -audit/ 
│                                │                  ├ [2] : https://7asecurity.com/reports/pentest-report-zlib-
│                                │                  │       RC1.1.pdf 
│                                │                  ├ [3] : https://access.redhat.com/security/cve/CVE-2026-27171 
│                                │                  ├ [4] : https://github.com/advisories/GHSA-h858-mf2m-8jf4 
│                                │                  ├ [5] : https://github.com/madler/zlib/issues/904 
│                                │                  ├ [6] : https://github.com/madler/zlib/releases/tag/v1.3.2 
│                                │                  ├ [7] : https://nvd.nist.gov/vuln/detail/CVE-2026-27171 
│                                │                  ├ [8] : https://ostif.org/zlib-audit-complete 
│                                │                  ├ [9] : https://ostif.org/zlib-audit-complete/ 
│                                │                  ╰ [10]: https://www.cve.org/CVERecord?id=CVE-2026-27171 
│                                ├ PublishedDate   : 2026-02-18T04:16:01.263Z 
│                                ╰ LastModifiedDate: 2026-06-17T10:26:47.357Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:c65f89fc428698e77e51d3b493a5cd7dd28eea8696764846b3cc3
│                        │     │                   71ae5e2ce6f 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:c002a51246aeb6e24458987980900e459192dffc36e4522da760c
│                        │     │                   7ac68b31b25 
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
│                        │     │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:51057 
│                        │     │                  ├ [5] : https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │     │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │     │                  ├ [7] : https://github.com/moby/moby 
│                        │     │                  ├ [8] : https://github.com/moby/moby/security/advisories/GHSA
│                        │     │                  │       -x86f-5xw2-fm2r 
│                        │     │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │     │                  ├ [10]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-41567.json 
│                        │     │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │     ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │     ╰ LastModifiedDate: 2026-08-10T13:19:21.29Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:c7cc7da3a55a9c95b373dcd75e653920031e0d9a1681f10db30e3
│                        │     │                   797a1eafc7c 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:26ee81ea279b39d20bc38c02a45da7df0f65f3b8d48f618323f8a
│                        │     │                   4653bbc3270 
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
│                        │     ╰ LastModifiedDate: 2026-08-10T13:19:04.067Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-41568 
│                        │     ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:5061ffab46050ff069addc85d501954f8c21faef04c0c3e4b4f4f
│                        │     │                   74eadb76844 
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
│                              │                  ╰ UID : 740f03579aa20d2d 
│                              ├ InstalledVersion: v0.54.0 
│                              ├ Status          : affected 
│                              ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                              │                  │         336b2c58d05cd55db5e8 
│                              │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                              │                            3288b3dbfc02159c2a7d 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:8a7ac63b96779f276ac9a65541c6215679137044971f944225ba6
│                              │                   54ea61d6716 
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
│                              ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                              │                  │         336b2c58d05cd55db5e8 
│                              │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                              │                            3288b3dbfc02159c2a7d 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:7d0f3da2338cc5d2f3ae8cac88976e1cd8c62b39c6273fd880a7b
│                              │                   710925e08d3 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:67038aadec1a75b437845871d894c5e799d29c13096f5a7ae4979
│                        │     │                   ca5b9a61d44 
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
│                              ├ FixedVersion    : 2.6.2 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                              │                  │         336b2c58d05cd55db5e8 
│                              │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                              │                            3288b3dbfc02159c2a7d 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-50163 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:8265da5d72c9dbc52cc5f3be36b2dbac469e74e76198666e0d9b0
│                              │                   c8d9156722b 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25681 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:3e82191774812ab988d4c8a48d7f8235431542dac9482c3bda874
│                        │     │                   d37d24f4d4b 
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
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:34357 
│                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:37123 
│                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-25681 
│                        │     │                  ├ [3] : https://bugzilla.redhat.com/2466505 
│                        │     │                  ├ [4] : https://bugzilla.redhat.com/2466507 
│                        │     │                  ├ [5] : https://bugzilla.redhat.com/2467822 
│                        │     │                  ├ [6] : https://bugzilla.redhat.com/2480756 
│                        │     │                  ├ [7] : https://bugzilla.redhat.com/2480761 
│                        │     │                  ├ [8] : https://bugzilla.redhat.com/2484207 
│                        │     │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2480680 
│                        │     │                  ├ [10]: https://bugzilla.redhat.com/show_bug.cgi?id=2480681 
│                        │     │                  ├ [11]: https://bugzilla.redhat.com/show_bug.cgi?id=2480685 
│                        │     │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2480688 
│                        │     │                  ├ [13]: https://bugzilla.redhat.com/show_bug.cgi?id=2480757 
│                        │     │                  ├ [14]: https://bugzilla.redhat.com/show_bug.cgi?id=2480761 
│                        │     │                  ├ [15]: https://bugzilla.redhat.com/show_bug.cgi?id=2493620 
│                        │     │                  ├ [16]: https://creativecommons.org/licenses/by/4.0/ 
│                        │     │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-25681 
│                        │     │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-27136 
│                        │     │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39829 
│                        │     │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39832 
│                        │     │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39835 
│                        │     │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-42508 
│                        │     │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-57231 
│                        │     │                  ├ [24]: https://errata.almalinux.org/10/ALSA-2026-34357.html 
│                        │     │                  ├ [25]: https://errata.rockylinux.org/RLSA-2026:37123 
│                        │     │                  ├ [26]: https://go.dev/cl/781703 
│                        │     │                  ├ [27]: https://go.dev/issue/79574 
│                        │     │                  ├ [28]: https://groups.google.com/g/golang-announce/c/iI-mYSI
│                        │     │                  │       0lu8 
│                        │     │                  ├ [29]: https://linux.oracle.com/cve/CVE-2026-25681.html 
│                        │     │                  ├ [30]: https://linux.oracle.com/errata/ELSA-2026-37123.html 
│                        │     │                  ├ [31]: https://nvd.nist.gov/vuln/detail/CVE-2026-25681 
│                        │     │                  ├ [32]: https://pkg.go.dev/vuln/GO-2026-5029 
│                        │     │                  ╰ [33]: https://www.cve.org/CVERecord?id=CVE-2026-25681 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27136 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:feca3dfbdaa719faa22f3c2eb7131b63d83a96757d9ea01edc2cc
│                        │     │                   aca6304b597 
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
│                        │     │                  ├ [16]: https://creativecommons.org/licenses/by/4.0/ 
│                        │     │                  ├ [17]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-25681 
│                        │     │                  ├ [18]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-27136 
│                        │     │                  ├ [19]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39829 
│                        │     │                  ├ [20]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39832 
│                        │     │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39835 
│                        │     │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-42508 
│                        │     │                  ├ [23]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-57231 
│                        │     │                  ├ [24]: https://errata.almalinux.org/9/ALSA-2026-37123.html 
│                        │     │                  ├ [25]: https://errata.rockylinux.org/RLSA-2026:37123 
│                        │     │                  ├ [26]: https://go.dev/cl/781685 
│                        │     │                  ├ [27]: https://go.dev/issue/79575 
│                        │     │                  ├ [28]: https://groups.google.com/g/golang-announce/c/iI-mYSI
│                        │     │                  │       0lu8 
│                        │     │                  ├ [29]: https://linux.oracle.com/cve/CVE-2026-27136.html 
│                        │     │                  ├ [30]: https://linux.oracle.com/errata/ELSA-2026-37123.html 
│                        │     │                  ├ [31]: https://nvd.nist.gov/vuln/detail/CVE-2026-27136 
│                        │     │                  ├ [32]: https://pkg.go.dev/vuln/GO-2026-5030 
│                        │     │                  ╰ [33]: https://www.cve.org/CVERecord?id=CVE-2026-27136 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : nvd 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:99762e19da4037b5168103e40637b221ee1b10736843dc9654c81
│                        │     │                   1a3f2bf58ab 
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
│                        │     │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:50205 
│                        │     │                  ├ [11]: https://access.redhat.com/security/cve/CVE-2026-33814 
│                        │     │                  ├ [12]: https://bugzilla.redhat.com/show_bug.cgi?id=2467815 
│                        │     │                  ├ [13]: https://github.com/golang/go/issues/78476 
│                        │     │                  ├ [14]: https://go-review.googlesource.com/c/go/+/761581 
│                        │     │                  ├ [15]: https://go-review.googlesource.com/c/net/+/761640 
│                        │     │                  ├ [16]: https://go.dev/cl/761581 
│                        │     │                  ├ [17]: https://go.dev/cl/761640 
│                        │     │                  ├ [18]: https://go.dev/issue/78476 
│                        │     │                  ├ [19]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │     │                  │       o47M 
│                        │     │                  ├ [20]: https://linux.oracle.com/cve/CVE-2026-33814.html 
│                        │     │                  ├ [21]: https://linux.oracle.com/errata/ELSA-2026-22121.html 
│                        │     │                  ├ [22]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │     │                  ├ [23]: https://pkg.go.dev/vuln/GO-2026-4918 
│                        │     │                  ├ [24]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-33814.json 
│                        │     │                  ├ [25]: https://ubuntu.com/security/notices/USN-8430-1 
│                        │     │                  ├ [26]: https://ubuntu.com/security/notices/USN-8471-1 
│                        │     │                  ├ [27]: https://ubuntu.com/security/notices/USN-8472-1 
│                        │     │                  ├ [28]: https://ubuntu.com/security/notices/USN-8473-1 
│                        │     │                  ╰ [29]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
│                        │     ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
│                        │     ╰ LastModifiedDate: 2026-08-11T13:18:26.35Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-39821 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5026 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:b8384ad0068c568f4515282c6f1a8ddc63c81fa8b223e63e28945
│                        │     │                   b2b35bed0b6 
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
│                        │     │                  ├ [86] : https://access.redhat.com/errata/RHSA-2026:50300 
│                        │     │                  ├ [87] : https://access.redhat.com/errata/RHSA-2026:50843 
│                        │     │                  ├ [88] : https://access.redhat.com/errata/RHSA-2026:51033 
│                        │     │                  ├ [89] : https://access.redhat.com/errata/RHSA-2026:51112 
│                        │     │                  ├ [90] : https://access.redhat.com/errata/RHSA-2026:51187 
│                        │     │                  ├ [91] : https://access.redhat.com/errata/RHSA-2026:51194 
│                        │     │                  ├ [92] : https://access.redhat.com/errata/RHSA-2026:51341 
│                        │     │                  ├ [93] : https://access.redhat.com/errata/RHSA-2026:52826 
│                        │     │                  ├ [94] : https://access.redhat.com/errata/RHSA-2026:53374 
│                        │     │                  ├ [95] : https://access.redhat.com/errata/RHSA-2026:53412 
│                        │     │                  ├ [96] : https://access.redhat.com/errata/RHSA-2026:53413 
│                        │     │                  ├ [97] : https://access.redhat.com/errata/RHSA-2026:53415 
│                        │     │                  ├ [98] : https://access.redhat.com/errata/RHSA-2026:53530 
│                        │     │                  ├ [99] : https://access.redhat.com/errata/RHSA-2026:54191 
│                        │     │                  ├ [100]: https://access.redhat.com/errata/RHSA-2026:54283 
│                        │     │                  ├ [101]: https://access.redhat.com/errata/RHSA-2026:54285 
│                        │     │                  ├ [102]: https://access.redhat.com/errata/RHSA-2026:54287 
│                        │     │                  ├ [103]: https://access.redhat.com/security/cve/CVE-2026-39821 
│                        │     │                  ├ [104]: https://bugzilla.redhat.com/2480756 
│                        │     │                  ├ [105]: https://bugzilla.redhat.com/2484207 
│                        │     │                  ├ [106]: https://bugzilla.redhat.com/2498152 
│                        │     │                  ├ [107]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
│                        │     │                  ├ [108]: https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
│                        │     │                  ├ [109]: https://creativecommons.org/licenses/by/4.0/ 
│                        │     │                  ├ [110]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │     │                  │        026-39821 
│                        │     │                  ├ [111]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │     │                  │        026-39822 
│                        │     │                  ├ [112]: https://errata.almalinux.org/8/ALSA-2026-38995.html 
│                        │     │                  ├ [113]: https://errata.rockylinux.org/RLSA-2026:37435 
│                        │     │                  ├ [114]: https://github.com/golang/go/issues/78760 
│                        │     │                  ├ [115]: https://go.dev/cl/767220 
│                        │     │                  ├ [116]: https://go.dev/issue/78760 
│                        │     │                  ├ [117]: https://groups.google.com/g/golang-announce/c/iI-mYS
│                        │     │                  │        I0lu8 
│                        │     │                  ├ [118]: https://linux.oracle.com/cve/CVE-2026-39821.html 
│                        │     │                  ├ [119]: https://linux.oracle.com/errata/ELSA-2026-46395.html 
│                        │     │                  ├ [120]: https://nvd.nist.gov/vuln/detail/CVE-2026-39821 
│                        │     │                  ├ [121]: https://pkg.go.dev/vuln/GO-2026-5026 
│                        │     │                  ├ [122]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │     │                  │        2026/cve-2026-39821.json 
│                        │     │                  ├ [123]: https://ubuntu.com/security/notices/USN-8416-1 
│                        │     │                  ╰ [124]: https://www.cve.org/CVERecord?id=CVE-2026-39821 
│                        │     ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
│                        │     ╰ LastModifiedDate: 2026-08-12T12:18:59.243Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-46600 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5942 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.56.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:9395728fbb795d73f66938f9bf55f9466ea5356e7163d85d1bff5
│                        │     │                   439f5700bb7 
│                        │     ├ Title           : golang.org/x/net/dns/dnsmessage:
│                        │     │                   golang.org/x/net/dns/dnsmessage: Denial of Service via
│                        │     │                   invalid DNS record parsing 
│                        │     ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │     │                   of a parameter value overflows the message buffer. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-125 
│                        │     ├ VendorSeverity   ─ redhat: 3 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-46600 
│                        │     │                  ├ [1]: https://go.dev/cl/786345 
│                        │     │                  ├ [2]: https://go.dev/issue/79795 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-46600 
│                        │     │                  ├ [4]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        │     │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-46600 
│                        │     ├ PublishedDate   : 2026-07-21T20:17:01.213Z 
│                        │     ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-25680 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5028 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25680 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:a73c2ddc16e1a0e77f48fd761c9cc9547c9e30aba1303e819e82a
│                        │     │                   b693ea59b22 
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
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-42502 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5027 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42502 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:8f4215856a8c5694afe4181a311639c7027564b22a0aaf18e6bce
│                        │     │                   cc026f95f55 
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
│                        ├ [7] ╭ VulnerabilityID : CVE-2026-42506 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5025 
│                        │     ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │     ├ PkgName         : golang.org/x/net 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │     │                  ╰ UID : 73c8e80af86e88b3 
│                        │     ├ InstalledVersion: v0.49.0 
│                        │     ├ FixedVersion    : 0.55.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42506 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:924642b5301c8704d24f205041cc57e1030e3edf792888c701094
│                        │     │                   abb61d8fc33 
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
│                        ├ [8] ╭ VulnerabilityID : CVE-2026-39824 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5024 
│                        │     ├ PkgID           : golang.org/x/sys@v0.40.0 
│                        │     ├ PkgName         : golang.org/x/sys 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/sys@v0.40.0 
│                        │     │                  ╰ UID : a570222aaba50c0f 
│                        │     ├ InstalledVersion: v0.40.0 
│                        │     ├ FixedVersion    : 0.44.0 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39824 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:695993d6dc41ed1e23377dbc09aef7659ef341a2d37552f0828ab
│                        │     │                   1cb1b835945 
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
│                              ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                              │                  │         336b2c58d05cd55db5e8 
│                              │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                              │                            3288b3dbfc02159c2a7d 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:0343cbfbf5e02bcc4cf9f5ce724497bceb2464f8b41d8215c6244
│                              │                   e792a62d77f 
│                              ├ Title           : golang.org/x/text: golang.org/x/text: Denial of Service via
│                              │                   invalid UTF-8 input 
│                              ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                              │                   containing invalid UTF-8 bytes. 
│                              ├ Severity        : HIGH 
│                              ├ CweIDs           ─ [0]: CWE-835 
│                              ├ VendorSeverity   ╭ azure : 3 
│                              │                  ╰ redhat: 3 
│                              ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                              │                           │           /A:H 
│                              │                           ╰ V3Score : 7.5 
│                              ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56852 
│                              │                  ├ [1]: https://go.dev/cl/794100 
│                              │                  ├ [2]: https://go.dev/issue/80142 
│                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-56852 
│                              │                  ├ [4]: https://pkg.go.dev/vuln/GO-2026-5970 
│                              │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-56852 
│                              ├ PublishedDate   : 2026-07-21T20:17:02.867Z 
│                              ╰ LastModifiedDate: 2026-07-23T18:27:48.877Z 
├ [8]  ╭ Target  : usr/bin/pebble 
│      ├ Class   : lang-pkgs 
│      ├ Type    : gobinary 
│      ╰ Packages 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:1a46b7111b73afffedfced015d34ed5d60c60a47ca3ebe8337427
│                        │     │                   6ad5e169cc0 
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
│                              ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                              │                  │         336b2c58d05cd55db5e8 
│                              │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                              │                            3288b3dbfc02159c2a7d 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:f16127e41d6464cf5334f997fd49ac249ab997e0fe5a4a331f3e1
│                              │                   19440557403 
│                              ├ Title           : golang.org/x/net/dns/dnsmessage:
│                              │                   golang.org/x/net/dns/dnsmessage: Denial of Service via
│                              │                   invalid DNS record parsing 
│                              ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                              │                   of a parameter value overflows the message buffer. 
│                              ├ Severity        : HIGH 
│                              ├ CweIDs           ─ [0]: CWE-125 
│                              ├ VendorSeverity   ─ redhat: 3 
│                              ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                              │                           │           /A:H 
│                              │                           ╰ V3Score : 7.5 
│                              ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-46600 
│                              │                  ├ [1]: https://go.dev/cl/786345 
│                              │                  ├ [2]: https://go.dev/issue/79795 
│                              │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-46600 
│                              │                  ├ [4]: https://pkg.go.dev/vuln/GO-2026-5942 
│                              │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-46600 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:71cc2998d379297e5a6cb58564ce9fb3f4e81f76ec670f2830d60
│                        │     │                   67f56bbf946 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:dbe416e84f5a688bff21c01acec90a5c529e49b6b0f37b6513b34
│                        │     │                   10335f5d54a 
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
│                        │     │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:51057 
│                        │     │                  ├ [5] : https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │     │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │     │                  ├ [7] : https://github.com/moby/moby 
│                        │     │                  ├ [8] : https://github.com/moby/moby/security/advisories/GHSA
│                        │     │                  │       -x86f-5xw2-fm2r 
│                        │     │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │     │                  ├ [10]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-41567.json 
│                        │     │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │     ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │     ╰ LastModifiedDate: 2026-08-10T13:19:21.29Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:7195a0ca8664ffcd8337304f32e361c938d852163d026eb677648
│                        │     │                   5258560d9f6 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:37a98f0ef264d7de4ea092da1c9af25138ef848bc5d1a5c8e15b6
│                        │     │                   dee694c5f78 
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
│                        │     ╰ LastModifiedDate: 2026-08-10T13:19:04.067Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-41568 
│                        │     ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : ff7f1d4ae645a198 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:5ccc2a7059c9b4a80f97ab86c0393535f0ae5d5e6a8578e4e4c59
│                        │     │                   70c69aea5e2 
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
│                              ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                              │                  │         336b2c58d05cd55db5e8 
│                              │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                              │                            3288b3dbfc02159c2a7d 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:73b09e07725c92f9de90f98118c258d48c5df5a5f562a0cabeceb
│                              │                   b6792912a38 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:3479114b76b1c5d45043a3addd24af0a12600b4f99ec86c9c587c
│                        │     │                   f0f09b26e08 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:a5e258ad04d86f37bc19c175a5c2ee6e88b545713c2dc60dbf99c
│                        │     │                   692674ad44a 
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
│                        │     │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:51057 
│                        │     │                  ├ [5] : https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │     │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │     │                  ├ [7] : https://github.com/moby/moby 
│                        │     │                  ├ [8] : https://github.com/moby/moby/security/advisories/GHSA
│                        │     │                  │       -x86f-5xw2-fm2r 
│                        │     │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │     │                  ├ [10]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-41567.json 
│                        │     │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │     ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │     ╰ LastModifiedDate: 2026-08-10T13:19:21.29Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:7694d092c72d75efc9dcacb210025ad10e9c81afae95d7f34534d
│                        │     │                   b6b4aa2597d 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:dc0ccb934f83223a432efb1c316bb0ff5169eb182fa511bd34c49
│                        │     │                   62c6d97ad61 
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
│                        │     ╰ LastModifiedDate: 2026-08-10T13:19:04.067Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-41568 
│                        │     ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:3dac8570e16d2ff095888cd0d826901f789ca091fe2a4fc503c37
│                        │     │                   ee421075fbd 
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
│                        │     ├ PkgID           : golang.org/x/crypto@v0.54.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.54.0 
│                        │     │                  ╰ UID : 6b5ba0ba08883f8 
│                        │     ├ InstalledVersion: v0.54.0 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:d40085e9358af8acb4f46b0f11608231b9dafe4e049b00fef708e
│                        │     │                   36826fec8c1 
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
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-39822 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │     ├ PkgID           : stdlib@v1.26.4 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                        │     │                  ╰ UID : 7ea3df536be71e1b 
│                        │     ├ InstalledVersion: v1.26.4 
│                        │     ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:aec10b4bee8e2fc175d2436e806bce2e144a9cd19af05de3fa5ae
│                        │     │                   798148cc9b2 
│                        │     ├ Title           : golang: Go os.Root: Symlink following vulnerability allows
│                        │     │                   directory traversal 
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
│                        │     │                  ├ azure      : 3 
│                        │     │                  ├ bitnami    : 3 
│                        │     │                  ├ oracle-oval: 3 
│                        │     │                  ├ photon     : 3 
│                        │     │                  ├ redhat     : 3 
│                        │     │                  ╰ rocky      : 3 
│                        │     ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │     │                  │         │           H/A:H 
│                        │     │                  │         ╰ V3Score : 7.8 
│                        │     │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │     │                            │           H/A:H 
│                        │     │                            ╰ V3Score : 7.8 
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:38878 
│                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:38995 
│                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-39822 
│                        │     │                  ├ [3] : https://bugzilla.redhat.com/2480756 
│                        │     │                  ├ [4] : https://bugzilla.redhat.com/2484207 
│                        │     │                  ├ [5] : https://bugzilla.redhat.com/2498152 
│                        │     │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
│                        │     │                  ├ [7] : https://creativecommons.org/licenses/by/4.0/ 
│                        │     │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-20
│                        │     │                  │       26-39822 
│                        │     │                  ├ [9] : https://errata.almalinux.org/8/ALSA-2026-38995.html 
│                        │     │                  ├ [10]: https://errata.rockylinux.org/RLSA-2026:38878 
│                        │     │                  ├ [11]: https://go.dev/cl/797880 
│                        │     │                  ├ [12]: https://go.dev/issue/79005 
│                        │     │                  ├ [13]: https://groups.google.com/g/golang-announce/c/OrmQE_Y
│                        │     │                  │       p5Sc 
│                        │     │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-39822.html 
│                        │     │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-38995.html 
│                        │     │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-39822 
│                        │     │                  ├ [17]: https://pkg.go.dev/vuln/GO-2026-4970 
│                        │     │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2026-39822 
│                        │     ├ PublishedDate   : 2026-07-08T17:17:21.31Z 
│                        │     ╰ LastModifiedDate: 2026-07-13T14:54:26.317Z 
│                        ╰ [7] ╭ VulnerabilityID : CVE-2026-42505 
│                              ├ VendorIDs        ─ [0]: GO-2026-5856 
│                              ├ PkgID           : stdlib@v1.26.4 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                              │                  ╰ UID : 7ea3df536be71e1b 
│                              ├ InstalledVersion: v1.26.4 
│                              ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                              │                  │         336b2c58d05cd55db5e8 
│                              │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                              │                            3288b3dbfc02159c2a7d 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:3cda6c030b854ffbdd2cfa39618106003fc49b44e8951944757b7
│                              │                   dd4b2b64eaa 
│                              ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure in
│                              │                    Encrypted Client Hello 
│                              ├ Description     : Handshakes which used Encrypted Client Hello could be
│                              │                   de-anonymized by a passive network observer due to a
│                              │                   disclosure of pre-shared key identities in the unencrypted
│                              │                   client hello. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-201 
│                              ├ VendorSeverity   ╭ alma   : 3 
│                              │                  ├ amazon : 2 
│                              │                  ├ azure  : 2 
│                              │                  ├ bitnami: 2 
│                              │                  ├ photon : 2 
│                              │                  ╰ redhat : 2 
│                              ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                              │                  │         │           N/A:N 
│                              │                  │         ╰ V3Score : 5.3 
│                              │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:
│                              │                            │           N/A:N 
│                              │                            ╰ V3Score : 5.3 
│                              ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:37436 
│                              │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-42505 
│                              │                  ├ [2]: https://bugzilla.redhat.com/2480756 
│                              │                  ├ [3]: https://errata.almalinux.org/10/ALSA-2026-37436.html 
│                              │                  ├ [4]: https://go.dev/cl/775960 
│                              │                  ├ [5]: https://go.dev/issue/79282 
│                              │                  ├ [6]: https://groups.google.com/g/golang-announce/c/OrmQE_Yp
│                              │                  │      5Sc 
│                              │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-42505 
│                              │                  ├ [8]: https://pkg.go.dev/vuln/GO-2026-5856 
│                              │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-42505 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:709c33e87da7ffac749d2f77527c73196b153ef7ae7bf03d501d9
│                        │     │                   89f87af418d 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:55b444b46a1ae9dac574739c4aa3e6dfd1ef9debaad8aa6a305fe
│                        │     │                   a8bf9df7e12 
│                        │     ├ Title           : golang.org/x/net/dns/dnsmessage:
│                        │     │                   golang.org/x/net/dns/dnsmessage: Denial of Service via
│                        │     │                   invalid DNS record parsing 
│                        │     ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │     │                   of a parameter value overflows the message buffer. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-125 
│                        │     ├ VendorSeverity   ─ redhat: 3 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-46600 
│                        │     │                  ├ [1]: https://go.dev/cl/786345 
│                        │     │                  ├ [2]: https://go.dev/issue/79795 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-46600 
│                        │     │                  ├ [4]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        │     │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-46600 
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
│                        │     ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                        │     │                  │         336b2c58d05cd55db5e8 
│                        │     │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                        │     │                            3288b3dbfc02159c2a7d 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:0235de2cb89ff6ca2f36e3a63ffd19235504d15e98a9cbb38ef7e
│                        │     │                   7a6a8b7fb36 
│                        │     ├ Title           : golang.org/x/text: golang.org/x/text: Denial of Service via
│                        │     │                   invalid UTF-8 input 
│                        │     ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │     │                   containing invalid UTF-8 bytes. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-835 
│                        │     ├ VendorSeverity   ╭ azure : 3 
│                        │     │                  ╰ redhat: 3 
│                        │     ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:N
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 7.5 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56852 
│                        │     │                  ├ [1]: https://go.dev/cl/794100 
│                        │     │                  ├ [2]: https://go.dev/issue/80142 
│                        │     │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-56852 
│                        │     │                  ├ [4]: https://pkg.go.dev/vuln/GO-2026-5970 
│                        │     │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-56852 
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
│                              ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7
│                              │                  │         336b2c58d05cd55db5e8 
│                              │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c
│                              │                            3288b3dbfc02159c2a7d 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:ab23f284579bed4acee5d4238ccd3c79795d89dd5eb02177a0528
│                              │                   d3e736e816d 
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
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-15558 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:34f39b81d61c7773fb17b80d33c4a69b888ea3d501d60d3c6483
│                        │      │                   11971b3f0a0a 
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
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:dedfde5f6da491136a0713173c6c77430e730cf8d9f0a82d7b84
│                        │      │                   16f2149255d7 
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
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:fffc02f5931682566e86eee2b9d9af9168225285499bc281eb0e
│                        │      │                   f69de4fac9e3 
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
│                        │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:51057 
│                        │      │                  ├ [5] : https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │      │                  ├ [7] : https://github.com/moby/moby 
│                        │      │                  ├ [8] : https://github.com/moby/moby/security/advisories/GHS
│                        │      │                  │       A-x86f-5xw2-fm2r 
│                        │      │                  ├ [9] : https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │      │                  ├ [10]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2026/cve-2026-41567.json 
│                        │      │                  ╰ [11]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │      ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │      ╰ LastModifiedDate: 2026-08-10T13:19:21.29Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-42306 
│                        │      ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:98441716c4abb4c46b5afb2f19d07fb06b8fe2f888188a927c85
│                        │      │                   8f84b4d5934c 
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
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:78885bd792e66584d24a72f887029fb090908cc10f274719e7c5
│                        │      │                   bf1f165a5adf 
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
│                        │      ╰ LastModifiedDate: 2026-08-10T13:19:04.067Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-41568 
│                        │      ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:59b8d33e28af4e23d982683afba525f7e84feb8d4c9224509c7f
│                        │      │                   0f6dfa6ffd7b 
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
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:3a152baef34974a972a4d588d77022c5a60a74657a8bb4f7a678
│                        │      │                   0785fdae30cb 
│                        │      ├ Title           : golang.org/x/net/dns/dnsmessage:
│                        │      │                   golang.org/x/net/dns/dnsmessage: Denial of Service via
│                        │      │                   invalid DNS record parsing 
│                        │      ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a parameter value overflows the message buffer. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-125 
│                        │      ├ VendorSeverity   ─ redhat: 3 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-46600 
│                        │      │                  ├ [1]: https://go.dev/cl/786345 
│                        │      │                  ├ [2]: https://go.dev/issue/79795 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-46600 
│                        │      │                  ├ [4]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-46600 
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
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:81915dc1e38c721666dcad4dcd5806d1b457e9920474a08ca72c
│                        │      │                   c5f2da50752d 
│                        │      ├ Title           : golang.org/x/text: golang.org/x/text: Denial of Service via
│                        │      │                    invalid UTF-8 input 
│                        │      ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │      │                   containing invalid UTF-8 bytes. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-835 
│                        │      ├ VendorSeverity   ╭ azure : 3 
│                        │      │                  ╰ redhat: 3 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 7.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-56852 
│                        │      │                  ├ [1]: https://go.dev/cl/794100 
│                        │      │                  ├ [2]: https://go.dev/issue/80142 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-56852 
│                        │      │                  ├ [4]: https://pkg.go.dev/vuln/GO-2026-5970 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-56852 
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
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-hrxh-6v49-42gf 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:993969fe4d65a6decc6a5629337f7002bfd21572644f2504f1ef
│                        │      │                   35f29584ccba 
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
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:9f8e9f57977b5db89b6c8f163b8f6b30250880157d673d54f814
│                        │      │                   5dd29d205b7d 
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
│                        │      │                  ├ [38]: https://access.redhat.com/errata/RHSA-2026:49703 
│                        │      │                  ├ [39]: https://access.redhat.com/errata/RHSA-2026:49705 
│                        │      │                  ├ [40]: https://access.redhat.com/errata/RHSA-2026:49729 
│                        │      │                  ├ [41]: https://access.redhat.com/errata/RHSA-2026:49744 
│                        │      │                  ├ [42]: https://access.redhat.com/errata/RHSA-2026:49765 
│                        │      │                  ├ [43]: https://access.redhat.com/errata/RHSA-2026:49770 
│                        │      │                  ├ [44]: https://access.redhat.com/errata/RHSA-2026:50205 
│                        │      │                  ├ [45]: https://access.redhat.com/errata/RHSA-2026:50319 
│                        │      │                  ├ [46]: https://access.redhat.com/errata/RHSA-2026:51057 
│                        │      │                  ├ [47]: https://access.redhat.com/errata/RHSA-2026:51187 
│                        │      │                  ├ [48]: https://access.redhat.com/errata/RHSA-2026:52946 
│                        │      │                  ├ [49]: https://access.redhat.com/errata/RHSA-2026:53374 
│                        │      │                  ├ [50]: https://access.redhat.com/errata/RHSA-2026:53412 
│                        │      │                  ├ [51]: https://access.redhat.com/errata/RHSA-2026:53413 
│                        │      │                  ├ [52]: https://access.redhat.com/errata/RHSA-2026:53415 
│                        │      │                  ├ [53]: https://access.redhat.com/errata/RHSA-2026:53416 
│                        │      │                  ├ [54]: https://access.redhat.com/errata/RHSA-2026:53530 
│                        │      │                  ├ [55]: https://access.redhat.com/errata/RHSA-2026:54168 
│                        │      │                  ├ [56]: https://access.redhat.com/security/cve/CVE-2026-27145 
│                        │      │                  ├ [57]: https://bugzilla.redhat.com/2480756 
│                        │      │                  ├ [58]: https://bugzilla.redhat.com/2484207 
│                        │      │                  ├ [59]: https://bugzilla.redhat.com/2498152 
│                        │      │                  ├ [60]: https://bugzilla.redhat.com/show_bug.cgi?id=2445356 
│                        │      │                  ├ [61]: https://bugzilla.redhat.com/show_bug.cgi?id=2484207 
│                        │      │                  ├ [62]: https://creativecommons.org/licenses/by/4.0/ 
│                        │      │                  ├ [63]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-25679 
│                        │      │                  ├ [64]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-27145 
│                        │      │                  ├ [65]: https://errata.almalinux.org/8/ALSA-2026-38995.html 
│                        │      │                  ├ [66]: https://errata.rockylinux.org/RLSA-2026:36317 
│                        │      │                  ├ [67]: https://go.dev/cl/783621 
│                        │      │                  ├ [68]: https://go.dev/issue/79694 
│                        │      │                  ├ [69]: https://groups.google.com/g/golang-announce/c/tKs3rm
│                        │      │                  │       cBcKw 
│                        │      │                  ├ [70]: https://linux.oracle.com/cve/CVE-2026-27145.html 
│                        │      │                  ├ [71]: https://linux.oracle.com/errata/ELSA-2026-46395.html 
│                        │      │                  ├ [72]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
│                        │      │                  ├ [73]: https://pkg.go.dev/vuln/GO-2026-5037 
│                        │      │                  ├ [74]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2026/cve-2026-27145.json 
│                        │      │                  ╰ [75]: https://www.cve.org/CVERecord?id=CVE-2026-27145 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │      ╰ LastModifiedDate: 2026-08-12T12:18:14.25Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-39822 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:cdf0d0cc984ac3c6295d08e8511dfdac298de730b2f28ce75d80
│                        │      │                   1e4ca86d2b74 
│                        │      ├ Title           : golang: Go os.Root: Symlink following vulnerability allows
│                        │      │                   directory traversal 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:38878 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:38995 
│                        │      │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-39822 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2480756 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2484207 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/2498152 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
│                        │      │                  ├ [7] : https://creativecommons.org/licenses/by/4.0/ 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39822 
│                        │      │                  ├ [9] : https://errata.almalinux.org/8/ALSA-2026-38995.html 
│                        │      │                  ├ [10]: https://errata.rockylinux.org/RLSA-2026:38878 
│                        │      │                  ├ [11]: https://go.dev/cl/797880 
│                        │      │                  ├ [12]: https://go.dev/issue/79005 
│                        │      │                  ├ [13]: https://groups.google.com/g/golang-announce/c/OrmQE_
│                        │      │                  │       Yp5Sc 
│                        │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-39822.html 
│                        │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-38995.html 
│                        │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-39822 
│                        │      │                  ├ [17]: https://pkg.go.dev/vuln/GO-2026-4970 
│                        │      │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2026-39822 
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
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:e718bb319b0a229850fab1ca15ea8ba0f5e3622546d7806a0572
│                        │      │                   ed996c8b9e44 
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
│                        │      ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                        │      │                  │         7336b2c58d05cd55db5e8 
│                        │      │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                        │      │                            c3288b3dbfc02159c2a7d 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:48580dffc44f7e9b01e0c9a82679027329cac6ab5b556d785ca2
│                        │      │                   d14cc3a94f78 
│                        │      ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure
│                        │      │                   in Encrypted Client Hello 
│                        │      ├ Description     : Handshakes which used Encrypted Client Hello could be
│                        │      │                   de-anonymized by a passive network observer due to a
│                        │      │                   disclosure of pre-shared key identities in the unencrypted
│                        │      │                   client hello. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-201 
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
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:37436 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-42505 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/2480756 
│                        │      │                  ├ [3]: https://errata.almalinux.org/10/ALSA-2026-37436.html 
│                        │      │                  ├ [4]: https://go.dev/cl/775960 
│                        │      │                  ├ [5]: https://go.dev/issue/79282 
│                        │      │                  ├ [6]: https://groups.google.com/g/golang-announce/c/OrmQE_Y
│                        │      │                  │      p5Sc 
│                        │      │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-42505 
│                        │      │                  ├ [8]: https://pkg.go.dev/vuln/GO-2026-5856 
│                        │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-42505 
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
│                               ├ Layer            ╭ Digest: sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d
│                               │                  │         7336b2c58d05cd55db5e8 
│                               │                  ╰ DiffID: sha256:732d8dafab623f07fc0fe330969ec80e66c07835641
│                               │                            c3288b3dbfc02159c2a7d 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:26aba2b51dadfb8a65550f6880a204c84f0aa45da694b0fa1709
│                               │                   77754f5d646e 
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
│                               ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:29980 
│                               │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:29981 
│                               │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-42507 
│                               │                  ├ [3] : https://bugzilla.redhat.com/2484205 
│                               │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2484205 
│                               │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2484207 
│                               │                  ├ [6] : https://creativecommons.org/licenses/by/4.0/ 
│                               │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                               │                  │       026-27145 
│                               │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                               │                  │       026-42507 
│                               │                  ├ [9] : https://errata.almalinux.org/10/ALSA-2026-29980.html 
│                               │                  ├ [10]: https://errata.rockylinux.org/RLSA-2026:29981 
│                               │                  ├ [11]: https://go.dev/cl/777060 
│                               │                  ├ [12]: https://go.dev/issue/79346 
│                               │                  ├ [13]: https://groups.google.com/g/golang-announce/c/tKs3rm
│                               │                  │       cBcKw 
│                               │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-42507.html 
│                               │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-29981.html 
│                               │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-42507 
│                               │                  ├ [17]: https://pkg.go.dev/vuln/GO-2026-5039 
│                               │                  ╰ [18]: https://www.cve.org/CVERecord?id=CVE-2026-42507 
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
│                      ├ Layer     ╭ Digest   : sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7336b2c58d05c
│                      │           │            d55db5e8 
│                      │           ├ DiffID   : sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c3288b3dbfc02
│                      │           │            159c2a7d 
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
│                      ├ Layer     ╭ Digest   : sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7336b2c58d05c
│                      │           │            d55db5e8 
│                      │           ├ DiffID   : sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c3288b3dbfc02
│                      │           │            159c2a7d 
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
                       ├ Layer     ╭ Digest   : sha256:8ffcd8c84df5bac4a1ed0e33f4d7acae5d5aa54713d7336b2c58d05c
                       │           │            d55db5e8 
                       │           ├ DiffID   : sha256:732d8dafab623f07fc0fe330969ec80e66c07835641c3288b3dbfc02
                       │           │            159c2a7d 
                       │           ╰ CreatedBy: COPY / / # buildkit 
                       ╰ Offset   : 36 
```
