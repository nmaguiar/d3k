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
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ece17f66ac71f4be8129c9266650e9282dd19d94085d0202e207
│                        │      │                   538cc8c9c1ba 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : bsdutils@1:2.41.3-3ubuntu2 
│                        │      ├ PkgName         : bsdutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/bsdutils@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 35a8976635e225e2 
│                        │      ├ InstalledVersion: 1:2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:03929df02cf84f7073cc679aed0d4884e31a84e30230baff83b9
│                        │      │                   1fe13e4f565e 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-33150 
│                        │      ├ PkgID           : fuse3@3.18.2-1 
│                        │      ├ PkgName         : fuse3 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/fuse3@3.18.2-1?arch=amd64&distro=ubun
│                        │      │                  │       tu-26.04 
│                        │      │                  ╰ UID : f3f6366bdceb0bc7 
│                        │      ├ InstalledVersion: 3.18.2-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33150 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:63d64d961838f8e8b433355e95f546f74a9dde440dac414650f6
│                        │      │                   42d92d4d1ef0 
│                        │      ├ Title           : libfuse: libfuse: Arbitrary code execution via
│                        │      │                   use-after-free in io_uring subsystem 
│                        │      ├ Description     : libfuse is the reference implementation of the Linux FUSE.
│                        │      │                   From version 3.18.0 to before version 3.18.2, a
│                        │      │                   use-after-free vulnerability in the io_uring subsystem of
│                        │      │                   libfuse allows a local attacker to crash FUSE filesystem
│                        │      │                   processes and potentially execute arbitrary code. When
│                        │      │                   io_uring thread creation fails due to resource exhaustion
│                        │      │                   (e.g., cgroup pids.max), fuse_uring_start() frees the ring
│                        │      │                   pool structure but stores the dangling pointer in the
│                        │      │                   session state, leading to a use-after-free when the session
│                        │      │                    shuts down. The trigger is reliable in containerized
│                        │      │                   environments where cgroup pids.max limits naturally
│                        │      │                   constrain thread creation. This issue has been patched in
│                        │      │                   version 3.18.2. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-416 
│                        │      │                  ╰ [1]: CWE-825 
│                        │      ├ VendorSeverity   ╭ redhat: 3 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 7.8 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33150 
│                        │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2449771 
│                        │      │                  ├ [2]: https://github.com/libfuse/libfuse/commit/49fcd891a58
│                        │      │                  │      f622c098e2ca67d66086f7b213836 
│                        │      │                  ├ [3]: https://github.com/libfuse/libfuse/releases/tag/fuse-
│                        │      │                  │      3.18.2 
│                        │      │                  ├ [4]: https://github.com/libfuse/libfuse/security/advisorie
│                        │      │                  │      s/GHSA-qxv7-xrc2-qmfx 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-33150 
│                        │      │                  ├ [6]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │      │                  │      026/cve-2026-33150.json 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-33150 
│                        │      ├ PublishedDate   : 2026-03-20T21:17:15.41Z 
│                        │      ╰ LastModifiedDate: 2026-07-15T02:20:03.623Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-33179 
│                        │      ├ PkgID           : fuse3@3.18.2-1 
│                        │      ├ PkgName         : fuse3 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/fuse3@3.18.2-1?arch=amd64&distro=ubun
│                        │      │                  │       tu-26.04 
│                        │      │                  ╰ UID : f3f6366bdceb0bc7 
│                        │      ├ InstalledVersion: 3.18.2-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33179 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3308a80a3dc6fdb7d40dfbed14dbba35eea5f155b1f2fef65650
│                        │      │                   159f8177a576 
│                        │      ├ Title           : libfuse: libfuse: Denial of Service via NULL pointer
│                        │      │                   dereference and memory leak 
│                        │      ├ Description     : libfuse is the reference implementation of the Linux FUSE.
│                        │      │                   From version 3.18.0 to before version 3.18.2, a NULL
│                        │      │                   pointer dereference and memory leak in
│                        │      │                   fuse_uring_init_queue allows a local user to crash the FUSE
│                        │      │                    daemon or cause resource exhaustion. When numa_alloc_local
│                        │      │                    fails during io_uring queue entry setup, the code proceeds
│                        │      │                    with NULL pointers. When fuse_uring_register_queue fails,
│                        │      │                   NUMA allocations are leaked and the function incorrectly
│                        │      │                   returns success. Only the io_uring transport is affected;
│                        │      │                   the traditional /dev/fuse path is not affected. PoC
│                        │      │                   confirmed with AddressSanitizer/LeakSanitizer. This issue
│                        │      │                   has been patched in version 3.18.2. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-476 
│                        │      ├ VendorSeverity   ╭ photon: 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 5.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33179 
│                        │      │                  ├ [1]: https://github.com/libfuse/libfuse/commit/7beb86c09b6
│                        │      │                  │      ec5aab14dc25256ed8a5ad18554d7 
│                        │      │                  ├ [2]: https://github.com/libfuse/libfuse/releases/tag/fuse-
│                        │      │                  │      3.18.2 
│                        │      │                  ├ [3]: https://github.com/libfuse/libfuse/security/advisorie
│                        │      │                  │      s/GHSA-x669-v3mq-r358 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-33179 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-33179 
│                        │      ├ PublishedDate   : 2026-03-20T21:17:16.593Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:37:05.247Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2024-52005 
│                        │      ├ PkgID           : git@1:2.53.0-1ubuntu1 
│                        │      ├ PkgName         : git 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.53.0-1ubuntu1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : f8cd2c068f7b74cd 
│                        │      ├ InstalledVersion: 1:2.53.0-1ubuntu1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e904a5989a0bdbccc40da0eb7840695562d9215bfaa39dcdc701
│                        │      │                   d37c39549335 
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
│                        ├ [5]  ╭ VulnerabilityID : CVE-2024-52005 
│                        │      ├ PkgID           : git-man@1:2.53.0-1ubuntu1 
│                        │      ├ PkgName         : git-man 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.53.0-1ubuntu1?arch=all&dist
│                        │      │                  │       ro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : a19d1931460c0147 
│                        │      ├ InstalledVersion: 1:2.53.0-1ubuntu1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4139b9f6a37c1b5feca2d8003019e449bfc6cffa923531d036e1
│                        │      │                   d2d6b6f75b7a 
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
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libblkid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : f63a0a78e3cac3a3 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:41f88b3a716330f2eb1100247445459db7a85b7134ed24674c17
│                        │      │                   b160183ca421 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libblkid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : f63a0a78e3cac3a3 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:7efbfebc4f56782516181113e205fc880e36c15d8fd4e017865e
│                        │      │                   6fe51d8cd794 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-4046 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:631b3902faacc43a1e067b9d28a0458212c605b97791a156f3b3
│                        │      │                   0a03b4dca415 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -082556.html 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                        │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [14]: https://inbox.sourceware.org/libc-announce/76814edf-
│                        │      │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [15]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                        │      │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                        │      │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [18]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                        │      │                  │       gconv-extra/ 
│                        │      │                  ├ [19]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [20]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [21]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                        │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:18:57.707Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-4437 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0ffc890b1238a3c9a4dceb3db671995300783c3638e5a1f1f13e
│                        │      │                   75e9eb59728d 
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
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -082556.html 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                        │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-4437.html 
│                        │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-500006.html 
│                        │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [17]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [18]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [19]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:18:57.923Z 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-4438 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:bb6a9fd60896a02825ac5bdf776bed232cee97f813b371a7a26b
│                        │      │                   d3c5a93b00de 
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
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -082556.html 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                        │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-4438.html 
│                        │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-500006.html 
│                        │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [17]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [18]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [19]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:18:58.247Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-5435 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:88864eb607fba2e926fb44b9fae333b461fc20b44dba639e3d90
│                        │      │                   9fe3a588c071 
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
│                        │      │                  ├ [1]: https://cert-portal.siemens.com/productcert/html/ssa-
│                        │      │                  │      082556.html 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [3]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                        │      │                  ├ [5]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                        │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0011 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                        │      ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:19:01.36Z 
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-6238 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:25294a29191aacf1443d8451c280af6524ec95580ee4c7d14180
│                        │      │                   4ba1b4afdc28 
│                        │      ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                        │      │                   read via crafted DNS response 
│                        │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                        │      │                   fp_nquery in the GNU C Library version 2.0.1 to version
│                        │      │                   2.43 fail to validate the RDATA content against the RDATA
│                        │      │                   length in a DNS response when processing A6, CERT, LOC,
│                        │      │                   TKEY or TSIG records, which may allow an attacker to craft
│                        │      │                   a DNS response, causing a target application to crash or
│                        │      │                   read uninitialized memory.
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
│                        │      │                  ├ [1]: https://cert-portal.siemens.com/productcert/html/ssa-
│                        │      │                  │      082556.html 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [3]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                        │      │                  ├ [5]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                        │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0012 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                        │      ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:19:09.2Z 
│                        ├ [13] ╭ VulnerabilityID : CVE-2026-4046 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b2453fc8f55751412e8529f9f6ade0610f840af866583290ecda
│                        │      │                   166bf0cac99e 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -082556.html 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                        │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [14]: https://inbox.sourceware.org/libc-announce/76814edf-
│                        │      │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [15]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                        │      │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                        │      │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [18]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                        │      │                  │       gconv-extra/ 
│                        │      │                  ├ [19]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [20]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [21]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                        │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:18:57.707Z 
│                        ├ [14] ╭ VulnerabilityID : CVE-2026-4437 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2a411fe674a01e99e7c4e7d4804cdb9151efec8421862eec46a2
│                        │      │                   4fd972e6d2d2 
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
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -082556.html 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                        │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-4437.html 
│                        │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-500006.html 
│                        │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [17]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [18]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [19]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:18:57.923Z 
│                        ├ [15] ╭ VulnerabilityID : CVE-2026-4438 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:256f58281f6186eecee343e20347e50dada54e55e0ea2dbfc0dd
│                        │      │                   fd504fc8160b 
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
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -082556.html 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                        │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-4438.html 
│                        │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-500006.html 
│                        │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [17]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [18]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [19]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:18:58.247Z 
│                        ├ [16] ╭ VulnerabilityID : CVE-2026-5435 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:dffb7e20817d076c975fbd39915f86bf766178b0b4ff75d119e8
│                        │      │                   74263dce5999 
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
│                        │      │                  ├ [1]: https://cert-portal.siemens.com/productcert/html/ssa-
│                        │      │                  │      082556.html 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [3]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                        │      │                  ├ [5]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                        │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0011 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                        │      ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:19:01.36Z 
│                        ├ [17] ╭ VulnerabilityID : CVE-2026-6238 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2b04a674d231123fac84bf2cac4af5c7ed683e740dbd98bc03e4
│                        │      │                   fab944298c00 
│                        │      ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                        │      │                   read via crafted DNS response 
│                        │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                        │      │                   fp_nquery in the GNU C Library version 2.0.1 to version
│                        │      │                   2.43 fail to validate the RDATA content against the RDATA
│                        │      │                   length in a DNS response when processing A6, CERT, LOC,
│                        │      │                   TKEY or TSIG records, which may allow an attacker to craft
│                        │      │                   a DNS response, causing a target application to crash or
│                        │      │                   read uninitialized memory.
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
│                        │      │                  ├ [1]: https://cert-portal.siemens.com/productcert/html/ssa-
│                        │      │                  │      082556.html 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [3]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                        │      │                  ├ [5]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                        │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0012 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                        │      ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:19:09.2Z 
│                        ├ [18] ╭ VulnerabilityID : CVE-2026-4046 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ee41c99e995502cca580d7b5eae44ab0e7722365138490cb822e
│                        │      │                   737ceb0671ed 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4046 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -082556.html 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                        │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [14]: https://inbox.sourceware.org/libc-announce/76814edf-
│                        │      │                  │       cf7f-47ec-979d-2dce0a2c76bf@gotplt.org/T/#u 
│                        │      │                  ├ [15]: https://linux.oracle.com/cve/CVE-2026-4046.html 
│                        │      │                  ├ [16]: https://linux.oracle.com/errata/ELSA-2026-50291.html 
│                        │      │                  ├ [17]: https://nvd.nist.gov/vuln/detail/CVE-2026-4046 
│                        │      │                  ├ [18]: https://packages.fedoraproject.org/pkgs/glibc/glibc-
│                        │      │                  │       gconv-extra/ 
│                        │      │                  ├ [19]: https://sourceware.org/bugzilla/show_bug.cgi?id=33980 
│                        │      │                  ├ [20]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007 
│                        │      │                  ├ [21]: https://sourceware.org/git/?p=glibc.git;a=blob_plain
│                        │      │                  │       ;f=advisories/GLIBC-SA-2026-0007;hb=HEAD 
│                        │      │                  ╰ [22]: https://www.cve.org/CVERecord?id=CVE-2026-4046 
│                        │      ├ PublishedDate   : 2026-03-30T18:16:19.573Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:18:57.707Z 
│                        ├ [19] ╭ VulnerabilityID : CVE-2026-4437 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f309981fea4b8eb8053a0fa013ac8e363a7483c6254405763e3e
│                        │      │                   d1dbca7c46cc 
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
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 3 
│                        │      │                  ├ redhat     : 2 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4437 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -082556.html 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                        │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-4437.html 
│                        │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-500006.html 
│                        │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-4437 
│                        │      │                  ├ [17]: https://sourceware.org/bugzilla/show_bug.cgi?id=34014 
│                        │      │                  ├ [18]: https://www.cve.org/CVERecord?id=CVE-2026-4437 
│                        │      │                  ╰ [19]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.477Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:18:57.923Z 
│                        ├ [20] ╭ VulnerabilityID : CVE-2026-4438 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:cded35404b4395bd7183f20b652fecada7e8d02d858bb130c14e
│                        │      │                   a0893f458709 
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
│                        │      ├ VendorSeverity   ╭ alma       : 2 
│                        │      │                  ├ azure      : 2 
│                        │      │                  ├ oracle-oval: 2 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ├ redhat     : 1 
│                        │      │                  ├ rocky      : 2 
│                        │      │                  ╰ ubuntu     : 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 4 
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:20597 
│                        │      │                  ├ [1] : https://access.redhat.com/security/cve/CVE-2026-4438 
│                        │      │                  ├ [2] : https://bugzilla.redhat.com/2449777 
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/2449783 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/2453117 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [6] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [7] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [8] : https://cert-portal.siemens.com/productcert/html/ssa
│                        │      │                  │       -082556.html 
│                        │      │                  ├ [9] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [10]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [11]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [12]: https://errata.almalinux.org/9/ALSA-2026-20597.html 
│                        │      │                  ├ [13]: https://errata.rockylinux.org/RLSA-2026:20597 
│                        │      │                  ├ [14]: https://linux.oracle.com/cve/CVE-2026-4438.html 
│                        │      │                  ├ [15]: https://linux.oracle.com/errata/ELSA-2026-500006.html 
│                        │      │                  ├ [16]: https://nvd.nist.gov/vuln/detail/CVE-2026-4438 
│                        │      │                  ├ [17]: https://sourceware.org/bugzilla/show_bug.cgi?id=34015 
│                        │      │                  ├ [18]: https://www.cve.org/CVERecord?id=CVE-2026-4438 
│                        │      │                  ╰ [19]: https://www.openwall.com/lists/oss-security/2026/03/
│                        │      │                          23/2 
│                        │      ├ PublishedDate   : 2026-03-20T20:16:49.623Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:18:58.247Z 
│                        ├ [21] ╭ VulnerabilityID : CVE-2026-5435 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8ad4720fb88f7c700a4f9de2df7e23c7fde8ea2132df54a3f1d5
│                        │      │                   ca31b35e645b 
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
│                        │      │                  ├ [1]: https://cert-portal.siemens.com/productcert/html/ssa-
│                        │      │                  │      082556.html 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [3]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-5435 
│                        │      │                  ├ [5]: https://sourceware.org/bugzilla/show_bug.cgi?id=34033 
│                        │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0011 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-5435 
│                        │      ├ PublishedDate   : 2026-04-28T13:19:22.29Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:19:01.36Z 
│                        ├ [22] ╭ VulnerabilityID : CVE-2026-6238 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e6730e6503d395b05f584d5819466b4f60139b14636f6d4399fb
│                        │      │                   313ea197feaf 
│                        │      ├ Title           : glibc: glibc: Application crash or uninitialized memory
│                        │      │                   read via crafted DNS response 
│                        │      ├ Description     : The deprecated functions ns_printrrf, ns_printrr and
│                        │      │                   fp_nquery in the GNU C Library version 2.0.1 to version
│                        │      │                   2.43 fail to validate the RDATA content against the RDATA
│                        │      │                   length in a DNS response when processing A6, CERT, LOC,
│                        │      │                   TKEY or TSIG records, which may allow an attacker to craft
│                        │      │                   a DNS response, causing a target application to crash or
│                        │      │                   read uninitialized memory.
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
│                        │      │                  ├ [1]: https://cert-portal.siemens.com/productcert/html/ssa-
│                        │      │                  │      082556.html 
│                        │      │                  ├ [2]: https://inbox.sourceware.org/libc-alpha/cover.1777546
│                        │      │                  │      194.git.fweimer@redhat.com/ 
│                        │      │                  ├ [3]: https://inbox.sourceware.org/libc-announce/7a655d55-2
│                        │      │                  │      76f-41fe-b550-feb3ebb2ce91@redhat.com/T/#u 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-6238 
│                        │      │                  ├ [5]: https://sourceware.org/bugzilla/show_bug.cgi?id=34069 
│                        │      │                  ├ [6]: https://sourceware.org/git/?p=glibc.git;a=blob_plain;
│                        │      │                  │      f=advisories/GLIBC-SA-2026-0012 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-6238 
│                        │      ├ PublishedDate   : 2026-04-28T19:37:47.523Z 
│                        │      ╰ LastModifiedDate: 2026-07-14T13:19:09.2Z 
│                        ├ [23] ╭ VulnerabilityID : CVE-2025-1352 
│                        │      ├ PkgID           : libelf1t64@0.194-4 
│                        │      ├ PkgName         : libelf1t64 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro=
│                        │      │                  │       ubuntu-26.04 
│                        │      │                  ╰ UID : 855cfee3bc864065 
│                        │      ├ InstalledVersion: 0.194-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:221f2d898b00c7925e8f45b589b9db23558a8b610db0c94eca06
│                        │      │                   83d3f76c3944 
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
│                        ├ [24] ╭ VulnerabilityID : CVE-2025-1376 
│                        │      ├ PkgID           : libelf1t64@0.194-4 
│                        │      ├ PkgName         : libelf1t64 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro=
│                        │      │                  │       ubuntu-26.04 
│                        │      │                  ╰ UID : 855cfee3bc864065 
│                        │      ├ InstalledVersion: 0.194-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1376 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:7d03e97ffac31e9f97420c6aa13a156ab754c804dba57d00c0fb
│                        │      │                   dca8a19f3575 
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
│                        ├ [25] ╭ VulnerabilityID : CVE-2025-66382 
│                        │      ├ PkgID           : libexpat1@2.7.4-1 
│                        │      ├ PkgName         : libexpat1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : c17b9d4b5a8b1286 
│                        │      ├ InstalledVersion: 2.7.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:14ab491b959980f139ed35e6853366e521dea26ff29b7c878ddc
│                        │      │                   346f2869c0bc 
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
│                        ├ [26] ╭ VulnerabilityID : CVE-2026-33150 
│                        │      ├ PkgID           : libfuse3-4@3.18.2-1 
│                        │      ├ PkgName         : libfuse3-4 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libfuse3-4@3.18.2-1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : d36ae5a32a87c9ff 
│                        │      ├ InstalledVersion: 3.18.2-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33150 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0d5a35aeb949abad744f20b9aa0a5f92fd3514f66b61704eddf0
│                        │      │                   606979a531ac 
│                        │      ├ Title           : libfuse: libfuse: Arbitrary code execution via
│                        │      │                   use-after-free in io_uring subsystem 
│                        │      ├ Description     : libfuse is the reference implementation of the Linux FUSE.
│                        │      │                   From version 3.18.0 to before version 3.18.2, a
│                        │      │                   use-after-free vulnerability in the io_uring subsystem of
│                        │      │                   libfuse allows a local attacker to crash FUSE filesystem
│                        │      │                   processes and potentially execute arbitrary code. When
│                        │      │                   io_uring thread creation fails due to resource exhaustion
│                        │      │                   (e.g., cgroup pids.max), fuse_uring_start() frees the ring
│                        │      │                   pool structure but stores the dangling pointer in the
│                        │      │                   session state, leading to a use-after-free when the session
│                        │      │                    shuts down. The trigger is reliable in containerized
│                        │      │                   environments where cgroup pids.max limits naturally
│                        │      │                   constrain thread creation. This issue has been patched in
│                        │      │                   version 3.18.2. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-416 
│                        │      │                  ╰ [1]: CWE-825 
│                        │      ├ VendorSeverity   ╭ redhat: 3 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 7.8 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33150 
│                        │      │                  ├ [1]: https://bugzilla.redhat.com/show_bug.cgi?id=2449771 
│                        │      │                  ├ [2]: https://github.com/libfuse/libfuse/commit/49fcd891a58
│                        │      │                  │      f622c098e2ca67d66086f7b213836 
│                        │      │                  ├ [3]: https://github.com/libfuse/libfuse/releases/tag/fuse-
│                        │      │                  │      3.18.2 
│                        │      │                  ├ [4]: https://github.com/libfuse/libfuse/security/advisorie
│                        │      │                  │      s/GHSA-qxv7-xrc2-qmfx 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-33150 
│                        │      │                  ├ [6]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │      │                  │      026/cve-2026-33150.json 
│                        │      │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-33150 
│                        │      ├ PublishedDate   : 2026-03-20T21:17:15.41Z 
│                        │      ╰ LastModifiedDate: 2026-07-15T02:20:03.623Z 
│                        ├ [27] ╭ VulnerabilityID : CVE-2026-33179 
│                        │      ├ PkgID           : libfuse3-4@3.18.2-1 
│                        │      ├ PkgName         : libfuse3-4 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libfuse3-4@3.18.2-1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : d36ae5a32a87c9ff 
│                        │      ├ InstalledVersion: 3.18.2-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33179 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8d9a9735ef31c804666e6140174ea6feb82a9b46338315b4946f
│                        │      │                   61869c743ee6 
│                        │      ├ Title           : libfuse: libfuse: Denial of Service via NULL pointer
│                        │      │                   dereference and memory leak 
│                        │      ├ Description     : libfuse is the reference implementation of the Linux FUSE.
│                        │      │                   From version 3.18.0 to before version 3.18.2, a NULL
│                        │      │                   pointer dereference and memory leak in
│                        │      │                   fuse_uring_init_queue allows a local user to crash the FUSE
│                        │      │                    daemon or cause resource exhaustion. When numa_alloc_local
│                        │      │                    fails during io_uring queue entry setup, the code proceeds
│                        │      │                    with NULL pointers. When fuse_uring_register_queue fails,
│                        │      │                   NUMA allocations are leaked and the function incorrectly
│                        │      │                   returns success. Only the io_uring transport is affected;
│                        │      │                   the traditional /dev/fuse path is not affected. PoC
│                        │      │                   confirmed with AddressSanitizer/LeakSanitizer. This issue
│                        │      │                   has been patched in version 3.18.2. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-476 
│                        │      ├ VendorSeverity   ╭ photon: 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 5.5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33179 
│                        │      │                  ├ [1]: https://github.com/libfuse/libfuse/commit/7beb86c09b6
│                        │      │                  │      ec5aab14dc25256ed8a5ad18554d7 
│                        │      │                  ├ [2]: https://github.com/libfuse/libfuse/releases/tag/fuse-
│                        │      │                  │      3.18.2 
│                        │      │                  ├ [3]: https://github.com/libfuse/libfuse/security/advisorie
│                        │      │                  │      s/GHSA-x669-v3mq-r358 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-33179 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-33179 
│                        │      ├ PublishedDate   : 2026-03-20T21:17:16.593Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:37:05.247Z 
│                        ├ [28] ╭ VulnerabilityID : CVE-2024-2236 
│                        │      ├ PkgID           : libgcrypt20@1.12.0-2ubuntu1 
│                        │      ├ PkgName         : libgcrypt20 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2ubuntu1?arch=amd6
│                        │      │                  │       4&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : c975856993003ac6 
│                        │      ├ InstalledVersion: 1.12.0-2ubuntu1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2435bbe9a49cad1388f6cea580c3db0e423facff39804fa93338
│                        │      │                   8e9006a05cfa 
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
│                        ├ [29] ╭ VulnerabilityID : CVE-2026-22185 
│                        │      ├ PkgID           : liblmdb0@0.9.31-1build2 
│                        │      ├ PkgName         : liblmdb0 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/liblmdb0@0.9.31-1build2?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04 
│                        │      │                  ╰ UID : c6bcbb633021c366 
│                        │      ├ InstalledVersion: 0.9.31-1build2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-22185 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:17d30b02cfd64467f1dfbeff786b7a22044257f3a84f24de62e3
│                        │      │                   9c278c83ce36 
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
│                        ├ [30] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libmount1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ee0638a59a092c7e 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9a719626c17b2382d5b8c436e905dc883c215381a7420fde28fe
│                        │      │                   7bb41538cc3c 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                        ├ [31] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libmount1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ee0638a59a092c7e 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3cd29a9829e5d29a05b61a70fb5de64a7f816347e5eb2ddeeaad
│                        │      │                   3c971645f296 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                        ├ [32] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libnss-systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : libnss-systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libnss-systemd@259.5-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 75467b2281c05291 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:083de00bfd161b90281a1d27b4374cc5b270aeb50893bdd6560b
│                        │      │                   87f27fbdb4d0 
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
│                        ├ [33] ╭ VulnerabilityID : CVE-2026-13757 
│                        │      ├ PkgID           : libp11-kit0@0.26.2-2 
│                        │      ├ PkgName         : libp11-kit0 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libp11-kit0@0.26.2-2?arch=amd64&distr
│                        │      │                  │       o=ubuntu-26.04 
│                        │      │                  ╰ UID : f30da36e7f9e8d5a 
│                        │      ├ InstalledVersion: 0.26.2-2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-13757 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:cbdd4a3b9da913e2cd4e35c861020ed6788f92a8b434d2f6f0cd
│                        │      │                   0c823893e776 
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
│                        ├ [34] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libpam-systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : libpam-systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-systemd@259.5-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 4f72feeb7ea50bf 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c759b05af6d6575929261e06c49c5980ddb4e9668435272b4831
│                        │      │                   4734cef5ffdc 
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
│                        ├ [35] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ff5e7b67d2385233 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c1230000781c3a376196c6b2917a054b821d3bad34cc19070908
│                        │      │                   d8f871f463cc 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                        ├ [36] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ff5e7b67d2385233 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2efadb19f7f400c6c6f52aab2673eb4b697105b1df92a3bfc9b5
│                        │      │                   4e04e43b2e50 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                        ├ [37] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : libsubid5@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : libsubid5 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsubid5@4.17.4-2ubuntu3?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 2e6a9fef7087b138 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b962e4821985b5903d5adda86f1586dde44eb6c5f04696f7081b
│                        │      │                   a7ab63d5d0cd 
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
│                        ├ [38] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libsystemd-shared@259.5-0ubuntu3 
│                        │      ├ PkgName         : libsystemd-shared 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd-shared@259.5-0ubuntu3?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : d851fa486c321371 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9765145094ac4e78ce7468edf6e6335b388ad2370590b69691ab
│                        │      │                   0d05fe392471 
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
│                        ├ [39] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libsystemd0@259.5-0ubuntu3 
│                        │      ├ PkgName         : libsystemd0 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 68ed9dc5cf416dae 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:de1906741ef9b796c02233f9502a735e430f77609b911cf32ddb
│                        │      │                   c9f3f2e126d3 
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
│                        ├ [40] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libudev1@259.5-0ubuntu3 
│                        │      ├ PkgName         : libudev1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04 
│                        │      │                  ╰ UID : 419f3d2219f938db 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:17412781d1641a7fc439a03a774c56cf6f92e27179d34e252312
│                        │      │                   1d52d902d4ba 
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
│                        ├ [41] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 41d4afb2fde363cf 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3a7ba6d5bd56e1f996894c56721c4c053c16a49682475bc3300f
│                        │      │                   9b089ff3af18 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                        ├ [42] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 41d4afb2fde363cf 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9fbccafc20d5023c080e007fc4fa4bc068679c7e73d2263a7143
│                        │      │                   5bbc9d640fd4 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                        ├ [43] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e1bfbadc9113c00a 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c5d7d7337e7fbaa7022121f4aea98a134827bcd5074716ec8be8
│                        │      │                   500cab888ce9 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                        ├ [44] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e1bfbadc9113c00a 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d3b3f1316af4881fdaaa14410d880575c8a7240a83f9bf4d90b6
│                        │      │                   b94e9fad6727 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                        ├ [45] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : login.defs 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&d
│                        │      │                  │       istro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : eaf648d5e4e975f7 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:7f80cd27c9aaddb3b5b16244d3be02ff63160cc4c23208013b6b
│                        │      │                   8a2f4a5d4fbb 
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
│                        ├ [46] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3375f7536a2d1f546c4d4678ee2360ca3ca4f168bd5955f7e95d
│                        │      │                   adf9fe325f72 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                        ├ [47] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d0dc58739d32ea464469b93d497f9475dc5d19b9ebcfe9ef47bb
│                        │      │                   8b4b70cdedeb 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                        ├ [48] ╭ VulnerabilityID : CVE-2026-55655 
│                        │      ├ PkgID           : openssh-client@1:10.2p1-2ubuntu3.4 
│                        │      ├ PkgName         : openssh-client 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-client@10.2p1-2ubuntu3.4?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 13686d202eb549d8 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55655 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4fd9db5e561015d1fc341fc81224a81beb7e910bd0a68084a214
│                        │      │                   9c2b383388ec 
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
│                        │      ├ VendorSeverity   ╭ nvd   : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-55655 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-55655 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-55655 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.787Z 
│                        │      ╰ LastModifiedDate: 2026-07-08T14:17:14.837Z 
│                        ├ [49] ╭ VulnerabilityID : CVE-2026-55654 
│                        │      ├ PkgID           : openssh-client@1:10.2p1-2ubuntu3.4 
│                        │      ├ PkgName         : openssh-client 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-client@10.2p1-2ubuntu3.4?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 13686d202eb549d8 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55654 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ce209213f430e5cd950698411895e66eae581fdaa7735137069d
│                        │      │                   de9d12d978db 
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
│                        │      ├ VendorSeverity   ╭ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-55654 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-55654 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-55654 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.587Z 
│                        │      ╰ LastModifiedDate: 2026-07-08T14:17:14.71Z 
│                        ├ [50] ╭ VulnerabilityID : CVE-2026-55655 
│                        │      ├ PkgID           : openssh-server@1:10.2p1-2ubuntu3.4 
│                        │      ├ PkgName         : openssh-server 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-server@10.2p1-2ubuntu3.4?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 4c2524d0679327a5 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55655 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:fb8898408709891f2bdff45026a9e3e1b4bc009027cd6fbbb93e
│                        │      │                   27f0d81e029e 
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
│                        │      ├ VendorSeverity   ╭ nvd   : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-55655 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-55655 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-55655 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.787Z 
│                        │      ╰ LastModifiedDate: 2026-07-08T14:17:14.837Z 
│                        ├ [51] ╭ VulnerabilityID : CVE-2026-55654 
│                        │      ├ PkgID           : openssh-server@1:10.2p1-2ubuntu3.4 
│                        │      ├ PkgName         : openssh-server 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-server@10.2p1-2ubuntu3.4?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 4c2524d0679327a5 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55654 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0e81127fc2f077bd9cc7be4f548e77ff64c85568a581274e0944
│                        │      │                   76e670b30ae3 
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
│                        │      ├ VendorSeverity   ╭ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-55654 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-55654 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-55654 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.587Z 
│                        │      ╰ LastModifiedDate: 2026-07-08T14:17:14.71Z 
│                        ├ [52] ╭ VulnerabilityID : CVE-2026-55655 
│                        │      ├ PkgID           : openssh-sftp-server@1:10.2p1-2ubuntu3.4 
│                        │      ├ PkgName         : openssh-sftp-server 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-sftp-server@10.2p1-2ubuntu3.4
│                        │      │                  │       ?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : cd63c6147fc9cbb 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55655 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8144c753a6b8c196b35364d2b116afc5b6aa9927af8333f63c59
│                        │      │                   5644f99fa400 
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
│                        │      ├ VendorSeverity   ╭ nvd   : 2 
│                        │      │                  ├ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ╭ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:H/I:
│                        │      │                  │        │           L/A:N 
│                        │      │                  │        ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:U/C:H/I:
│                        │      │                           │           L/A:N 
│                        │      │                           ╰ V3Score : 5 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-55655 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2462250 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-55655 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-55655 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.787Z 
│                        │      ╰ LastModifiedDate: 2026-07-08T14:17:14.837Z 
│                        ├ [53] ╭ VulnerabilityID : CVE-2026-55654 
│                        │      ├ PkgID           : openssh-sftp-server@1:10.2p1-2ubuntu3.4 
│                        │      ├ PkgName         : openssh-sftp-server 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/openssh-sftp-server@10.2p1-2ubuntu3.4
│                        │      │                  │       ?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : cd63c6147fc9cbb 
│                        │      ├ InstalledVersion: 1:10.2p1-2ubuntu3.4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-55654 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:85370ae1117fec5970ed344bbcb0a4fb862479db94ae2488d6ab
│                        │      │                   b977158da090 
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
│                        │      ├ VendorSeverity   ╭ redhat: 1 
│                        │      │                  ╰ ubuntu: 1 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:L 
│                        │      │                           ╰ V3Score : 3.7 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:36759 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-55654 
│                        │      │                  ├ [2]: https://bugzilla.redhat.com/show_bug.cgi?id=2462493 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-55654 
│                        │      │                  ╰ [4]: https://www.cve.org/CVERecord?id=CVE-2026-55654 
│                        │      ├ PublishedDate   : 2026-06-23T04:17:40.587Z 
│                        │      ╰ LastModifiedDate: 2026-07-08T14:17:14.71Z 
│                        ├ [54] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : passwd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e6ebfac85406f0d5 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:82bdc9082708652d40f7f954362531ed97f3b89ecaf545bbabcf
│                        │      │                   10447e4d3309 
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
│                        ├ [55] ╭ VulnerabilityID : CVE-2018-6952 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : d95d6071755544be 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2018-6952 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:94cff3a270f7597dfcf69e8ec23be933167bfbf601f36e283bbb
│                        │      │                   0e63896684f5 
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
│                        ├ [56] ╭ VulnerabilityID : CVE-2019-20633 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : d95d6071755544be 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2019-20633 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3666f1fbcf07dbe7bb369ce1960228ef8bf1e41812d23a6c61d2
│                        │      │                   8b4e12415b52 
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
│                        ├ [57] ╭ VulnerabilityID : CVE-2021-45261 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : d95d6071755544be 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-45261 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:36173abffac7144a904c12a336863311313d1f6af13357355821
│                        │      │                   1872b2ed30be 
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
│                        ├ [58] ╭ VulnerabilityID : CVE-2026-35341 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:da6ad1320a935e3a19a3e63dc4e85bc8f74a2325f64bc1b60c50
│                        │      │                   cdb45d67c285 
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
│                        ├ [59] ╭ VulnerabilityID : CVE-2026-35344 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:892fcd954a633eecc9c3081ca1b1d518c2091611e94f670661ed
│                        │      │                   1ee2e5a0a91e 
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
│                        ├ [60] ╭ VulnerabilityID : CVE-2026-35345 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1ddc70e29b6da66693c86590deec6b869c71a4af4ca40719c429
│                        │      │                   2a5f3a7d0867 
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
│                        ├ [61] ╭ VulnerabilityID : CVE-2026-35348 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:de656e9090e73d887a9a3d50a507e15fae7c8bd7788cd825acb4
│                        │      │                   8d6de6a866b3 
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
│                        ├ [62] ╭ VulnerabilityID : CVE-2026-35350 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c1f0b52b0351075053cea2d15170dd0fbe77ee011729a654ea8a
│                        │      │                   e970e2d11c32 
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
│                        ├ [63] ╭ VulnerabilityID : CVE-2026-35351 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:dc10b21e699b5539e855ecbebfe615d710562f82658624a1ada9
│                        │      │                   c870caa95bea 
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
│                        ├ [64] ╭ VulnerabilityID : CVE-2026-35352 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f4fd723440c93389cdef8ed341af78e2ab5e328dfde7a830da8e
│                        │      │                   a0ff843dd6a1 
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
│                        ├ [65] ╭ VulnerabilityID : CVE-2026-35354 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:93ff8b53cb96f7484d8ccecb0b16c56f9afa194fdb6aca5cc3d1
│                        │      │                   373b96cf950e 
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
│                        ├ [66] ╭ VulnerabilityID : CVE-2026-35357 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f53f5c022888356f1d487f553a9a098d588903e579373ef40d79
│                        │      │                   079861287575 
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
│                        ├ [67] ╭ VulnerabilityID : CVE-2026-35359 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c3aea50b2f1067e87bfe775c651a61a7c7673b67d130a21ada16
│                        │      │                   61bf541a8041 
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
│                        ├ [68] ╭ VulnerabilityID : CVE-2026-35360 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:7da77fe78ba01733af424bc5a0bd79e8beedcdc2b8a8360bd830
│                        │      │                   40f9e964b9a7 
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
│                        ├ [69] ╭ VulnerabilityID : CVE-2026-35363 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d15942705a2d9dce8e55f096fd2ce475c836c62372cb06ad733e
│                        │      │                   3e8392185bba 
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
│                        ├ [70] ╭ VulnerabilityID : CVE-2026-35364 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2f597f383b1bbe8b26858c959111fd216a6f1546c8f5d52b8384
│                        │      │                   01373eb9ccd7 
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
│                        ├ [71] ╭ VulnerabilityID : CVE-2026-35367 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d9b4e7401bb24ab518dfe652c5999dc30e4d724538e06bd3155e
│                        │      │                   ccb18ca06986 
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
│                        ├ [72] ╭ VulnerabilityID : CVE-2026-35368 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:871cd705de17ca2e4433f7ead6dee177a1a8d5f9c8dbf97797be
│                        │      │                   840cc6accea4 
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
│                        ├ [73] ╭ VulnerabilityID : CVE-2026-35370 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ab38124fbf8d97a0fd659260a0665e21d83ac0e5d62d1c6d4339
│                        │      │                   846e74c3d667 
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
│                        ├ [74] ╭ VulnerabilityID : CVE-2026-35371 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:46cb2de09908289bc8db8dc579f4eb6c5e93925dee9660590ef5
│                        │      │                   ea2199681d4a 
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
│                        ├ [75] ╭ VulnerabilityID : CVE-2026-35373 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:80164132402ffd503b2f605f39aab602895916af253903b54f93
│                        │      │                   f99be001deeb 
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
│                        ├ [76] ╭ VulnerabilityID : CVE-2026-35374 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d2abe0b118ba56402b97ed1d4858e6c6e749a23dc4f8fe2c5907
│                        │      │                   7c187b658765 
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
│                        ├ [77] ╭ VulnerabilityID : CVE-2026-35377 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:20265fa554c8d8e77ce31ce78481f8f1a94f64f99c618926c00a
│                        │      │                   9ed26921ea44 
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
│                        ├ [78] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd@259.5-0ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : e0e5fbac2698975d 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8b7270321ff46c19801efa68039f3dde2725ffbbc0576c4d14f9
│                        │      │                   445d754b292f 
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
│                        ├ [79] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-cryptsetup@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-cryptsetup 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-cryptsetup@259.5-0ubuntu3?arc
│                        │      │                  │       h=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 5f40b2e2217621bf 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:16e10b4f69ae6695e8b6e48ff34f4243142ae8646ae8cecb1dbe
│                        │      │                   34dab0725ade 
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
│                        ├ [80] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-resolved@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-resolved 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-resolved@259.5-0ubuntu3?arch=
│                        │      │                  │       amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 2611e0dfa5a76aaf 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:764c9098824b430d380ab65503233edf7c316f043f41db445120
│                        │      │                   46e3e8c38bfb 
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
│                        ├ [81] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-sysv@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-sysv 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-sysv@259.5-0ubuntu3?arch=amd6
│                        │      │                  │       4&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 671de75b107aaffc 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:66550637451bcaafd09179042c0b73d02ebdd4dd7d1bf7aab7e7
│                        │      │                   646ef2be545f 
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
│                        ├ [82] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-timesyncd@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-timesyncd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-timesyncd@259.5-0ubuntu3?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : c6ea5d793fe24a49 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1adf3a76ed5b5b946ce9a84263a2fca1e26d90de000deceb7684
│                        │      │                   ce2c4dffc5be 
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
│                        ├ [83] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : uidmap@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : uidmap 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/uidmap@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : d7cc4b1ad13c4c8d 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:678b5c4e62181e59335ef72506bbc9c01f9039e2ce63c0e95218
│                        │      │                   b352755a4c65 
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
│                        ├ [84] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:32b5729d0c095882ed884bc2ba1565c68d7f4ee6ae0a2c82244b
│                        │      │                   c82c7b948298 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:27:11.017Z 
│                        ├ [85] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:deab366964d871649856d73346025153420e20c9a8053d6f2047
│                        │      │                   be3c49491abc 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:43:10.203Z 
│                        ├ [86] ╭ VulnerabilityID : CVE-2021-31879 
│                        │      ├ PkgID           : wget@1.25.0-2ubuntu4.2 
│                        │      ├ PkgName         : wget 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/wget@1.25.0-2ubuntu4.2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : d2f332e16b5c263c 
│                        │      ├ InstalledVersion: 1.25.0-2ubuntu4.2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-31879 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:442ac5a0b9e11b431d894160820530768196d6c9b7bd8e1ee5ca
│                        │      │                   b3e26a0d80d1 
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
│                        ├ [87] ╭ VulnerabilityID : CVE-2026-15146 
│                        │      ├ PkgID           : wget@1.25.0-2ubuntu4.2 
│                        │      ├ PkgName         : wget 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/wget@1.25.0-2ubuntu4.2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : d2f332e16b5c263c 
│                        │      ├ InstalledVersion: 1.25.0-2ubuntu4.2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-15146 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e6ad322662d85c82a8c8150cd1ccb7da6ee9de0881a02ceb4dde
│                        │      │                   b94f6185b249 
│                        │      ├ Title           : wget: Wget: Server-Side Request Forgery via FTP PASV
│                        │      │                   response IP address validation bypass 
│                        │      ├ Description     : GNU Wget does not validate the IP address provided by an
│                        │      │                   FTP PASV response while operating in FTP passive mode. A
│                        │      │                   malicious FTP server, or an HTTP server that redirects to
│                        │      │                   an FTP URL, can exploit this behavior to redirect Wget’s
│                        │      │                   data connection to an arbitrary IP address and port. This
│                        │      │                   allows an attacker to forge server-side requests (SSRF)
│                        │      │                   from the machine running Wget, potentially accessing
│                        │      │                   localhost services or internal network resources. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ VendorSeverity   ╭ redhat: 2 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:N/S:U/C:L/I:
│                        │      │                           │           L/A:L 
│                        │      │                           ╰ V3Score : 5.9 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-15146 
│                        │      │                  ├ [1]: https://cgit.git.savannah.gnu.org/cgit/wget.git/commi
│                        │      │                  │      t/?id=4f85853f641863d5915786a8413e1a213726a62b 
│                        │      │                  ├ [2]: https://kb.cert.org/vuls/id/564823 
│                        │      │                  ├ [3]: https://nvd.nist.gov/vuln/detail/CVE-2026-15146 
│                        │      │                  ├ [4]: https://www.cve.org/CVERecord?id=CVE-2026-15146 
│                        │      │                  ╰ [5]: https://www.kb.cert.org/vuls/id/564823 
│                        │      ├ PublishedDate   : 2026-07-10T19:17:20.307Z 
│                        │      ╰ LastModifiedDate: 2026-07-15T19:16:57.323Z 
│                        ╰ [88] ╭ VulnerabilityID : CVE-2026-27171 
│                               ├ PkgID           : zlib1g@1:1.3.dfsg+really1.3.1-1ubuntu3 
│                               ├ PkgName         : zlib1g 
│                               ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/zlib1g@1.3.dfsg%2Breally1.3.1-1ubuntu
│                               │                  │       3?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                               │                  ╰ UID : f9537564bd1f9cb2 
│                               ├ InstalledVersion: 1:1.3.dfsg+really1.3.1-1ubuntu3 
│                               ├ Status          : affected 
│                               ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                               │                  │         197d9e39c5494d4581e40 
│                               │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                               │                            df117adb7086d939b6bf5 
│                               ├ SeveritySource  : ubuntu 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27171 
│                               ├ DataSource       ╭ ID  : ubuntu 
│                               │                  ├ Name: Ubuntu CVE Tracker 
│                               │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                               ├ Fingerprint     : sha256:bdecf4e67865b5e93d2ef3e783a4fdf275bc0cdb50495fc1df44
│                               │                   cb3faacb7523 
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
├ [1]  ╭ Target         : Java 
│      ├ Class          : lang-pkgs 
│      ├ Type           : jar 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : CVE-2026-54512 
│                        │     ├ VendorIDs        ─ [0]: GHSA-j3rv-43j4-c7qm 
│                        │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                        │     ├ PkgPath         : opt/oaf/openaf.jar 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind
│                        │     │                  │       @2.21.1 
│                        │     │                  ╰ UID : 3293a4ace0bf5e 
│                        │     ├ InstalledVersion: 2.21.1 
│                        │     ├ FixedVersion    : 2.18.8, 3.1.4, 2.21.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54512 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Maven 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Amaven 
│                        │     ├ Fingerprint     : sha256:786f35b1ad3c80021fdf174f0566a863d2679765e43ae581d4266
│                        │     │                   2686de4f61a 
│                        │     ├ Title           : jackson-databind: jackson-databind: Arbitrary code execution
│                        │     │                    via PolymorphicTypeValidator bypass 
│                        │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                        │     │                   functionality and tree-model for Jackson Data Processor.
│                        │     │                   From 2.10.0 until 2.18.8, 2.21.4, and 3.1.4,
│                        │     │                   jackson-databind's PolymorphicTypeValidator (PTV) is the
│                        │     │                   primary safety mechanism guarding polymorphic
│                        │     │                   deserialization. When polymorphic typing is enabled and a
│                        │     │                   type identifier contains generic parameters (i.e. the type
│                        │     │                   ID string contains <),
│                        │     │                   DatabindContext._resolveAndValidateGeneric() validates only
│                        │     │                   the raw container class name (the substring before <)
│                        │     │                   against the configured PTV. If the container type is
│                        │     │                   approved, the method parses the full canonical type string
│                        │     │                   via TypeFactory.constructFromCanonical() and returns the
│                        │     │                   fully parameterized type without ever validating the nested
│                        │     │                   type arguments against the PTV. The nested type arguments
│                        │     │                   are then resolved, instantiated, and populated as beans
│                        │     │                   during deserialization. An attacker who controls the type ID
│                        │     │                    can therefore place a denied class as a generic type
│                        │     │                   parameter of an allowed container — for example
│                        │     │                   java.util.ArrayList<com.evil.Gadget> when only
│                        │     │                   java.util.ArrayList is allow-listed. The container passes
│                        │     │                   the PTV check; com.evil.Gadget is loaded via
│                        │     │                   Class.forName(name, true, loader), instantiated, and its
│                        │     │                   properties are set from attacker-controlled JSON. This
│                        │     │                   completely bypasses an explicitly configured PTV allow-list.
│                        │     │                    This vulnerability is fixed in 2.18.8, 2.21.4, and 3.1.4.[
│                        │     │                   m 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ╭ [0]: CWE-184 
│                        │     │                  ╰ [1]: CWE-502 
│                        │     ├ VendorSeverity   ╭ ghsa  : 3 
│                        │     │                  ╰ redhat: 3 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 8.1 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 8.1 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54512 
│                        │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                        │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/4
│                        │     │                  │      34d6c511de7fdd9872f29157aafb6162d12d8d5 
│                        │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/issues/5
│                        │     │                  │      988 
│                        │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/security
│                        │     │                  │      /advisories/GHSA-j3rv-43j4-c7qm 
│                        │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54512 
│                        │     │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-54512 
│                        │     ├ PublishedDate   : 2026-06-23T21:17:02.203Z 
│                        │     ╰ LastModifiedDate: 2026-06-27T21:01:36.47Z 
│                        ├ [1] ╭ VulnerabilityID : CVE-2026-54513 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rmj7-2vxq-3g9f 
│                        │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                        │     ├ PkgPath         : opt/oaf/openaf.jar 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind
│                        │     │                  │       @2.21.1 
│                        │     │                  ╰ UID : 3293a4ace0bf5e 
│                        │     ├ InstalledVersion: 2.21.1 
│                        │     ├ FixedVersion    : 2.18.8, 2.21.4, 3.1.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54513 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Maven 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Amaven 
│                        │     ├ Fingerprint     : sha256:bbe59b608f43f9a43ff6e91bd3e53f3f9da77840ca65712bc373d
│                        │     │                   cb013a0971a 
│                        │     ├ Title           : jackson-databind: Jackson-databind: Security bypass allows
│                        │     │                   arbitrary code execution 
│                        │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                        │     │                   functionality and tree-model for Jackson Data Processor.
│                        │     │                   From 2.10.0 until 2.18.8, 2.21.4, and 3.1.4,
│                        │     │                   BasicPolymorphicTypeValidator.Builder.allowIfSubTypeIsArray(
│                        │     │                   ) allowlists any array type based only on clazz.isArray(),
│                        │     │                   without validating the array's component (element) type
│                        │     │                   against the configured allowlist. A PTV built with
│                        │     │                   allowIfSubTypeIsArray() plus an explicit concrete-type
│                        │     │                   allowlist therefore still permits EvilType[] even though
│                        │     │                   EvilType is not allowlisted. When Jackson deserializes the
│                        │     │                   elements and no per-element type IDs are present, it
│                        │     │                   instantiates the component type directly with no further PTV
│                        │     │                    check, bypassing the allowlist. This vulnerability is fixed
│                        │     │                    in 2.18.8, 2.21.4, and 3.1.4. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-184 
│                        │     ├ VendorSeverity   ╭ ghsa  : 3 
│                        │     │                  ╰ redhat: 3 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 8.1 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:N/UI:N/S:U/C:H/I:H
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 8.1 
│                        │     ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:36839 
│                        │     │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:40895 
│                        │     │                  ├ [2] : https://access.redhat.com/security/cve/CVE-2026-54513 
│                        │     │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2492010 
│                        │     │                  ├ [4] : https://github.com/FasterXML/jackson-databind 
│                        │     │                  ├ [5] : https://github.com/FasterXML/jackson-databind/commit/
│                        │     │                  │       01d1692c8d0ed03e51a0e3c4f8a9e6908e4931e5 
│                        │     │                  ├ [6] : https://github.com/FasterXML/jackson-databind/commit/
│                        │     │                  │       24529da29fdf46ff94ca38de9ebf31cd188f5e8e 
│                        │     │                  ├ [7] : https://github.com/FasterXML/jackson-databind/issues/
│                        │     │                  │       5981 
│                        │     │                  ├ [8] : https://github.com/FasterXML/jackson-databind/issues/
│                        │     │                  │       5983 
│                        │     │                  ├ [9] : https://github.com/FasterXML/jackson-databind/pull/5984 
│                        │     │                  ├ [10]: https://github.com/FasterXML/jackson-databind/securit
│                        │     │                  │       y/advisories/GHSA-rmj7-2vxq-3g9f 
│                        │     │                  ├ [11]: https://nvd.nist.gov/vuln/detail/CVE-2026-54513 
│                        │     │                  ├ [12]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │     │                  │       026/cve-2026-54513.json 
│                        │     │                  ╰ [13]: https://www.cve.org/CVERecord?id=CVE-2026-54513 
│                        │     ├ PublishedDate   : 2026-06-23T21:17:02.333Z 
│                        │     ╰ LastModifiedDate: 2026-07-17T13:18:57.98Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-54514 
│                        │     ├ VendorIDs        ─ [0]: GHSA-hgj6-7826-r7m5 
│                        │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                        │     ├ PkgPath         : opt/oaf/openaf.jar 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind
│                        │     │                  │       @2.21.1 
│                        │     │                  ╰ UID : 3293a4ace0bf5e 
│                        │     ├ InstalledVersion: 2.21.1 
│                        │     ├ FixedVersion    : 2.18.8, 2.21.4, 3.1.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54514 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Maven 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Amaven 
│                        │     ├ Fingerprint     : sha256:a3c870613184bd506dc63e25cb2dbde9142832e48cee8472a531e
│                        │     │                   085622fdc98 
│                        │     ├ Title           : jackson-databind: jackson-databind: Information Disclosure
│                        │     │                   via Eager DNS Resolution 
│                        │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                        │     │                   functionality and tree-model for Jackson Data Processor.
│                        │     │                   From 2.0.0 until 2.18.8, 2.21.4, and 3.1.4,
│                        │     │                   JDKFromStringDeserializer constructed InetSocketAddress with
│                        │     │                    new InetSocketAddress(host, port), which performs eager DNS
│                        │     │                    name resolution for hostname inputs at deserialization
│                        │     │                   time. An application that binds untrusted JSON into a type
│                        │     │                   containing an InetSocketAddress field issues an
│                        │     │                   attacker-chosen DNS query during readValue, before any
│                        │     │                   application-level validation or connect logic. The fix uses
│                        │     │                   InetSocketAddress.createUnresolved(host, port), deferring
│                        │     │                   DNS to an explicit connect. This vulnerability is fixed in
│                        │     │                   2.18.8, 2.21.4, and 3.1.4. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs           ─ [0]: CWE-918 
│                        │     ├ VendorSeverity   ╭ ghsa  : 2 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                        │     │                  │        │           /A:N 
│                        │     │                  │        ╰ V3Score : 5.3 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54514 
│                        │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                        │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/1
│                        │     │                  │      f5a1037b1e9e05920e755cb35f198bcd46667e4 
│                        │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/pull/5951 
│                        │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/security
│                        │     │                  │      /advisories/GHSA-hgj6-7826-r7m5 
│                        │     │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-54514 
│                        │     │                  ╰ [6]: https://www.cve.org/CVERecord?id=CVE-2026-54514 
│                        │     ├ PublishedDate   : 2026-06-23T21:17:02.467Z 
│                        │     ╰ LastModifiedDate: 2026-06-27T20:55:09.61Z 
│                        ├ [3] ╭ VulnerabilityID : CVE-2026-54515 
│                        │     ├ VendorIDs        ─ [0]: GHSA-5jmj-h7xm-6q6v 
│                        │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                        │     ├ PkgPath         : opt/oaf/openaf.jar 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind
│                        │     │                  │       @2.21.1 
│                        │     │                  ╰ UID : 3293a4ace0bf5e 
│                        │     ├ InstalledVersion: 2.21.1 
│                        │     ├ FixedVersion    : 3.1.4, 2.18.9, 2.21.5, 2.22.1 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54515 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Maven 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Amaven 
│                        │     ├ Fingerprint     : sha256:def36c8a6356da27a572e98b6c44a3834a905197354fd7d2cb993
│                        │     │                   afa5df77bf3 
│                        │     ├ Title           : jackson-databind: jackson-databind: Ignored properties can
│                        │     │                   be unexpectedly modified 
│                        │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                        │     │                   functionality and tree-model for Jackson Data Processor.
│                        │     │                   From 2.8.0 until 2.18.9, 2.21.5, and 3.1.4, in
│                        │     │                   BeanDeserializerBase.createContextual(), per-property
│                        │     │                   @JsonIgnoreProperties exclusions are applied by
│                        │     │                   _handleByNameInclusion(), producing a contextual
│                        │     │                   deserializer whose BeanPropertyMap has the ignored
│                        │     │                   properties removed. The subsequent per-property
│                        │     │                   case-insensitivity block (triggered by
│                        │     │                   @JsonFormat(ACCEPT_CASE_INSENSITIVE_PROPERTIES)) rebuilds
│                        │     │                   from this._beanProperties (the original, unfiltered map)
│                        │     │                   instead of contextual._beanProperties, then overwrites the
│                        │     │                   filtered map — restoring every property
│                        │     │                   _handleByNameInclusion had just removed. The ignored
│                        │     │                   property becomes writable again. This vulnerability is fixed
│                        │     │                    in 2.18.9, 2.21.5, and 3.1.4. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs           ─ [0]: CWE-915 
│                        │     ├ VendorSeverity   ╭ ghsa  : 2 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                        │     │                  │        │           /A:N 
│                        │     │                  │        ╰ V3Score : 5.3 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54515 
│                        │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                        │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/0
│                        │     │                  │      e1b0b211f7a53baa62ba2f4c9bd006c7bf4d5fa 
│                        │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/issues/5
│                        │     │                  │      962 
│                        │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/issues/5
│                        │     │                  │      964 
│                        │     │                  ├ [5]: https://github.com/FasterXML/jackson-databind/security
│                        │     │                  │      /advisories/GHSA-5jmj-h7xm-6q6v 
│                        │     │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-54515 
│                        │     │                  ╰ [7]: https://www.cve.org/CVERecord?id=CVE-2026-54515 
│                        │     ├ PublishedDate   : 2026-06-23T21:17:02.597Z 
│                        │     ╰ LastModifiedDate: 2026-06-29T13:38:59.057Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-54516 
│                        │     ├ VendorIDs        ─ [0]: GHSA-9fxm-vc8v-hj55 
│                        │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                        │     ├ PkgPath         : opt/oaf/openaf.jar 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind
│                        │     │                  │       @2.21.1 
│                        │     │                  ╰ UID : 3293a4ace0bf5e 
│                        │     ├ InstalledVersion: 2.21.1 
│                        │     ├ FixedVersion    : 2.21.4, 3.1.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54516 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Maven 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Amaven 
│                        │     ├ Fingerprint     : sha256:1b1efba5cba8249892e11b7c17172b2eaf34d179246285064d73b
│                        │     │                   feea16f2815 
│                        │     ├ Title           : jackson-databind: jackson-databind: Security bypass due to
│                        │     │                   improper handling of renamed properties 
│                        │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                        │     │                   functionality and tree-model for Jackson Data Processor.
│                        │     │                   From 2.21.0 until 2.21.4 and 3.1.4,
│                        │     │                   POJOPropertiesCollector._renameProperties() allows a
│                        │     │                   property with @JsonProperty("renamed") on the getter and
│                        │     │                   @JsonIgnore on the setter to be renamed rather than dropped.
│                        │     │                    With MapperFeature.INFER_PROPERTY_MUTATORS enabled
│                        │     │                   (default), the private backing field is retained; during
│                        │     │                   deserialization BeanDeserializerFactory.addBeanProps() sees
│                        │     │                   hasField()==true, builds a FieldProperty, and makes the
│                        │     │                   backing field writable. An attacker supplying the renamed
│                        │     │                   JSON key writes the backing field directly, bypassing the
│                        │     │                   @JsonIgnore on the setter. This vulnerability is fixed in
│                        │     │                   3.1.4. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs           ─ [0]: CWE-915 
│                        │     ├ VendorSeverity   ╭ ghsa  : 2 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                        │     │                  │        │           /A:N 
│                        │     │                  │        ╰ V3Score : 5.3 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54516 
│                        │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                        │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/c
│                        │     │                  │      3d56dd25d52319828147c5b9aeabf2d485c250a 
│                        │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/commit/e
│                        │     │                  │      88cb17006b6af4883b973058f0bb6486e5074af 
│                        │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/pull/5967 
│                        │     │                  ├ [5]: https://github.com/FasterXML/jackson-databind/pull/5968 
│                        │     │                  ├ [6]: https://github.com/FasterXML/jackson-databind/security
│                        │     │                  │      /advisories/GHSA-9fxm-vc8v-hj55 
│                        │     │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-54516 
│                        │     │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-54516 
│                        │     ├ PublishedDate   : 2026-06-23T21:17:02.723Z 
│                        │     ╰ LastModifiedDate: 2026-06-27T20:52:12.103Z 
│                        ├ [5] ╭ VulnerabilityID : CVE-2026-54517 
│                        │     ├ VendorIDs        ─ [0]: GHSA-5hh8-q8hv-fr38 
│                        │     ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                        │     ├ PkgPath         : opt/oaf/openaf.jar 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind
│                        │     │                  │       @2.21.1 
│                        │     │                  ╰ UID : 3293a4ace0bf5e 
│                        │     ├ InstalledVersion: 2.21.1 
│                        │     ├ FixedVersion    : 2.21.4, 3.1.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54517 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Maven 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Amaven 
│                        │     ├ Fingerprint     : sha256:75e6b1ea0a23a3e53b6eb81591459d5242e4ec74e874ec8052cea
│                        │     │                   06a944d75ab 
│                        │     ├ Title           : jackson-databind: jackson-databind: Information disclosure
│                        │     │                   via improper JsonView filter application 
│                        │     ├ Description     : jackson-databind contains the general-purpose data-binding
│                        │     │                   functionality and tree-model for Jackson Data Processor.
│                        │     │                   From 2.21.0 until 2.21.4 and 3.1.4, in
│                        │     │                   BeanDeserializer._deserializeUsingPropertyBased, the
│                        │     │                   active-view (@JsonView) filter was applied only to creator
│                        │     │                   properties; the regular property-buffering branch performed
│                        │     │                   no prop.visibleInView(activeView) check. A change making
│                        │     │                   SetterlessProperty.isMerging() return true routed setterless
│                        │     │                    Collection/Map properties through this unguarded path, so a
│                        │     │                    setterless collection annotated with a restricted @JsonView
│                        │     │                    is populated from attacker JSON even when the active view
│                        │     │                   excludes it. This vulnerability is fixed in 2.21.4 and
│                        │     │                   3.1.4. 
│                        │     ├ Severity        : MEDIUM 
│                        │     ├ CweIDs           ─ [0]: CWE-863 
│                        │     ├ VendorSeverity   ╭ ghsa  : 2 
│                        │     │                  ╰ redhat: 2 
│                        │     ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:N/I:L
│                        │     │                  │        │           /A:N 
│                        │     │                  │        ╰ V3Score : 5.3 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:N
│                        │     │                           │           /A:N 
│                        │     │                           ╰ V3Score : 5.3 
│                        │     ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54517 
│                        │     │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                        │     │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/5
│                        │     │                  │      bf23edb4221f7dd2ec8e71ff6d26c61640f261d 
│                        │     │                  ├ [3]: https://github.com/FasterXML/jackson-databind/commit/9
│                        │     │                  │      4c5d215b3af1505098c686405d9641f041a9962 
│                        │     │                  ├ [4]: https://github.com/FasterXML/jackson-databind/pull/5969 
│                        │     │                  ├ [5]: https://github.com/FasterXML/jackson-databind/pull/5970 
│                        │     │                  ├ [6]: https://github.com/FasterXML/jackson-databind/security
│                        │     │                  │      /advisories/GHSA-5hh8-q8hv-fr38 
│                        │     │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-54517 
│                        │     │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-54517 
│                        │     ├ PublishedDate   : 2026-06-23T21:17:02.853Z 
│                        │     ╰ LastModifiedDate: 2026-06-27T20:51:09.987Z 
│                        ╰ [6] ╭ VulnerabilityID : CVE-2026-54518 
│                              ├ VendorIDs        ─ [0]: GHSA-rcqc-6cw3-h962 
│                              ├ PkgName         : com.fasterxml.jackson.core:jackson-databind 
│                              ├ PkgPath         : opt/oaf/openaf.jar 
│                              ├ PkgIdentifier    ╭ PURL: pkg:maven/com.fasterxml.jackson.core/jackson-databind
│                              │                  │       @2.21.1 
│                              │                  ╰ UID : 3293a4ace0bf5e 
│                              ├ InstalledVersion: 2.21.1 
│                              ├ FixedVersion    : 2.21.4 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                              │                  │         97d9e39c5494d4581e40 
│                              │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                              │                            f117adb7086d939b6bf5 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-54518 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Maven 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Amaven 
│                              ├ Fingerprint     : sha256:b934ad5b74fa6ac91d8603333a607cb01a12c60d6111e53f4ecef
│                              │                   770b9aa4b86 
│                              ├ Title           : jackson-databind: jackson-databind: Information disclosure
│                              │                   and data manipulation via view-based access control bypass[
│                              │                   m 
│                              ├ Description     : jackson-databind contains the general-purpose data-binding
│                              │                   functionality and tree-model for Jackson Data Processor.
│                              │                   From 2.21.0 until 2.21.4 and 3.1.4,
│                              │                   UnwrappedPropertyHandler.processUnwrappedCreatorProperties()
│                              │                    replays buffered JSON into creator parameters but never
│                              │                   consults prop.visibleInView(activeView). The normal
│                              │                   property-based creator path gates creator properties on the
│                              │                   active view, but this unwrapped-creator replay path bypasses
│                              │                    that check, so a constructor parameter annotated with both
│                              │                   @JsonView(AdminView.class) and @JsonUnwrapped is populated
│                              │                   from attacker JSON even when a more restrictive view is
│                              │                   active. This vulnerability is fixed in 2.21.4 and 3.1.4. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-863 
│                              ├ VendorSeverity   ╭ ghsa  : 2 
│                              │                  ╰ redhat: 2 
│                              ├ CVSS             ╭ ghsa   ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L
│                              │                  │        │           /A:N 
│                              │                  │        ╰ V3Score : 6.5 
│                              │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:N/S:U/C:L/I:L
│                              │                           │           /A:N 
│                              │                           ╰ V3Score : 6.5 
│                              ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-54518 
│                              │                  ├ [1]: https://github.com/FasterXML/jackson-databind 
│                              │                  ├ [2]: https://github.com/FasterXML/jackson-databind/commit/7
│                              │                  │      21fa07ebbd4aab4a659a1a68940878315c3e341 
│                              │                  ├ [3]: https://github.com/FasterXML/jackson-databind/commit/d
│                              │                  │      633bc038f200c1397c07f1a2b46f58e72c91eea 
│                              │                  ├ [4]: https://github.com/FasterXML/jackson-databind/pull/5971 
│                              │                  ├ [5]: https://github.com/FasterXML/jackson-databind/pull/5973 
│                              │                  ├ [6]: https://github.com/FasterXML/jackson-databind/security
│                              │                  │      /advisories/GHSA-rcqc-6cw3-h962 
│                              │                  ├ [7]: https://nvd.nist.gov/vuln/detail/CVE-2026-54518 
│                              │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-54518 
│                              ├ PublishedDate   : 2026-06-23T22:16:32.073Z 
│                              ╰ LastModifiedDate: 2026-06-27T20:49:30.977Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:500567cb90b152fd32a1bbccf57565774df1fdde25431405d673c
│                        │     │                   044e6baa66b 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:ed6ef31bee1549eea641c62cacb1d8f03a97003949efe383cbdda
│                        │     │                   d7a1ac9ae95 
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
│                        │     ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:37387 
│                        │     │                  ├ [1]: https://access.redhat.com/errata/RHSA-2026:41030 
│                        │     │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │     │                  ├ [3]: https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │     │                  ├ [4]: https://github.com/moby/moby 
│                        │     │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      x86f-5xw2-fm2r 
│                        │     │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │     │                  ├ [7]: https://security.access.redhat.com/data/csaf/v2/vex/20
│                        │     │                  │      26/cve-2026-41567.json 
│                        │     │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │     ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │     ╰ LastModifiedDate: 2026-07-17T13:18:39.403Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:378a093e8ecc23aa82a57439b22830b30a2a3c37768f150e8eb89
│                        │     │                   4b25465897f 
│                        │     ├ Title           : Moby is an open source container framework. In Docker Engine
│                        │     │                    prior to  ... 
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
│                        │     │                  ╰ photon: 3 
│                        │     ├ CVSS             ╭ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/A:H 
│                        │     │                  │      ╰ V3Score : 7.2 
│                        │     │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/A:H 
│                        │     │                         ╰ V3Score : 7.2 
│                        │     ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │     │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      rg2x-37c3-w2rh 
│                        │     │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:c6719902b689df28241ef8d59f301a02dafd24db82378ea6ccb95
│                        │     │                   65e02326667 
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
│                        │     ╰ LastModifiedDate: 2026-07-15T02:20:27.623Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-41568 
│                        │     ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 9598ebd3d82b9cc4 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:586392b7e352f013fc9c6dc381c90719bdc37812eae01d25f197c
│                        │     │                   80a4fea969a 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:f6b052f59452ee7a1432668d13cec8f38058a03d37cb498b078a6
│                        │     │                   a83ff287be4 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:ed5fd86df5eb17d50e15a954dfb4072b01bddc4c2acb68d9065d6
│                        │     │                   590fc816eae 
│                        │     ├ Title           : Infinite loop on invalid input in golang.org/x/text 
│                        │     ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │     │                   containing invalid UTF-8 bytes. 
│                        │     ├ Severity        : UNKNOWN 
│                        │     ╰ References       ╭ [0]: https://go.dev/cl/794100 
│                        │                        ├ [1]: https://go.dev/issue/80142 
│                        │                        ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5970 
│                        ├ [7] ╭ VulnerabilityID : CVE-2026-39822 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │     ├ PkgID           : stdlib@v1.26.4 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                        │     │                  ╰ UID : 3637f4e9d92f84e2 
│                        │     ├ InstalledVersion: v1.26.4 
│                        │     ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:409fd525fa772bb1603d73777736059bb2fb043e700fbdc1f455c
│                        │     │                   eb7f54b0137 
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
│                        ╰ [8] ╭ VulnerabilityID : CVE-2026-42505 
│                              ├ VendorIDs        ─ [0]: GO-2026-5856 
│                              ├ PkgID           : stdlib@v1.26.4 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                              │                  ╰ UID : 3637f4e9d92f84e2 
│                              ├ InstalledVersion: v1.26.4 
│                              ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                              │                  │         97d9e39c5494d4581e40 
│                              │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                              │                            f117adb7086d939b6bf5 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:d21370d8354c66bcf0537dec93d5a491a1d59830cacffe415e8f9
│                              │                   bf3b05a8a19 
│                              ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure in
│                              │                    Encrypted Client Hello 
│                              ├ Description     : Handshakes which used Encrypted Client Hello could be
│                              │                   de-anonymized by a passive network observer due to a
│                              │                   disclosure of pre-shared key identities in the unencrypted
│                              │                   client hello. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-201 
│                              ├ VendorSeverity   ╭ bitnami: 2 
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
│      ╰ Vulnerabilities ╭ [0] ╭ VulnerabilityID : GO-2026-5932 
│                        │     ├ PkgID           : golang.org/x/crypto@v0.53.0 
│                        │     ├ PkgName         : golang.org/x/crypto 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.53.0 
│                        │     │                  ╰ UID : 7ceae87a7522a75e 
│                        │     ├ InstalledVersion: v0.53.0 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:1d74e1b8cadba49affaa04eeb7a102491aaebdca8bd6538cdc85a
│                        │     │                   aedb2894c05 
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
│                        ╰ [1] ╭ VulnerabilityID : CVE-2026-56852 
│                              ├ VendorIDs        ─ [0]: GO-2026-5970 
│                              ├ PkgID           : golang.org/x/text@v0.38.0 
│                              ├ PkgName         : golang.org/x/text 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.38.0 
│                              │                  ╰ UID : 5f4ce3a80e850c83 
│                              ├ InstalledVersion: v0.38.0 
│                              ├ FixedVersion    : 0.39.0 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                              │                  │         97d9e39c5494d4581e40 
│                              │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                              │                            f117adb7086d939b6bf5 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:9ec79467fcea9ce7f7b3f090f4a23ef750ffc059f9fbc53338ebf
│                              │                   e6a7145c008 
│                              ├ Title           : Infinite loop on invalid input in golang.org/x/text 
│                              ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                              │                   containing invalid UTF-8 bytes. 
│                              ├ Severity        : UNKNOWN 
│                              ╰ References       ╭ [0]: https://go.dev/cl/794100 
│                                                 ├ [1]: https://go.dev/issue/80142 
│                                                 ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5970 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:e4c349d3f20d1fd50d30b7c013c82f239256549954374d4060958
│                        │     │                   af4ea7ca0d7 
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
│                              ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                              │                  │         97d9e39c5494d4581e40 
│                              │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                              │                            f117adb7086d939b6bf5 
│                              ├ SeveritySource  : ghsa 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-50163 
│                              ├ DataSource       ╭ ID  : ghsa 
│                              │                  ├ Name: GitHub Security Advisory Go 
│                              │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                              │                          cosystem%3Ago 
│                              ├ Fingerprint     : sha256:5b532fec75cf5ff634cedd41cd0172fe30740967eb1bd10c42227
│                              │                   5abbec6cc93 
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
│                              ╰ LastModifiedDate: 2026-07-17T20:17:23.943Z 
├ [7]  ╭ Target         : usr/bin/kubectl 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-25681 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5029 
│                        │      ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │      │                  ╰ UID : 73c8e80af86e88b3 
│                        │      ├ InstalledVersion: v0.49.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25681 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:eed88fe365ae85ea352f37261ff4d17c95dd23ce2fa4f37dd9ed
│                        │      │                   3fc8a30adcba 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:25:03.343Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-27136 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5030 
│                        │      ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │      │                  ╰ UID : 73c8e80af86e88b3 
│                        │      ├ InstalledVersion: v0.49.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27136 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:84703441d45f12e652c65a120c0312b8979c625852f001a09539
│                        │      │                   cd887638c41d 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:26:43.803Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-33814 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4918 
│                        │      ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │      │                  ╰ UID : 73c8e80af86e88b3 
│                        │      ├ InstalledVersion: v0.49.0 
│                        │      ├ FixedVersion    : 0.53.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:630682d71b95a1aeb2b171b66cfa8ae6e83568662da0468ccf69
│                        │      │                   de34ca3326ef 
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
│                        │      │                  ├ [8] : https://access.redhat.com/security/cve/CVE-2026-33814 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2467815 
│                        │      │                  ├ [10]: https://github.com/golang/go/issues/78476 
│                        │      │                  ├ [11]: https://go-review.googlesource.com/c/go/+/761581 
│                        │      │                  ├ [12]: https://go-review.googlesource.com/c/net/+/761640 
│                        │      │                  ├ [13]: https://go.dev/cl/761581 
│                        │      │                  ├ [14]: https://go.dev/cl/761640 
│                        │      │                  ├ [15]: https://go.dev/issue/78476 
│                        │      │                  ├ [16]: https://groups.google.com/g/golang-announce/c/qcCIEX
│                        │      │                  │       so47M 
│                        │      │                  ├ [17]: https://linux.oracle.com/cve/CVE-2026-33814.html 
│                        │      │                  ├ [18]: https://linux.oracle.com/errata/ELSA-2026-22121.html 
│                        │      │                  ├ [19]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │      │                  ├ [20]: https://pkg.go.dev/vuln/GO-2026-4918 
│                        │      │                  ├ [21]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2026/cve-2026-33814.json 
│                        │      │                  ├ [22]: https://ubuntu.com/security/notices/USN-8430-1 
│                        │      │                  ├ [23]: https://ubuntu.com/security/notices/USN-8471-1 
│                        │      │                  ├ [24]: https://ubuntu.com/security/notices/USN-8472-1 
│                        │      │                  ├ [25]: https://ubuntu.com/security/notices/USN-8473-1 
│                        │      │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
│                        │      ╰ LastModifiedDate: 2026-07-15T02:20:18.21Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-39821 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5026 
│                        │      ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │      │                  ╰ UID : 73c8e80af86e88b3 
│                        │      ├ InstalledVersion: v0.49.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:06aad469edda11fa4791d8dcfa7a48ab3c57ae1ee64fddb62a69
│                        │      │                   b685273e73b2 
│                        │      ├ Title           : golang.org/x/net/idna: golang: golang.org/x/net/idna:
│                        │      │                   Privilege escalation via incorrect Punycode label
│                        │      │                   processing 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:23262 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:23264 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:26546 
│                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:26547 
│                        │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:30650 
│                        │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:30651 
│                        │      │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:30853 
│                        │      │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:30854 
│                        │      │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:30855 
│                        │      │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:33155 
│                        │      │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:33160 
│                        │      │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:33163 
│                        │      │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:33173 
│                        │      │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:33183 
│                        │      │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:33524 
│                        │      │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:33531 
│                        │      │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:34342 
│                        │      │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:34357 
│                        │      │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:34359 
│                        │      │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:34364 
│                        │      │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:34789 
│                        │      │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:35826 
│                        │      │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:35827 
│                        │      │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:35828 
│                        │      │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:35829 
│                        │      │                  ├ [25]: https://access.redhat.com/errata/RHSA-2026:35830 
│                        │      │                  ├ [26]: https://access.redhat.com/errata/RHSA-2026:35831 
│                        │      │                  ├ [27]: https://access.redhat.com/errata/RHSA-2026:35993 
│                        │      │                  ├ [28]: https://access.redhat.com/errata/RHSA-2026:35994 
│                        │      │                  ├ [29]: https://access.redhat.com/errata/RHSA-2026:36105 
│                        │      │                  ├ [30]: https://access.redhat.com/errata/RHSA-2026:36167 
│                        │      │                  ├ [31]: https://access.redhat.com/errata/RHSA-2026:36207 
│                        │      │                  ├ [32]: https://access.redhat.com/errata/RHSA-2026:36648 
│                        │      │                  ├ [33]: https://access.redhat.com/errata/RHSA-2026:36651 
│                        │      │                  ├ [34]: https://access.redhat.com/errata/RHSA-2026:36796 
│                        │      │                  ├ [35]: https://access.redhat.com/errata/RHSA-2026:36797 
│                        │      │                  ├ [36]: https://access.redhat.com/errata/RHSA-2026:36808 
│                        │      │                  ├ [37]: https://access.redhat.com/errata/RHSA-2026:36820 
│                        │      │                  ├ [38]: https://access.redhat.com/errata/RHSA-2026:36883 
│                        │      │                  ├ [39]: https://access.redhat.com/errata/RHSA-2026:37387 
│                        │      │                  ├ [40]: https://access.redhat.com/errata/RHSA-2026:37435 
│                        │      │                  ├ [41]: https://access.redhat.com/errata/RHSA-2026:37436 
│                        │      │                  ├ [42]: https://access.redhat.com/errata/RHSA-2026:38995 
│                        │      │                  ├ [43]: https://access.redhat.com/errata/RHSA-2026:39005 
│                        │      │                  ├ [44]: https://access.redhat.com/errata/RHSA-2026:39573 
│                        │      │                  ├ [45]: https://access.redhat.com/errata/RHSA-2026:39879 
│                        │      │                  ├ [46]: https://access.redhat.com/errata/RHSA-2026:40118 
│                        │      │                  ├ [47]: https://access.redhat.com/errata/RHSA-2026:40119 
│                        │      │                  ├ [48]: https://access.redhat.com/errata/RHSA-2026:40262 
│                        │      │                  ├ [49]: https://access.redhat.com/errata/RHSA-2026:40945 
│                        │      │                  ├ [50]: https://access.redhat.com/errata/RHSA-2026:41019 
│                        │      │                  ├ [51]: https://access.redhat.com/errata/RHSA-2026:41030 
│                        │      │                  ├ [52]: https://access.redhat.com/errata/RHSA-2026:41031 
│                        │      │                  ├ [53]: https://access.redhat.com/errata/RHSA-2026:41036 
│                        │      │                  ├ [54]: https://access.redhat.com/errata/RHSA-2026:41055 
│                        │      │                  ├ [55]: https://access.redhat.com/errata/RHSA-2026:41066 
│                        │      │                  ├ [56]: https://access.redhat.com/security/cve/CVE-2026-39821 
│                        │      │                  ├ [57]: https://bugzilla.redhat.com/2480756 
│                        │      │                  ├ [58]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
│                        │      │                  ├ [59]: https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
│                        │      │                  ├ [60]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39821 
│                        │      │                  ├ [61]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39822 
│                        │      │                  ├ [62]: https://errata.almalinux.org/9/ALSA-2026-37435.html 
│                        │      │                  ├ [63]: https://errata.rockylinux.org/RLSA-2026:37435 
│                        │      │                  ├ [64]: https://github.com/golang/go/issues/78760 
│                        │      │                  ├ [65]: https://go.dev/cl/767220 
│                        │      │                  ├ [66]: https://go.dev/issue/78760 
│                        │      │                  ├ [67]: https://groups.google.com/g/golang-announce/c/iI-mYS
│                        │      │                  │       I0lu8 
│                        │      │                  ├ [68]: https://linux.oracle.com/cve/CVE-2026-39821.html 
│                        │      │                  ├ [69]: https://linux.oracle.com/errata/ELSA-2026-38995.html 
│                        │      │                  ├ [70]: https://nvd.nist.gov/vuln/detail/CVE-2026-39821 
│                        │      │                  ├ [71]: https://pkg.go.dev/vuln/GO-2026-5026 
│                        │      │                  ├ [72]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2026/cve-2026-39821.json 
│                        │      │                  ├ [73]: https://ubuntu.com/security/notices/USN-8416-1 
│                        │      │                  ╰ [74]: https://www.cve.org/CVERecord?id=CVE-2026-39821 
│                        │      ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
│                        │      ╰ LastModifiedDate: 2026-07-17T13:18:31.383Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-25680 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5028 
│                        │      ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │      │                  ╰ UID : 73c8e80af86e88b3 
│                        │      ├ InstalledVersion: v0.49.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25680 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:bafd55acd03297e1ffb8ef4a408e3ab88cd50e20dec82feae6de
│                        │      │                   ed310504fca3 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:25:03.14Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-42502 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5027 
│                        │      ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │      │                  ╰ UID : 73c8e80af86e88b3 
│                        │      ├ InstalledVersion: v0.49.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42502 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:17b9d3a331f29b288f7035a437cfd81d02482f7c6c47753191f1
│                        │      │                   2bca2d078655 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:47:56.593Z 
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-42506 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5025 
│                        │      ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │      │                  ╰ UID : 73c8e80af86e88b3 
│                        │      ├ InstalledVersion: v0.49.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42506 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f9bc017f0748bc1391bfe6bf9419fbf6c9881c6483641acc19c2
│                        │      │                   ad1239de4462 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:47:56.993Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-46600 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5942 
│                        │      ├ PkgID           : golang.org/x/net@v0.49.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.49.0 
│                        │      │                  ╰ UID : 73c8e80af86e88b3 
│                        │      ├ InstalledVersion: v0.49.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:846a61c64932092ee6d06be7c4156a632a45c733ca1efd5961a0
│                        │      │                   756743aabb8a 
│                        │      ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic in
│                        │      │                   golang.org/x/net/dns/dnsmessage 
│                        │      ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a parameter value overflows the message buffer. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ╰ References       ╭ [0]: https://go.dev/cl/786345 
│                        │                         ├ [1]: https://go.dev/issue/79795 
│                        │                         ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-39824 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5024 
│                        │      ├ PkgID           : golang.org/x/sys@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/sys 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/sys@v0.40.0 
│                        │      │                  ╰ UID : a570222aaba50c0f 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.44.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39824 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:3c36d55eeda16f277de7128a8438d646424bc0cb8480ea99f7fc
│                        │      │                   27b9b11a0400 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:42:38.62Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-56852 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5970 
│                        │      ├ PkgID           : golang.org/x/text@v0.33.0 
│                        │      ├ PkgName         : golang.org/x/text 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.33.0 
│                        │      │                  ╰ UID : 56d04d7eef2e8fd4 
│                        │      ├ InstalledVersion: v0.33.0 
│                        │      ├ FixedVersion    : 0.39.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:7689e0d49ea29f24d04402b979162cea703cda0f1a122966ac3c
│                        │      │                   3bd08e57c9de 
│                        │      ├ Title           : Infinite loop on invalid input in golang.org/x/text 
│                        │      ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │      │                   containing invalid UTF-8 bytes. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ╰ References       ╭ [0]: https://go.dev/cl/794100 
│                        │                         ├ [1]: https://go.dev/issue/80142 
│                        │                         ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5970 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-39822 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │      ├ PkgID           : stdlib@v1.26.4 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                        │      │                  ╰ UID : df7e8ffd4d941fa6 
│                        │      ├ InstalledVersion: v1.26.4 
│                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:cc6a0ccdd2315f6becdc9447936244bb08f636c3e58726318d95
│                        │      │                   2da979a9386c 
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
│                        ╰ [11] ╭ VulnerabilityID : CVE-2026-42505 
│                               ├ VendorIDs        ─ [0]: GO-2026-5856 
│                               ├ PkgID           : stdlib@v1.26.4 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                               │                  ╰ UID : df7e8ffd4d941fa6 
│                               ├ InstalledVersion: v1.26.4 
│                               ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                               │                  │         197d9e39c5494d4581e40 
│                               │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                               │                            df117adb7086d939b6bf5 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:d521bd62f1e2c4b879db032d2656190d4a8da5da54766137203c
│                               │                   c3baef719f04 
│                               ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure
│                               │                   in Encrypted Client Hello 
│                               ├ Description     : Handshakes which used Encrypted Client Hello could be
│                               │                   de-anonymized by a passive network observer due to a
│                               │                   disclosure of pre-shared key identities in the unencrypted
│                               │                   client hello. 
│                               ├ Severity        : MEDIUM 
│                               ├ CweIDs           ─ [0]: CWE-201 
│                               ├ VendorSeverity   ╭ bitnami: 2 
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
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25681 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:7e8faf963e2ee533b98b4f8cca2eb7ed110b764167a449d04f27
│                        │      │                   27bedbb0d469 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:25:03.343Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-27136 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5030 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27136 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:9d4535cc0e34e7d8e49c5b9c113bd4c4327ab0dba4a181ec66ae
│                        │      │                   3020e6db0b45 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:26:43.803Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-33814 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4918 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.53.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:98de2f9adb8024f7720c510302b8483cc0dc6e957ea348870ffc
│                        │      │                   e10f6d90f185 
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
│                        │      │                  ├ [8] : https://access.redhat.com/security/cve/CVE-2026-33814 
│                        │      │                  ├ [9] : https://bugzilla.redhat.com/show_bug.cgi?id=2467815 
│                        │      │                  ├ [10]: https://github.com/golang/go/issues/78476 
│                        │      │                  ├ [11]: https://go-review.googlesource.com/c/go/+/761581 
│                        │      │                  ├ [12]: https://go-review.googlesource.com/c/net/+/761640 
│                        │      │                  ├ [13]: https://go.dev/cl/761581 
│                        │      │                  ├ [14]: https://go.dev/cl/761640 
│                        │      │                  ├ [15]: https://go.dev/issue/78476 
│                        │      │                  ├ [16]: https://groups.google.com/g/golang-announce/c/qcCIEX
│                        │      │                  │       so47M 
│                        │      │                  ├ [17]: https://linux.oracle.com/cve/CVE-2026-33814.html 
│                        │      │                  ├ [18]: https://linux.oracle.com/errata/ELSA-2026-22121.html 
│                        │      │                  ├ [19]: https://nvd.nist.gov/vuln/detail/CVE-2026-33814 
│                        │      │                  ├ [20]: https://pkg.go.dev/vuln/GO-2026-4918 
│                        │      │                  ├ [21]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2026/cve-2026-33814.json 
│                        │      │                  ├ [22]: https://ubuntu.com/security/notices/USN-8430-1 
│                        │      │                  ├ [23]: https://ubuntu.com/security/notices/USN-8471-1 
│                        │      │                  ├ [24]: https://ubuntu.com/security/notices/USN-8472-1 
│                        │      │                  ├ [25]: https://ubuntu.com/security/notices/USN-8473-1 
│                        │      │                  ╰ [26]: https://www.cve.org/CVERecord?id=CVE-2026-33814 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:42.88Z 
│                        │      ╰ LastModifiedDate: 2026-07-15T02:20:18.21Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-39821 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5026 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39821 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:070ba034263e6c431981f689936fff315a36bd2c1f8bd63b1f5d
│                        │      │                   319af26de2c6 
│                        │      ├ Title           : golang.org/x/net/idna: golang: golang.org/x/net/idna:
│                        │      │                   Privilege escalation via incorrect Punycode label
│                        │      │                   processing 
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
│                        │      ├ References       ╭ [0] : https://access.redhat.com/errata/RHSA-2026:23262 
│                        │      │                  ├ [1] : https://access.redhat.com/errata/RHSA-2026:23264 
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:26546 
│                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:26547 
│                        │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:30650 
│                        │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:30651 
│                        │      │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:30853 
│                        │      │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:30854 
│                        │      │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:30855 
│                        │      │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:33155 
│                        │      │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:33160 
│                        │      │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:33163 
│                        │      │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:33173 
│                        │      │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:33183 
│                        │      │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:33524 
│                        │      │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:33531 
│                        │      │                  ├ [16]: https://access.redhat.com/errata/RHSA-2026:34342 
│                        │      │                  ├ [17]: https://access.redhat.com/errata/RHSA-2026:34357 
│                        │      │                  ├ [18]: https://access.redhat.com/errata/RHSA-2026:34359 
│                        │      │                  ├ [19]: https://access.redhat.com/errata/RHSA-2026:34364 
│                        │      │                  ├ [20]: https://access.redhat.com/errata/RHSA-2026:34789 
│                        │      │                  ├ [21]: https://access.redhat.com/errata/RHSA-2026:35826 
│                        │      │                  ├ [22]: https://access.redhat.com/errata/RHSA-2026:35827 
│                        │      │                  ├ [23]: https://access.redhat.com/errata/RHSA-2026:35828 
│                        │      │                  ├ [24]: https://access.redhat.com/errata/RHSA-2026:35829 
│                        │      │                  ├ [25]: https://access.redhat.com/errata/RHSA-2026:35830 
│                        │      │                  ├ [26]: https://access.redhat.com/errata/RHSA-2026:35831 
│                        │      │                  ├ [27]: https://access.redhat.com/errata/RHSA-2026:35993 
│                        │      │                  ├ [28]: https://access.redhat.com/errata/RHSA-2026:35994 
│                        │      │                  ├ [29]: https://access.redhat.com/errata/RHSA-2026:36105 
│                        │      │                  ├ [30]: https://access.redhat.com/errata/RHSA-2026:36167 
│                        │      │                  ├ [31]: https://access.redhat.com/errata/RHSA-2026:36207 
│                        │      │                  ├ [32]: https://access.redhat.com/errata/RHSA-2026:36648 
│                        │      │                  ├ [33]: https://access.redhat.com/errata/RHSA-2026:36651 
│                        │      │                  ├ [34]: https://access.redhat.com/errata/RHSA-2026:36796 
│                        │      │                  ├ [35]: https://access.redhat.com/errata/RHSA-2026:36797 
│                        │      │                  ├ [36]: https://access.redhat.com/errata/RHSA-2026:36808 
│                        │      │                  ├ [37]: https://access.redhat.com/errata/RHSA-2026:36820 
│                        │      │                  ├ [38]: https://access.redhat.com/errata/RHSA-2026:36883 
│                        │      │                  ├ [39]: https://access.redhat.com/errata/RHSA-2026:37387 
│                        │      │                  ├ [40]: https://access.redhat.com/errata/RHSA-2026:37435 
│                        │      │                  ├ [41]: https://access.redhat.com/errata/RHSA-2026:37436 
│                        │      │                  ├ [42]: https://access.redhat.com/errata/RHSA-2026:38995 
│                        │      │                  ├ [43]: https://access.redhat.com/errata/RHSA-2026:39005 
│                        │      │                  ├ [44]: https://access.redhat.com/errata/RHSA-2026:39573 
│                        │      │                  ├ [45]: https://access.redhat.com/errata/RHSA-2026:39879 
│                        │      │                  ├ [46]: https://access.redhat.com/errata/RHSA-2026:40118 
│                        │      │                  ├ [47]: https://access.redhat.com/errata/RHSA-2026:40119 
│                        │      │                  ├ [48]: https://access.redhat.com/errata/RHSA-2026:40262 
│                        │      │                  ├ [49]: https://access.redhat.com/errata/RHSA-2026:40945 
│                        │      │                  ├ [50]: https://access.redhat.com/errata/RHSA-2026:41019 
│                        │      │                  ├ [51]: https://access.redhat.com/errata/RHSA-2026:41030 
│                        │      │                  ├ [52]: https://access.redhat.com/errata/RHSA-2026:41031 
│                        │      │                  ├ [53]: https://access.redhat.com/errata/RHSA-2026:41036 
│                        │      │                  ├ [54]: https://access.redhat.com/errata/RHSA-2026:41055 
│                        │      │                  ├ [55]: https://access.redhat.com/errata/RHSA-2026:41066 
│                        │      │                  ├ [56]: https://access.redhat.com/security/cve/CVE-2026-39821 
│                        │      │                  ├ [57]: https://bugzilla.redhat.com/2480756 
│                        │      │                  ├ [58]: https://bugzilla.redhat.com/show_bug.cgi?id=2480756 
│                        │      │                  ├ [59]: https://bugzilla.redhat.com/show_bug.cgi?id=2498152 
│                        │      │                  ├ [60]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39821 
│                        │      │                  ├ [61]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-39822 
│                        │      │                  ├ [62]: https://errata.almalinux.org/9/ALSA-2026-37435.html 
│                        │      │                  ├ [63]: https://errata.rockylinux.org/RLSA-2026:37435 
│                        │      │                  ├ [64]: https://github.com/golang/go/issues/78760 
│                        │      │                  ├ [65]: https://go.dev/cl/767220 
│                        │      │                  ├ [66]: https://go.dev/issue/78760 
│                        │      │                  ├ [67]: https://groups.google.com/g/golang-announce/c/iI-mYS
│                        │      │                  │       I0lu8 
│                        │      │                  ├ [68]: https://linux.oracle.com/cve/CVE-2026-39821.html 
│                        │      │                  ├ [69]: https://linux.oracle.com/errata/ELSA-2026-38995.html 
│                        │      │                  ├ [70]: https://nvd.nist.gov/vuln/detail/CVE-2026-39821 
│                        │      │                  ├ [71]: https://pkg.go.dev/vuln/GO-2026-5026 
│                        │      │                  ├ [72]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2026/cve-2026-39821.json 
│                        │      │                  ├ [73]: https://ubuntu.com/security/notices/USN-8416-1 
│                        │      │                  ╰ [74]: https://www.cve.org/CVERecord?id=CVE-2026-39821 
│                        │      ├ PublishedDate   : 2026-05-22T16:16:20.41Z 
│                        │      ╰ LastModifiedDate: 2026-07-17T13:18:31.383Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2025-47911 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4440 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.45.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-47911 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f0e81daa37745fe9b8916f5ff213f71ce9ee1635e15e7df36890
│                        │      │                   f7ea1daeed34 
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
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-58190 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:e6a34eecca27166b1990da824eb6adaccf391d052f00f0cb4ac5
│                        │      │                   b547d6fbbbe2 
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
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-25680 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:68ea24d472766f63b8467e8ff874c1e23a59ea1dc4e3fd7e50fb
│                        │      │                   6af24c8c956f 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:25:03.14Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-42502 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5027 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42502 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4e39c371de1f0c3ede931979d46be04d1d0c4be96634652da184
│                        │      │                   39b1ff562aff 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:47:56.593Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-42506 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5025 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.55.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42506 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:94a69574e3fc20166212ffcdd69a8f923b1f051c64217d213caf
│                        │      │                   b51cff338f45 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:47:56.993Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-46600 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5942 
│                        │      ├ PkgID           : golang.org/x/net@v0.40.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.40.0 
│                        │      │                  ╰ UID : b8870a94f706b324 
│                        │      ├ InstalledVersion: v0.40.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:be71bbb21c265a53badd340f252ddb49c70ad7bf3a3d726e9573
│                        │      │                   c090c7a35005 
│                        │      ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic in
│                        │      │                   golang.org/x/net/dns/dnsmessage 
│                        │      ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a parameter value overflows the message buffer. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ╰ References       ╭ [0]: https://go.dev/cl/786345 
│                        │                         ├ [1]: https://go.dev/issue/79795 
│                        │                         ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-39824 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5024 
│                        │      ├ PkgID           : golang.org/x/sys@v0.33.0 
│                        │      ├ PkgName         : golang.org/x/sys 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/sys@v0.33.0 
│                        │      │                  ╰ UID : a350d4cc028089d4 
│                        │      ├ InstalledVersion: v0.33.0 
│                        │      ├ FixedVersion    : 0.44.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39824 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:581c2a7adb2278db3cbf0d04b9a67e9bcbd62c6bafb54d6596c5
│                        │      │                   eebf23c6dd31 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:42:38.62Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-39822 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │      ├ PkgID           : stdlib@v1.26.4 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                        │      │                  ╰ UID : 364846ec8fe81bdc 
│                        │      ├ InstalledVersion: v1.26.4 
│                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:9445b2a6a0d4dbc1cb2574bbd12f502cf4a64153f47c47d7f8e5
│                        │      │                   f253e4314a73 
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
│                               ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                               │                  │         197d9e39c5494d4581e40 
│                               │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                               │                            df117adb7086d939b6bf5 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:76904827bd86823522b4ea3e18214089af10f229737743257787
│                               │                   e185d30db5b8 
│                               ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure
│                               │                   in Encrypted Client Hello 
│                               ├ Description     : Handshakes which used Encrypted Client Hello could be
│                               │                   de-anonymized by a passive network observer due to a
│                               │                   disclosure of pre-shared key identities in the unencrypted
│                               │                   client hello. 
│                               ├ Severity        : MEDIUM 
│                               ├ CweIDs           ─ [0]: CWE-201 
│                               ├ VendorSeverity   ╭ bitnami: 2 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:f1dc521b590c7b50b1595a9095f565d34b20ee5204a102d1a930c
│                        │     │                   729308f129e 
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
│                              ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                              │                  │         97d9e39c5494d4581e40 
│                              │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                              │                            f117adb7086d939b6bf5 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:479ad9142113c080fe366e770ddfd5a3601595eb08f3b94c3eb26
│                              │                   2075e171e93 
│                              ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic in
│                              │                   golang.org/x/net/dns/dnsmessage 
│                              ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                              │                   of a parameter value overflows the message buffer. 
│                              ├ Severity        : UNKNOWN 
│                              ╰ References       ╭ [0]: https://go.dev/cl/786345 
│                                                 ├ [1]: https://go.dev/issue/79795 
│                                                 ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
├ [10] ╭ Target         : usr/libexec/docker/cli-plugins/docker-buildx 
│      ├ Class          : lang-pkgs 
│      ├ Type           : gobinary 
│      ├ Packages        
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-53488 
│                        │      ├ VendorIDs        ─ [0]: GHSA-xhf5-7wjv-pqxp 
│                        │      ├ PkgID           : github.com/containerd/containerd/v2@v2.2.4 
│                        │      ├ PkgName         : github.com/containerd/containerd/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.4 
│                        │      │                  ╰ UID : fd31818d2144dd7 
│                        │      ├ InstalledVersion: v2.2.4 
│                        │      ├ FixedVersion    : 2.0.10, 2.1.9, 2.2.5, 2.3.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53488 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:f2aa25b031e6eddcb942d816e6b1019b4f6abd76cfd31093c477
│                        │      │                   d5daeaea0064 
│                        │      ├ Title           : github.com/containerd/containerd: containerd: Host-root
│                        │      │                   command execution via unvalidated image config labels in
│                        │      │                   CRI plugin 
│                        │      ├ Description     : containerd is an open-source container runtime. In versions
│                        │      │                    prior to 1.7.33, 2.3.2, 2.2.5, 2.1.9, and 2.0.10 the CRI
│                        │      │                   plugin propagates labels from an image config (LABEL
│                        │      │                   instruction in Dockerfile) to a container without
│                        │      │                   validation. This may result in executing an arbitrary
│                        │      │                   command on the host, via a plugin that consumes container
│                        │      │                   labels for some operations. This issue has been fixed in
│                        │      │                   versions 1.7.33, 2.3.2, 2.2.5, 2.1.9, and 2.0.10. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-20 
│                        │      ├ VendorSeverity   ╭ amazon      : 3 
│                        │      │                  ├ azure       : 3 
│                        │      │                  ├ bottlerocket: 3 
│                        │      │                  ├ ghsa        : 3 
│                        │      │                  ├ nvd         : 3 
│                        │      │                  ├ redhat      : 3 
│                        │      │                  ╰ ubuntu      : 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:H
│                        │      │                  │        │            /VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 8.7 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 8.8 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 8.8 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-53488 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-53488 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.1/BRSA-rrw1j1iyz4iz.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/containerd/containerd 
│                        │      │                  ├ [4]: https://github.com/containerd/containerd/security/adv
│                        │      │                  │      isories/GHSA-xhf5-7wjv-pqxp 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-53488 
│                        │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-8471-1 
│                        │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8472-1 
│                        │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-8473-1 
│                        │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-53488 
│                        │      ├ PublishedDate   : 2026-07-01T02:17:00.467Z 
│                        │      ╰ LastModifiedDate: 2026-07-03T04:17:55.77Z 
│                        ├ [1]  ╭ VulnerabilityID : CVE-2026-53489 
│                        │      ├ VendorIDs        ─ [0]: GHSA-rgh6-rfwx-v388 
│                        │      ├ PkgID           : github.com/containerd/containerd/v2@v2.2.4 
│                        │      ├ PkgName         : github.com/containerd/containerd/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.4 
│                        │      │                  ╰ UID : fd31818d2144dd7 
│                        │      ├ InstalledVersion: v2.2.4 
│                        │      ├ FixedVersion    : 2.1.9, 2.2.5, 2.3.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53489 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:826f236372b342d94581d92984c7cd0362111c501bbd7d0de5a3
│                        │      │                   40c94f72a61a 
│                        │      ├ Title           : github.com/containerd/containerd: containerd: Arbitrary
│                        │      │                   host file read via symlink following in CRI checkpoint
│                        │      │                   restore 
│                        │      ├ Description     : containerd is an open-source container runtime. Versions
│                        │      │                   prior to 2.3.2, 2.2.5 and 2.1.9 contain a bug where the CRI
│                        │      │                    plugin restores container.log from a checkpoint image
│                        │      │                   without validating a symlinked path. This could result in
│                        │      │                   reading an arbitrary file on the host via kubectl logs.
│                        │      │                   This issue has been fixed in versions 2.3.2, 2.2.5 and
│                        │      │                   2.1.9. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-61 
│                        │      ├ VendorSeverity   ╭ amazon      : 3 
│                        │      │                  ├ azure       : 2 
│                        │      │                  ├ bottlerocket: 2 
│                        │      │                  ├ ghsa        : 3 
│                        │      │                  ├ nvd         : 2 
│                        │      │                  ├ redhat      : 3 
│                        │      │                  ╰ ubuntu      : 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:H
│                        │      │                  │        │            /VI:N/VA:N/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 7.1 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:
│                        │      │                  │        │           N/A:N 
│                        │      │                  │        ╰ V3Score : 6.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:
│                        │      │                           │           N/A:N 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-53489 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-53489 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.1/BRSA-hg86gkmhd6vu.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/containerd/containerd 
│                        │      │                  ├ [4]: https://github.com/containerd/containerd/security/adv
│                        │      │                  │      isories/GHSA-rgh6-rfwx-v388 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-53489 
│                        │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-8472-1 
│                        │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8473-1 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-53489 
│                        │      ├ PublishedDate   : 2026-07-01T19:16:54.383Z 
│                        │      ╰ LastModifiedDate: 2026-07-02T19:33:12.85Z 
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-53492 
│                        │      ├ VendorIDs        ─ [0]: GHSA-33vj-92qq-66hc 
│                        │      ├ PkgID           : github.com/containerd/containerd/v2@v2.2.4 
│                        │      ├ PkgName         : github.com/containerd/containerd/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.4 
│                        │      │                  ╰ UID : fd31818d2144dd7 
│                        │      ├ InstalledVersion: v2.2.4 
│                        │      ├ FixedVersion    : 2.1.9, 2.2.5, 2.3.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-53492 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:bf93ed204102c5fb554694f7b34130f9dfabca9ab6b70919d5c1
│                        │      │                   e73c38d150ca 
│                        │      ├ Title           : github.com/containerd/containerd: containerd: Security
│                        │      │                   bypass via Container Device Interface (CDI) annotation
│                        │      │                   smuggling during checkpoint restoration. 
│                        │      ├ Description     : containerd is an open-source container runtime. In Versions
│                        │      │                    prior to 2.3.2, 2.2.5 and 2.1.9, the CRI implementation
│                        │      │                   improperly trusts Container Device Interface (CDI)
│                        │      │                   annotations found within untrusted checkpoint image
│                        │      │                   metadata during container restoration. When restoring a
│                        │      │                   container from a checkpoint, containerd preserves
│                        │      │                   CDI-related annotations from the checkpoint archive rather
│                        │      │                   than relying solely on the pod's create-time specification.
│                        │      │                    This allows a user with pod creation permissions to bypass
│                        │      │                    standard Kubernetes resource allocation and device plugin
│                        │      │                   enforcement, injecting arbitrary CDI edits (such as device
│                        │      │                   nodes and host mounts) into the restored container.
│                        │      │                   Successful exploitation requires that the node has CDI
│                        │      │                   enabled and contains a matching host CDI specification for
│                        │      │                   the requested device; environments where CDI is disabled or
│                        │      │                    lacking sensitive device specifications are not affected.
│                        │      │                   This issue has been fixed in versions 2.3.2, 2.2.5 and
│                        │      │                   2.1.9. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ╭ [0]: CWE-20 
│                        │      │                  ╰ [1]: CWE-863 
│                        │      ├ VendorSeverity   ╭ amazon      : 3 
│                        │      │                  ├ azure       : 2 
│                        │      │                  ├ bottlerocket: 2 
│                        │      │                  ├ ghsa        : 3 
│                        │      │                  ├ nvd         : 4 
│                        │      │                  ├ redhat      : 3 
│                        │      │                  ╰ ubuntu      : 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:N/PR:L/UI:N/VC:N
│                        │      │                  │        │            /VI:H/VA:N/SC:H/SI:H/SA:N 
│                        │      │                  │        ╰ V40Score : 8.4 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:
│                        │      │                  │        │           H/A:N 
│                        │      │                  │        ╰ V3Score : 9.6 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:C/C:H/I:
│                        │      │                           │           H/A:N 
│                        │      │                           ╰ V3Score : 8.2 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-53492 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-53492 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.1/BRSA-rsj9m8ifmjes.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/containerd/containerd 
│                        │      │                  ├ [4]: https://github.com/containerd/containerd/security/adv
│                        │      │                  │      isories/GHSA-33vj-92qq-66hc 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-53492 
│                        │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-8472-1 
│                        │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8473-1 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-53492 
│                        │      ├ PublishedDate   : 2026-07-01T19:16:54.51Z 
│                        │      ╰ LastModifiedDate: 2026-07-02T19:33:00.93Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-47262 
│                        │      ├ VendorIDs        ─ [0]: GHSA-jpcc-p29g-p8mq 
│                        │      ├ PkgID           : github.com/containerd/containerd/v2@v2.2.4 
│                        │      ├ PkgName         : github.com/containerd/containerd/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.4 
│                        │      │                  ╰ UID : fd31818d2144dd7 
│                        │      ├ InstalledVersion: v2.2.4 
│                        │      ├ FixedVersion    : 2.0.10, 2.1.9, 2.2.5, 2.3.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-47262 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:78597bbe975b84db329eafde7aa3251be30f875f17638e71482b
│                        │      │                   967561a8968c 
│                        │      ├ Title           : github.com/containerd/containerd: containerd: Denial of
│                        │      │                   Service via maliciously crafted image leading to unbounded
│                        │      │                   group parsing 
│                        │      ├ Description     : containerd is an open-source container runtime. Versions
│                        │      │                   prior to 1.7.33, 2.0.10, 2.1.9, 2.2.5 and 2.3.2, contain a
│                        │      │                   vulnerability that allows a maliciously crafted image to
│                        │      │                   cause a Denial of Service (DoS) condition. When creating a
│                        │      │                   container from this image, memory exhaustion occurs,
│                        │      │                   leading to an Out Of Memory (OOM) kill of the containerd
│                        │      │                   process. This renders the container runtime API unavailable
│                        │      │                    and can disrupt clients such as the Docker Engine or
│                        │      │                   Kubernetes control-plane components. This issue has been
│                        │      │                   fixed in versions 1.7.33, 2.0.10, 2.1.9, 2.2.5 and 2.3.2.[
│                        │      │                   m 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-400 
│                        │      ├ VendorSeverity   ╭ amazon      : 3 
│                        │      │                  ├ azure       : 2 
│                        │      │                  ├ bottlerocket: 2 
│                        │      │                  ├ ghsa        : 2 
│                        │      │                  ├ nvd         : 2 
│                        │      │                  ├ redhat      : 2 
│                        │      │                  ╰ ubuntu      : 2 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:L/AT:N/PR:N/UI:N/VC:N
│                        │      │                  │        │            /VI:N/VA:H/SC:N/SI:N/SA:N 
│                        │      │                  │        ╰ V40Score : 6.9 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:
│                        │      │                  │        │           N/A:H 
│                        │      │                  │        ╰ V3Score : 5.5 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:
│                        │      │                           │           N/A:H 
│                        │      │                           ╰ V3Score : 6.5 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-47262 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-47262 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.1/BRSA-fjsigcujf6oz.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/containerd/containerd 
│                        │      │                  ├ [4]: https://github.com/containerd/containerd/security/adv
│                        │      │                  │      isories/GHSA-jpcc-p29g-p8mq 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-47262 
│                        │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-8471-1 
│                        │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8472-1 
│                        │      │                  ├ [8]: https://ubuntu.com/security/notices/USN-8473-1 
│                        │      │                  ╰ [9]: https://www.cve.org/CVERecord?id=CVE-2026-47262 
│                        │      ├ PublishedDate   : 2026-07-01T19:16:52.097Z 
│                        │      ╰ LastModifiedDate: 2026-07-02T19:40:45.49Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2026-50195 
│                        │      ├ VendorIDs        ─ [0]: GHSA-cvxm-645q-p574 
│                        │      ├ PkgID           : github.com/containerd/containerd/v2@v2.2.4 
│                        │      ├ PkgName         : github.com/containerd/containerd/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.4 
│                        │      │                  ╰ UID : fd31818d2144dd7 
│                        │      ├ InstalledVersion: v2.2.4 
│                        │      ├ FixedVersion    : 2.1.9, 2.2.5, 2.3.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-50195 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:565da0b62b74ef0da09d30df7bc3791aae73d3c0c13b85d2b1e8
│                        │      │                   cc214fd46d9d 
│                        │      ├ Title           : github.com/containerd/containerd: containerd: Arbitrary
│                        │      │                   code execution via CRI checkpoint image tag poisoning 
│                        │      ├ Description     : containerd is an open-source container runtime. Versions
│                        │      │                   prior to 2.3.2, 2.2.5 and 2.1.9 contain a vulnerability in
│                        │      │                   the CRI checkpoint import process where it fails to
│                        │      │                   validate the image references specified within a checkpoint
│                        │      │                    image's configuration. An attacker with permissions to
│                        │      │                   create pods can use a crafted checkpoint image to force
│                        │      │                   containerd to pull a malicious image and assign it an
│                        │      │                   arbitrary local tag, thereby poisoning the node's local
│                        │      │                   image cache. Subsequently, if other pods on the same node
│                        │      │                   attempt to use the poisoned tag with an IfNotPresent (or
│                        │      │                   Never) pull policy, they will unknowingly execute the
│                        │      │                   attacker's malicious image instead of the legitimate one.
│                        │      │                   This can lead to a compromise of the affected pods,
│                        │      │                   allowing the attacker to execute arbitrary code under the
│                        │      │                   victim pod's identity. This issue has been fixed in
│                        │      │                   versions 2.3.2, 2.2.5 and 2.1.9. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ╭ [0]: CWE-345 
│                        │      │                  ╰ [1]: CWE-829 
│                        │      ├ VendorSeverity   ╭ amazon      : 3 
│                        │      │                  ├ azure       : 2 
│                        │      │                  ├ bottlerocket: 3 
│                        │      │                  ├ ghsa        : 2 
│                        │      │                  ├ nvd         : 4 
│                        │      │                  ├ redhat      : 2 
│                        │      │                  ╰ ubuntu      : 3 
│                        │      ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:N/AC:L/AT:P/PR:L/UI:N/VC:N
│                        │      │                  │        │            /VI:L/VA:N/SC:H/SI:H/SA:L 
│                        │      │                  │        ╰ V40Score : 5.6 
│                        │      │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:C/C:H/I:
│                        │      │                  │        │           H/A:H 
│                        │      │                  │        ╰ V3Score : 9.9 
│                        │      │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:H/UI:N/S:U/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 6.7 
│                        │      ├ References       ╭ [0]: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-202
│                        │      │                  │      6-50195 
│                        │      │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-50195 
│                        │      │                  ├ [2]: https://github.com/bottlerocket-os/bottlerocket-core-
│                        │      │                  │      kit/blob/develop/advisories/14.5.1/BRSA-rvxerctzzv8k.
│                        │      │                  │      toml 
│                        │      │                  ├ [3]: https://github.com/containerd/containerd 
│                        │      │                  ├ [4]: https://github.com/containerd/containerd/security/adv
│                        │      │                  │      isories/GHSA-cvxm-645q-p574 
│                        │      │                  ├ [5]: https://nvd.nist.gov/vuln/detail/CVE-2026-50195 
│                        │      │                  ├ [6]: https://ubuntu.com/security/notices/USN-8472-1 
│                        │      │                  ├ [7]: https://ubuntu.com/security/notices/USN-8473-1 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-50195 
│                        │      ├ PublishedDate   : 2026-07-01T19:16:53.333Z 
│                        │      ╰ LastModifiedDate: 2026-07-02T19:43:59.417Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-34040 
│                        │      ├ VendorIDs        ─ [0]: GHSA-x744-4wpc-v9h2 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : ff7f1d4ae645a198 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ FixedVersion    : 29.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:925202e78a26b5b52339e68c8faf010a970fbb64db66432ea44d
│                        │      │                   af2cdbfb37d2 
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
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-41567 
│                        │      ├ VendorIDs        ─ [0]: GHSA-x86f-5xw2-fm2r 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : ff7f1d4ae645a198 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:ea6bbf40c95e91ad7b140a95a6e104c7abc37f12040fe3ee0db1
│                        │      │                   5faf67717dc3 
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
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:37387 
│                        │      │                  ├ [1]: https://access.redhat.com/errata/RHSA-2026:41030 
│                        │      │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │      │                  ├ [3]: https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │      │                  ├ [4]: https://github.com/moby/moby 
│                        │      │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -x86f-5xw2-fm2r 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │      │                  ├ [7]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │      │                  │      026/cve-2026-41567.json 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │      ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │      ╰ LastModifiedDate: 2026-07-17T13:18:39.403Z 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-42306 
│                        │      ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : ff7f1d4ae645a198 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:169bb0f416eff22193bc6c836241449089d0536f3aabae31b376
│                        │      │                   29e83c937e64 
│                        │      ├ Title           : Moby is an open source container framework. In Docker
│                        │      │                   Engine prior to  ... 
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
│                        │      │                  ╰ photon: 3 
│                        │      ├ CVSS             ╭ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/
│                        │      │                  │      │           A:H 
│                        │      │                  │      ╰ V3Score : 7.2 
│                        │      │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7.2 
│                        │      ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │      │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -rg2x-37c3-w2rh 
│                        │      │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
│                        │      ├ PublishedDate   : 2026-06-12T19:16:27.49Z 
│                        │      ╰ LastModifiedDate: 2026-06-17T10:47:39.96Z 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-33997 
│                        │      ├ VendorIDs        ─ [0]: GHSA-pxq6-2prw-chj9 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : ff7f1d4ae645a198 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ FixedVersion    : 29.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:c1fc84e7f81fc3e6d59067ffed2ba5b9f03de3da367abc098b63
│                        │      │                   c74762a9fae8 
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
│                        │      ╰ LastModifiedDate: 2026-07-15T02:20:27.623Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-41568 
│                        │      ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : ff7f1d4ae645a198 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:b64df78b4f09edce95af477f291d5515a1e0a4c536be11208a3c
│                        │      │                   6af340684d34 
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
│                        ├ [10] ╭ VulnerabilityID : GO-2026-5932 
│                        │      ├ PkgID           : golang.org/x/crypto@v0.52.0 
│                        │      ├ PkgName         : golang.org/x/crypto 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/crypto@v0.52.0 
│                        │      │                  ╰ UID : 563ca7eceba217c0 
│                        │      ├ InstalledVersion: v0.52.0 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:bdc470fbb55c434163a3df2604dc003e9022df3fe3a510177ea9
│                        │      │                   086613926f23 
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
│                        │      ╰ References       ╭ [0]: https://go.dev/issue/44226 
│                        │                         ╰ [1]: https://pkg.go.dev/vuln/GO-2026-5932 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-46600 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5942 
│                        │      ├ PkgID           : golang.org/x/net@v0.55.0 
│                        │      ├ PkgName         : golang.org/x/net 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/net@v0.55.0 
│                        │      │                  ╰ UID : 8eb6173d4795166b 
│                        │      ├ InstalledVersion: v0.55.0 
│                        │      ├ FixedVersion    : 0.56.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:4e2efbbef0d26b35ed7dfc9314e4c2e526bc20a99e7b997eef6d
│                        │      │                   317b20301a02 
│                        │      ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic in
│                        │      │                   golang.org/x/net/dns/dnsmessage 
│                        │      ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a parameter value overflows the message buffer. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ╰ References       ╭ [0]: https://go.dev/cl/786345 
│                        │                         ├ [1]: https://go.dev/issue/79795 
│                        │                         ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-56852 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5970 
│                        │      ├ PkgID           : golang.org/x/text@v0.37.0 
│                        │      ├ PkgName         : golang.org/x/text 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.37.0 
│                        │      │                  ╰ UID : ee569b8b94f22fe6 
│                        │      ├ InstalledVersion: v0.37.0 
│                        │      ├ FixedVersion    : 0.39.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:71ee092a7cbbf9ac973c9cf8e8245521bcb38fd9f3805b0e6ac8
│                        │      │                   c02868a44169 
│                        │      ├ Title           : Infinite loop on invalid input in golang.org/x/text 
│                        │      ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │      │                   containing invalid UTF-8 bytes. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ╰ References       ╭ [0]: https://go.dev/cl/794100 
│                        │                         ├ [1]: https://go.dev/issue/80142 
│                        │                         ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5970 
│                        ├ [13] ╭ VulnerabilityID : CVE-2026-39822 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │      ├ PkgID           : stdlib@v1.26.4 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                        │      │                  ╰ UID : 54c6f957cbb60c26 
│                        │      ├ InstalledVersion: v1.26.4 
│                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:45b81c0e25d9f430bba087874c2b38a51ffa379d505606f17ffe
│                        │      │                   bcc375aa13d5 
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
│                        ╰ [14] ╭ VulnerabilityID : CVE-2026-42505 
│                               ├ VendorIDs        ─ [0]: GO-2026-5856 
│                               ├ PkgID           : stdlib@v1.26.4 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                               │                  ╰ UID : 54c6f957cbb60c26 
│                               ├ InstalledVersion: v1.26.4 
│                               ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                               │                  │         197d9e39c5494d4581e40 
│                               │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                               │                            df117adb7086d939b6bf5 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:64ed46805fb525eb4608c2ad18f32308a9edb95ee876fa763c24
│                               │                   55f6046e9046 
│                               ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure
│                               │                   in Encrypted Client Hello 
│                               ├ Description     : Handshakes which used Encrypted Client Hello could be
│                               │                   de-anonymized by a passive network observer due to a
│                               │                   disclosure of pre-shared key identities in the unencrypted
│                               │                   client hello. 
│                               ├ Severity        : MEDIUM 
│                               ├ CweIDs           ─ [0]: CWE-201 
│                               ├ VendorSeverity   ╭ bitnami: 2 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:5fc19c03ef0126cc8b61ac387acace69bfb53cc1d34b83d541c41
│                        │     │                   1138c799f84 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:bf0745fd9318d4b8ee3c2da0a729168c5e0bb089a49505ba2686c
│                        │     │                   ebcdebeb6be 
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
│                        │     ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:37387 
│                        │     │                  ├ [1]: https://access.redhat.com/errata/RHSA-2026:41030 
│                        │     │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │     │                  ├ [3]: https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │     │                  ├ [4]: https://github.com/moby/moby 
│                        │     │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      x86f-5xw2-fm2r 
│                        │     │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │     │                  ├ [7]: https://security.access.redhat.com/data/csaf/v2/vex/20
│                        │     │                  │      26/cve-2026-41567.json 
│                        │     │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │     ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │     ╰ LastModifiedDate: 2026-07-17T13:18:39.403Z 
│                        ├ [2] ╭ VulnerabilityID : CVE-2026-42306 
│                        │     ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:97b80857190a9a523e860f2301a3a79af289ad1f58fdf4f47d615
│                        │     │                   0e24f708212 
│                        │     ├ Title           : Moby is an open source container framework. In Docker Engine
│                        │     │                    prior to  ... 
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
│                        │     │                  ╰ photon: 3 
│                        │     ├ CVSS             ╭ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/A:H 
│                        │     │                  │      ╰ V3Score : 7.2 
│                        │     │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/A:H 
│                        │     │                         ╰ V3Score : 7.2 
│                        │     ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │     │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      rg2x-37c3-w2rh 
│                        │     │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:62f6f8cf59a4fc4f35194ec04a0e4c89898f7ee8a7a2eaf949043
│                        │     │                   7106d6b6bac 
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
│                        │     ╰ LastModifiedDate: 2026-07-15T02:20:27.623Z 
│                        ├ [4] ╭ VulnerabilityID : CVE-2026-41568 
│                        │     ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │     ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │     ├ PkgName         : github.com/docker/docker 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincompa
│                        │     │                  │       tible 
│                        │     │                  ╰ UID : 400928cba457dac1 
│                        │     ├ InstalledVersion: v28.5.2+incompatible 
│                        │     ├ Status          : affected 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d84d2c97917cde5d7904c79430f6156275ff990e3a90b6e01cc0d
│                        │     │                   cb8c86a4fc6 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:a19592259f7dcc07dc73bb0dcc3c40959104aeb20d6e4b4d46bde
│                        │     │                   70f6e5c024a 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:2d816b8bcf52e393a9d08d5b81a49ad137e049de950514c535046
│                        │     │                   552b484f94b 
│                        │     ├ Title           : Infinite loop on invalid input in golang.org/x/text 
│                        │     ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │     │                   containing invalid UTF-8 bytes. 
│                        │     ├ Severity        : UNKNOWN 
│                        │     ╰ References       ╭ [0]: https://go.dev/cl/794100 
│                        │                        ├ [1]: https://go.dev/issue/80142 
│                        │                        ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5970 
│                        ├ [7] ╭ VulnerabilityID : CVE-2026-39822 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │     ├ PkgID           : stdlib@v1.26.4 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                        │     │                  ╰ UID : 7ea3df536be71e1b 
│                        │     ├ InstalledVersion: v1.26.4 
│                        │     ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:3233deda178ef213c37f84da04498ff884661d1623b3fb4c2ce17
│                        │     │                   8d9f1848f86 
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
│                        ╰ [8] ╭ VulnerabilityID : CVE-2026-42505 
│                              ├ VendorIDs        ─ [0]: GO-2026-5856 
│                              ├ PkgID           : stdlib@v1.26.4 
│                              ├ PkgName         : stdlib 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.4 
│                              │                  ╰ UID : 7ea3df536be71e1b 
│                              ├ InstalledVersion: v1.26.4 
│                              ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                              │                  │         97d9e39c5494d4581e40 
│                              │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                              │                            f117adb7086d939b6bf5 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:a6dadd887ac79ca44178c86c0bec258caf3973f937c6ad8f22094
│                              │                   ac289ab5b17 
│                              ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure in
│                              │                    Encrypted Client Hello 
│                              ├ Description     : Handshakes which used Encrypted Client Hello could be
│                              │                   de-anonymized by a passive network observer due to a
│                              │                   disclosure of pre-shared key identities in the unencrypted
│                              │                   client hello. 
│                              ├ Severity        : MEDIUM 
│                              ├ CweIDs           ─ [0]: CWE-201 
│                              ├ VendorSeverity   ╭ bitnami: 2 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:11701312e92c9badf91d0153dcbd8343aebcfe3ee02f1fc2acfad
│                        │     │                   0e41d7414ad 
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
│                        │     ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                        │     │                  │         97d9e39c5494d4581e40 
│                        │     │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                        │     │                            f117adb7086d939b6bf5 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:7804f25fd2919ceebf1794424d1bcffac8dbafecd40fb294c83a3
│                        │     │                   54582d41bbb 
│                        │     ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic in
│                        │     │                   golang.org/x/net/dns/dnsmessage 
│                        │     ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │     │                   of a parameter value overflows the message buffer. 
│                        │     ├ Severity        : UNKNOWN 
│                        │     ╰ References       ╭ [0]: https://go.dev/cl/786345 
│                        │                        ├ [1]: https://go.dev/issue/79795 
│                        │                        ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        ╰ [2] ╭ VulnerabilityID : CVE-2026-56852 
│                              ├ VendorIDs        ─ [0]: GO-2026-5970 
│                              ├ PkgID           : golang.org/x/text@v0.38.0 
│                              ├ PkgName         : golang.org/x/text 
│                              ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.38.0 
│                              │                  ╰ UID : 23d84dcd6ab5ac00 
│                              ├ InstalledVersion: v0.38.0 
│                              ├ FixedVersion    : 0.39.0 
│                              ├ Status          : fixed 
│                              ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a1
│                              │                  │         97d9e39c5494d4581e40 
│                              │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561d
│                              │                            f117adb7086d939b6bf5 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:a636e659f517b52340af85d281e168c5d234bdcef997fdbda7294
│                              │                   86516572019 
│                              ├ Title           : Infinite loop on invalid input in golang.org/x/text 
│                              ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                              │                   containing invalid UTF-8 bytes. 
│                              ├ Severity        : UNKNOWN 
│                              ╰ References       ╭ [0]: https://go.dev/cl/794100 
│                                                 ├ [1]: https://go.dev/issue/80142 
│                                                 ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5970 
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
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-15558 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:cc1f6482ce3bc4b52272ac5f03b57beb362d06ec8a0b8a171fb5
│                        │      │                   76cd8e828993 
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
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:24a6a35f541dd9cb18b6e78a01bc96a7f44d009173149fcddfd5
│                        │      │                   d755532b5850 
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
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:71504f211d44bbcee63ace06328d96172b007acd7cd67737a1b2
│                        │      │                   6ba570865ae1 
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
│                        │      ├ References       ╭ [0]: https://access.redhat.com/errata/RHSA-2026:37387 
│                        │      │                  ├ [1]: https://access.redhat.com/errata/RHSA-2026:41030 
│                        │      │                  ├ [2]: https://access.redhat.com/security/cve/CVE-2026-41567 
│                        │      │                  ├ [3]: https://bugzilla.redhat.com/show_bug.cgi?id=2485356 
│                        │      │                  ├ [4]: https://github.com/moby/moby 
│                        │      │                  ├ [5]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -x86f-5xw2-fm2r 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
│                        │      │                  ├ [7]: https://security.access.redhat.com/data/csaf/v2/vex/2
│                        │      │                  │      026/cve-2026-41567.json 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-41567 
│                        │      ├ PublishedDate   : 2026-06-05T02:17:13.817Z 
│                        │      ╰ LastModifiedDate: 2026-07-17T13:18:39.403Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-42306 
│                        │      ├ VendorIDs        ─ [0]: GHSA-rg2x-37c3-w2rh 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:a1a765cf0eb8b7f639928783ab83f04942c072dbd48c95784bde
│                        │      │                   9b8bc5250882 
│                        │      ├ Title           : Moby is an open source container framework. In Docker
│                        │      │                   Engine prior to  ... 
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
│                        │      │                  ╰ photon: 3 
│                        │      ├ CVSS             ╭ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/
│                        │      │                  │      │           A:H 
│                        │      │                  │      ╰ V3Score : 7.2 
│                        │      │                  ╰ nvd  ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7.2 
│                        │      ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │      │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -rg2x-37c3-w2rh 
│                        │      │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
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
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:350efc232236b1cf34e4a25bbf57e62ec5cdb955c4ccb943a2aa
│                        │      │                   491853e81d39 
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
│                        │      ╰ LastModifiedDate: 2026-07-15T02:20:27.623Z 
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-41568 
│                        │      ├ VendorIDs        ─ [0]: GHSA-vp62-88p7-qqf5 
│                        │      ├ PkgID           : github.com/docker/docker@v28.5.2+incompatible 
│                        │      ├ PkgName         : github.com/docker/docker 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/docker/docker@v28.5.2%2Bincomp
│                        │      │                  │       atible 
│                        │      │                  ╰ UID : 92f0c95daedf9834 
│                        │      ├ InstalledVersion: v28.5.2+incompatible 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:979c4b6703d4e7b7aa74f16e2a23dcb104cdf0214d660523a83d
│                        │      │                   31518fcb3cad 
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
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46600 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:5f2d162434d52b3298a58628875dd463bf78cdb461d2cf7b765d
│                        │      │                   1e80d0b35f3f 
│                        │      ├ Title           : Parsing an invalid SVCB or HTTPS RR can panic in
│                        │      │                   golang.org/x/net/dns/dnsmessage 
│                        │      ├ Description     : Parsing an invalid SVCB or HTTPS RR can panic when the size
│                        │      │                    of a parameter value overflows the message buffer. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ╰ References       ╭ [0]: https://go.dev/cl/786345 
│                        │                         ├ [1]: https://go.dev/issue/79795 
│                        │                         ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5942 
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-56852 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5970 
│                        │      ├ PkgID           : golang.org/x/text@v0.37.0 
│                        │      ├ PkgName         : golang.org/x/text 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/golang.org/x/text@v0.37.0 
│                        │      │                  ╰ UID : 8481703a747ddd9e 
│                        │      ├ InstalledVersion: v0.37.0 
│                        │      ├ FixedVersion    : 0.39.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-56852 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:2c36d1f4e24139be1574787f7be0f702136e3361f1e3c2569aca
│                        │      │                   d93bc562db25 
│                        │      ├ Title           : Infinite loop on invalid input in golang.org/x/text 
│                        │      ├ Description     : A norm.Iter can enter an infinite loop when handling input
│                        │      │                   containing invalid UTF-8 bytes. 
│                        │      ├ Severity        : UNKNOWN 
│                        │      ╰ References       ╭ [0]: https://go.dev/cl/794100 
│                        │                         ├ [1]: https://go.dev/issue/80142 
│                        │                         ╰ [2]: https://pkg.go.dev/vuln/GO-2026-5970 
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-27145 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5037 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:93913ae6caa14c17741260d3c2b7fd802b6807f486ce54a61559
│                        │      │                   3b71ae1345d3 
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
│                        │      │                  ├ [2] : https://access.redhat.com/errata/RHSA-2026:29981 
│                        │      │                  ├ [3] : https://access.redhat.com/errata/RHSA-2026:33574 
│                        │      │                  ├ [4] : https://access.redhat.com/errata/RHSA-2026:34357 
│                        │      │                  ├ [5] : https://access.redhat.com/errata/RHSA-2026:34359 
│                        │      │                  ├ [6] : https://access.redhat.com/errata/RHSA-2026:35832 
│                        │      │                  ├ [7] : https://access.redhat.com/errata/RHSA-2026:36317 
│                        │      │                  ├ [8] : https://access.redhat.com/errata/RHSA-2026:36648 
│                        │      │                  ├ [9] : https://access.redhat.com/errata/RHSA-2026:36797 
│                        │      │                  ├ [10]: https://access.redhat.com/errata/RHSA-2026:38995 
│                        │      │                  ├ [11]: https://access.redhat.com/errata/RHSA-2026:39005 
│                        │      │                  ├ [12]: https://access.redhat.com/errata/RHSA-2026:39573 
│                        │      │                  ├ [13]: https://access.redhat.com/errata/RHSA-2026:39879 
│                        │      │                  ├ [14]: https://access.redhat.com/errata/RHSA-2026:41030 
│                        │      │                  ├ [15]: https://access.redhat.com/errata/RHSA-2026:41036 
│                        │      │                  ├ [16]: https://access.redhat.com/security/cve/CVE-2026-27145 
│                        │      │                  ├ [17]: https://bugzilla.redhat.com/2445356 
│                        │      │                  ├ [18]: https://bugzilla.redhat.com/2484207 
│                        │      │                  ├ [19]: https://bugzilla.redhat.com/show_bug.cgi?id=2445356 
│                        │      │                  ├ [20]: https://bugzilla.redhat.com/show_bug.cgi?id=2484207 
│                        │      │                  ├ [21]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-25679 
│                        │      │                  ├ [22]: https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-27145 
│                        │      │                  ├ [23]: https://errata.almalinux.org/9/ALSA-2026-36317.html 
│                        │      │                  ├ [24]: https://errata.rockylinux.org/RLSA-2026:36317 
│                        │      │                  ├ [25]: https://go.dev/cl/783621 
│                        │      │                  ├ [26]: https://go.dev/issue/79694 
│                        │      │                  ├ [27]: https://groups.google.com/g/golang-announce/c/tKs3rm
│                        │      │                  │       cBcKw 
│                        │      │                  ├ [28]: https://linux.oracle.com/cve/CVE-2026-27145.html 
│                        │      │                  ├ [29]: https://linux.oracle.com/errata/ELSA-2026-38995.html 
│                        │      │                  ├ [30]: https://nvd.nist.gov/vuln/detail/CVE-2026-27145 
│                        │      │                  ├ [31]: https://pkg.go.dev/vuln/GO-2026-5037 
│                        │      │                  ├ [32]: https://security.access.redhat.com/data/csaf/v2/vex/
│                        │      │                  │       2026/cve-2026-27145.json 
│                        │      │                  ╰ [33]: https://www.cve.org/CVERecord?id=CVE-2026-27145 
│                        │      ├ PublishedDate   : 2026-06-02T23:16:35.57Z 
│                        │      ╰ LastModifiedDate: 2026-07-17T13:18:10.947Z 
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-39822 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4970 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39822 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:cd8faa0542d329f506b05195cc4203c3f1077ee1348c8527805a
│                        │      │                   f6be2926039a 
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
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-42504 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0815b331c3f3304b7b62d9b1a5f31cf2fdc2a7293ddd32c9d7b2
│                        │      │                   687baac32126 
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
│                        │      ╰ LastModifiedDate: 2026-06-17T10:47:56.86Z 
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-42505 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5856 
│                        │      ├ PkgID           : stdlib@v1.26.3 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │      │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │      ├ InstalledVersion: v1.26.3 
│                        │      ├ FixedVersion    : 1.25.12, 1.26.5, 1.27.0-rc.2 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                        │      │                  │         197d9e39c5494d4581e40 
│                        │      │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                        │      │                            df117adb7086d939b6bf5 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42505 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:7cb662993c1b3565d765d71c6f7f899df9e32eb50c089e339371
│                        │      │                   5c2075a38b5d 
│                        │      ├ Title           : crypto/tls: golang: Go crypto/tls: Information disclosure
│                        │      │                   in Encrypted Client Hello 
│                        │      ├ Description     : Handshakes which used Encrypted Client Hello could be
│                        │      │                   de-anonymized by a passive network observer due to a
│                        │      │                   disclosure of pre-shared key identities in the unencrypted
│                        │      │                   client hello. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-201 
│                        │      ├ VendorSeverity   ╭ bitnami: 2 
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
│                        ╰ [12] ╭ VulnerabilityID : CVE-2026-42507 
│                               ├ VendorIDs        ─ [0]: GO-2026-5039 
│                               ├ PkgID           : stdlib@v1.26.3 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                               │                  ╰ UID : 3dcf59cf5482f2c5 
│                               ├ InstalledVersion: v1.26.3 
│                               ├ FixedVersion    : 1.25.11, 1.26.4 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:96f699030922861f53553074c8a6210954e2bd75c1a
│                               │                  │         197d9e39c5494d4581e40 
│                               │                  ╰ DiffID: sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561
│                               │                            df117adb7086d939b6bf5 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:89b315a987f1a8408624cc467671486fb1c12e18c5efaae151cf
│                               │                   28cee9e7b4a5 
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
│                               ╰ LastModifiedDate: 2026-06-17T10:47:57.137Z 
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
│                      ├ Layer     ╭ Digest   : sha256:96f699030922861f53553074c8a6210954e2bd75c1a197d9e39c5494
│                      │           │            d4581e40 
│                      │           ├ DiffID   : sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561df117adb7086d
│                      │           │            939b6bf5 
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
│                      ├ Layer     ╭ Digest   : sha256:96f699030922861f53553074c8a6210954e2bd75c1a197d9e39c5494
│                      │           │            d4581e40 
│                      │           ├ DiffID   : sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561df117adb7086d
│                      │           │            939b6bf5 
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
                       ├ Layer     ╭ Digest   : sha256:96f699030922861f53553074c8a6210954e2bd75c1a197d9e39c5494
                       │           │            d4581e40 
                       │           ├ DiffID   : sha256:fcd2c7fef86c2f43de5fcc8026ed4bdf99aae7dd561df117adb7086d
                       │           │            939b6bf5 
                       │           ╰ CreatedBy: COPY / / # buildkit 
                       ╰ Offset   : 36 
```
