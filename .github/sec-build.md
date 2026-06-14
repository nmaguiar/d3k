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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:fbf38c1447144657032deb783ca4f81952f877b6a504f70ea744
│                        │      │                   3a20ba323625 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6294404240d47aed16517f9740cf0e6531dcf59fa3ddf44bb3b1
│                        │      │                   4ac34b122e33 
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
│                        ├ [2]  ╭ VulnerabilityID : CVE-2026-33150 
│                        │      ├ PkgID           : fuse3@3.18.2-1 
│                        │      ├ PkgName         : fuse3 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/fuse3@3.18.2-1?arch=amd64&distro=ubun
│                        │      │                  │       tu-26.04 
│                        │      │                  ╰ UID : f3f6366bdceb0bc7 
│                        │      ├ InstalledVersion: 3.18.2-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33150 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b3478b425401fa31d0d1a21d7dce0de026cc2179591f454d0bad
│                        │      │                   388745575908 
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
│                        │      ├ CweIDs           ─ [0]: CWE-416 
│                        │      ├ VendorSeverity   ╭ redhat: 3 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 7.8 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33150 
│                        │      │                  ├ [1]: https://github.com/libfuse/libfuse/commit/49fcd891a58
│                        │      │                  │      f622c098e2ca67d66086f7b213836 
│                        │      │                  ├ [2]: https://github.com/libfuse/libfuse/releases/tag/fuse-
│                        │      │                  │      3.18.2 
│                        │      │                  ├ [3]: https://github.com/libfuse/libfuse/security/advisorie
│                        │      │                  │      s/GHSA-qxv7-xrc2-qmfx 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-33150 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-33150 
│                        │      ├ PublishedDate   : 2026-03-20T21:17:15.41Z 
│                        │      ╰ LastModifiedDate: 2026-03-23T19:16:14.717Z 
│                        ├ [3]  ╭ VulnerabilityID : CVE-2026-33179 
│                        │      ├ PkgID           : fuse3@3.18.2-1 
│                        │      ├ PkgName         : fuse3 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/fuse3@3.18.2-1?arch=amd64&distro=ubun
│                        │      │                  │       tu-26.04 
│                        │      │                  ╰ UID : f3f6366bdceb0bc7 
│                        │      ├ InstalledVersion: 3.18.2-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33179 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4b879059e288586995df83c575d70c8c3ac5ccb3ad005fac7a7c
│                        │      │                   0a903f6289bc 
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
│                        │      ├ VendorSeverity   ╭ redhat: 2 
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
│                        │      ╰ LastModifiedDate: 2026-03-27T21:20:47.88Z 
│                        ├ [4]  ╭ VulnerabilityID : CVE-2024-52005 
│                        │      ├ PkgID           : git@1:2.53.0-1ubuntu1 
│                        │      ├ PkgName         : git 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git@2.53.0-1ubuntu1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : a05c573a581e3d4e 
│                        │      ├ InstalledVersion: 1:2.53.0-1ubuntu1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:961cd8e3466f51ff79dfcff6a93df24fad3adcea7a98b171d101
│                        │      │                   2b22c1c84176 
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
│                        ├ [5]  ╭ VulnerabilityID : CVE-2024-52005 
│                        │      ├ PkgID           : git-man@1:2.53.0-1ubuntu1 
│                        │      ├ PkgName         : git-man 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/git-man@2.53.0-1ubuntu1?arch=all&dist
│                        │      │                  │       ro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : a19d1931460c0147 
│                        │      ├ InstalledVersion: 1:2.53.0-1ubuntu1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-52005 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:93c381703d13c4ac58d3f89ef226a8b2779acb43ebefbb14456e
│                        │      │                   a91669e4282f 
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
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libblkid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : f63a0a78e3cac3a3 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:bbdec897bd3282aadffd3b39ee8ee637f3c39e3b30992b360187
│                        │      │                   4bac372cdc28 
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
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libblkid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libblkid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libblkid1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : f63a0a78e3cac3a3 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:37eafc44222478dfd5f0e9326c090cc559be22eaba6b3fa63709
│                        │      │                   935b5745a2a3 
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
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-4046 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:cf7873a44f6f2f596a53a399325ea9ec02324e976324e8347e30
│                        │      │                   181a8e09a453 
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
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [9] : https://errata.almalinux.org/8/ALSA-2026-20587.html 
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
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-4437 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e6af6e26629069dce41251d2bb30599e7021ad3862c0d45241b6
│                        │      │                   92061592838d 
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
│                        ├ [10] ╭ VulnerabilityID : CVE-2026-4438 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3bc4c92a66e9de7a7358b0b0ab82a158d4af08879b57425bbeb0
│                        │      │                   eded5da30f8a 
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
│                        ├ [11] ╭ VulnerabilityID : CVE-2026-5435 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:cc8242191c0d7df43ae252e57e1588c8e65be556bac08075ef82
│                        │      │                   8c18d8020090 
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
│                        ├ [12] ╭ VulnerabilityID : CVE-2026-6238 
│                        │      ├ PkgID           : libc-bin@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-bin 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-bin@2.43-2ubuntu2?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : aa471766c29fe384 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:dba468984a3bb0ee5e2823432eda6e5f53d5e05635f3ea7dbf44
│                        │      │                   e7a8e3e75f74 
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
│                        ├ [13] ╭ VulnerabilityID : CVE-2026-4046 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d1d813be48ac25283b5565dd8da98bab9db48c4710bdb69a820a
│                        │      │                   06b567638a62 
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
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [9] : https://errata.almalinux.org/8/ALSA-2026-20587.html 
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
│                        ├ [14] ╭ VulnerabilityID : CVE-2026-4437 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:07feb3a4ba4f9195900323c3f54772f830f4c92cd00766fbd540
│                        │      │                   40d2def8feee 
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
│                        ├ [15] ╭ VulnerabilityID : CVE-2026-4438 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d14cedb1abb2ad5d559a7387c7296a72ae64226f52e8e86e6798
│                        │      │                   196bdef575d2 
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
│                        ├ [16] ╭ VulnerabilityID : CVE-2026-5435 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9f1699603810eacd8ecc4a3d9b00889c99fa7ecbac9de3824599
│                        │      │                   8fa34bbd2fcd 
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
│                        ├ [17] ╭ VulnerabilityID : CVE-2026-6238 
│                        │      ├ PkgID           : libc-gconv-modules-extra@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc-gconv-modules-extra 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc-gconv-modules-extra@2.43-2ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 229c678f3865c408 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:53d9f3975b494b2c105958cf7876851c19734e4b231586c702c6
│                        │      │                   b76dbfcbe661 
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
│                        ├ [18] ╭ VulnerabilityID : CVE-2026-4046 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4046 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4dd518912b421b78f073f18b0ce0912eec43f50420169609e0c0
│                        │      │                   1bbdf3066ec1 
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
│                        │      │                  ├ [3] : https://bugzilla.redhat.com/show_bug.cgi?id=2449777 
│                        │      │                  ├ [4] : https://bugzilla.redhat.com/show_bug.cgi?id=2449783 
│                        │      │                  ├ [5] : https://bugzilla.redhat.com/show_bug.cgi?id=2453117 
│                        │      │                  ├ [6] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4046 
│                        │      │                  ├ [7] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4437 
│                        │      │                  ├ [8] : https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2
│                        │      │                  │       026-4438 
│                        │      │                  ├ [9] : https://errata.almalinux.org/8/ALSA-2026-20587.html 
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
│                        ├ [19] ╭ VulnerabilityID : CVE-2026-4437 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4437 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9faf0b7363d8ff0774b114d466351c9f735e19b309266bdb9d16
│                        │      │                   709ba90b8a2b 
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
│                        ├ [20] ╭ VulnerabilityID : CVE-2026-4438 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-4438 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2a3cc2d44dc9013f51e6253fd09e7b16d70ee21eca88e0eabd0e
│                        │      │                   7a1c38e5b6e9 
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
│                        ├ [21] ╭ VulnerabilityID : CVE-2026-5435 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5435 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:9ab57e3ce8dd3705c24d09e3112c5217d7f3a1ad0ca5ed838f57
│                        │      │                   663f090de97f 
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
│                        ├ [22] ╭ VulnerabilityID : CVE-2026-6238 
│                        │      ├ PkgID           : libc6@2.43-2ubuntu2 
│                        │      ├ PkgName         : libc6 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libc6@2.43-2ubuntu2?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : a6167efe03e34488 
│                        │      ├ InstalledVersion: 2.43-2ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-6238 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:b3463f35eebc858b3cb3292e47fb935bdfe6837cf5cf4024c582
│                        │      │                   da0412ec543f 
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
│                        ├ [23] ╭ VulnerabilityID : CVE-2025-1352 
│                        │      ├ PkgID           : libelf1t64@0.194-4 
│                        │      ├ PkgName         : libelf1t64 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro=
│                        │      │                  │       ubuntu-26.04 
│                        │      │                  ╰ UID : 855cfee3bc864065 
│                        │      ├ InstalledVersion: 0.194-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:891747bfce12781828389ac85573efa9312b39006667562c8205
│                        │      │                   281dd1422fb1 
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
│                        ├ [24] ╭ VulnerabilityID : CVE-2025-1376 
│                        │      ├ PkgID           : libelf1t64@0.194-4 
│                        │      ├ PkgName         : libelf1t64 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libelf1t64@0.194-4?arch=amd64&distro=
│                        │      │                  │       ubuntu-26.04 
│                        │      │                  ╰ UID : 855cfee3bc864065 
│                        │      ├ InstalledVersion: 0.194-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-1376 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2e4f576a059896fa7f94ad5cbee91bd796496a7bdbf6dd8cf7de
│                        │      │                   060ad80804a0 
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
│                        ├ [25] ╭ VulnerabilityID : CVE-2025-66382 
│                        │      ├ PkgID           : libexpat1@2.7.4-1 
│                        │      ├ PkgName         : libexpat1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libexpat1@2.7.4-1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : c17b9d4b5a8b1286 
│                        │      ├ InstalledVersion: 2.7.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-66382 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:bc819d7fd5065d6a5634710d0af530d312393872e46757dadf76
│                        │      │                   8b0a2e12c547 
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
│                        ├ [26] ╭ VulnerabilityID : CVE-2026-33150 
│                        │      ├ PkgID           : libfuse3-4@3.18.2-1 
│                        │      ├ PkgName         : libfuse3-4 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libfuse3-4@3.18.2-1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : d36ae5a32a87c9ff 
│                        │      ├ InstalledVersion: 3.18.2-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33150 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6258f7498b66ce82cd11729297edb31d03bcd7d9093e8d492d7f
│                        │      │                   6bd4a5ed17c3 
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
│                        │      ├ CweIDs           ─ [0]: CWE-416 
│                        │      ├ VendorSeverity   ╭ redhat: 3 
│                        │      │                  ╰ ubuntu: 2 
│                        │      ├ CVSS             ─ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:
│                        │      │                           │           H/A:H 
│                        │      │                           ╰ V3Score : 7.8 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-33150 
│                        │      │                  ├ [1]: https://github.com/libfuse/libfuse/commit/49fcd891a58
│                        │      │                  │      f622c098e2ca67d66086f7b213836 
│                        │      │                  ├ [2]: https://github.com/libfuse/libfuse/releases/tag/fuse-
│                        │      │                  │      3.18.2 
│                        │      │                  ├ [3]: https://github.com/libfuse/libfuse/security/advisorie
│                        │      │                  │      s/GHSA-qxv7-xrc2-qmfx 
│                        │      │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-33150 
│                        │      │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-33150 
│                        │      ├ PublishedDate   : 2026-03-20T21:17:15.41Z 
│                        │      ╰ LastModifiedDate: 2026-03-23T19:16:14.717Z 
│                        ├ [27] ╭ VulnerabilityID : CVE-2026-33179 
│                        │      ├ PkgID           : libfuse3-4@3.18.2-1 
│                        │      ├ PkgName         : libfuse3-4 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libfuse3-4@3.18.2-1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : d36ae5a32a87c9ff 
│                        │      ├ InstalledVersion: 3.18.2-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33179 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:73d5c019430c991a976ef24a06d3e0ec2f1546eeb966633f8352
│                        │      │                   9aa7e0a33c48 
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
│                        │      ├ VendorSeverity   ╭ redhat: 2 
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
│                        │      ╰ LastModifiedDate: 2026-03-27T21:20:47.88Z 
│                        ├ [28] ╭ VulnerabilityID : CVE-2024-2236 
│                        │      ├ PkgID           : libgcrypt20@1.12.0-2ubuntu0.1 
│                        │      ├ PkgName         : libgcrypt20 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libgcrypt20@1.12.0-2ubuntu0.1?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : df31886cccfcce83 
│                        │      ├ InstalledVersion: 1.12.0-2ubuntu0.1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-2236 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:bd01bb24727cdf935925d42d745156323ea5abdab78fa8f3e908
│                        │      │                   55bc1f78b533 
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
│                        ├ [29] ╭ VulnerabilityID : CVE-2026-22185 
│                        │      ├ PkgID           : liblmdb0@0.9.31-1build2 
│                        │      ├ PkgName         : liblmdb0 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/liblmdb0@0.9.31-1build2?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04 
│                        │      │                  ╰ UID : c6bcbb633021c366 
│                        │      ├ InstalledVersion: 0.9.31-1build2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-22185 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:8ee6b34f8e8691a4f1fee130291b1957ddde955a4b1a42a87197
│                        │      │                   3bc786a2c8ec 
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
│                        ├ [30] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libmount1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ee0638a59a092c7e 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:46d79d5da12139dc27421d19c6bb16cd5d7e2f2f889fa3f2ba35
│                        │      │                   efca44f7f344 
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
│                        ├ [31] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libmount1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libmount1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libmount1@2.41.3-3ubuntu2?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ee0638a59a092c7e 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d8757dd99696c8bf9b66ca0bd42fc60dcdd0fba621996ad415ad
│                        │      │                   7267d1d1b60c 
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
│                        ├ [32] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libnss-systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : libnss-systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libnss-systemd@259.5-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 75467b2281c05291 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:88f20b9382ee0b3806bf61af53804b26b75c9c6f0209192dd3a7
│                        │      │                   753afcbac7b4 
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
│                        ├ [33] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libpam-systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : libpam-systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpam-systemd@259.5-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 4f72feeb7ea50bf 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:83a8be4898e6663bc42bbe208ddd71c079026ee0073b44826032
│                        │      │                   8f76ca9f8215 
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
│                        ├ [34] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14@3.14.4-1?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : 698bf98ba5451f67 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4859b714e35d6e53e57f542f2be0d4c4e9bf3a5afd3d08629482
│                        │      │                   0728d69c8000 
│                        │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                        │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                        │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                        │      │                    (a base class) and so does not use io.open_code() to read
│                        │      │                   the .pyc files. sys.audit handlers for this audit event
│                        │      │                   therefore do not fire. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-668 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
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
│                        ├ [35] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14-minimal@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14-minimal 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-minimal@3.14.4-1?arch=a
│                        │      │                  │       md64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : c0091a523a4a100d 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0da6a4adad8ab179b8a76ff4884eeeb76f124a8fc74eea37f39b
│                        │      │                   0c4b9e07ba66 
│                        │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                        │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                        │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                        │      │                    (a base class) and so does not use io.open_code() to read
│                        │      │                   the .pyc files. sys.audit handlers for this audit event
│                        │      │                   therefore do not fire. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-668 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
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
│                        ├ [36] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : libpython3.14-stdlib@3.14.4-1 
│                        │      ├ PkgName         : libpython3.14-stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libpython3.14-stdlib@3.14.4-1?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : d9cfb9637e1a0676 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:04610ca9ff440214ca91c1cf783a8c263c0321d22230c446d236
│                        │      │                   8e428d3e9cda 
│                        │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                        │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                        │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                        │      │                    (a base class) and so does not use io.open_code() to read
│                        │      │                   the .pyc files. sys.audit handlers for this audit event
│                        │      │                   therefore do not fire. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-668 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
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
│                        ├ [37] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ff5e7b67d2385233 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ffb23a0fbbdee5c3002ccf0ccb8003f98ea82951099bfe7ea52d
│                        │      │                   72ffce2c0ae2 
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
│                        │      ├ PkgID           : libsmartcols1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libsmartcols1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsmartcols1@2.41.3-3ubuntu2?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : ff5e7b67d2385233 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:537e565b5645b3646ca284ae9ba8cf53692acf987ffa0943f954
│                        │      │                   d1a29cd069f2 
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
│                        │      ├ PkgID           : libsubid5@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : libsubid5 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsubid5@4.17.4-2ubuntu3?arch=amd64&
│                        │      │                  │       distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : 2e6a9fef7087b138 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:6620eca7d216ee86994bbebf6105b9be9f4c34d35d3ee361fea7
│                        │      │                   e162df7f78c2 
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
│                        ├ [40] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libsystemd-shared@259.5-0ubuntu3 
│                        │      ├ PkgName         : libsystemd-shared 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd-shared@259.5-0ubuntu3?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : d851fa486c321371 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:98eceff991b58509f7f6a5b466b65686488b57d04fcfd6f99ed3
│                        │      │                   afd243fe7867 
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
│                        ├ [41] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libsystemd0@259.5-0ubuntu3 
│                        │      ├ PkgName         : libsystemd0 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libsystemd0@259.5-0ubuntu3?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 68ed9dc5cf416dae 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:47f1f6cb07171009d746acee82d1d4e36e3eb8f0647611c27137
│                        │      │                   61dc50dd7517 
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
│                        ├ [42] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : libudev1@259.5-0ubuntu3 
│                        │      ├ PkgName         : libudev1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libudev1@259.5-0ubuntu3?arch=amd64&di
│                        │      │                  │       stro=ubuntu-26.04 
│                        │      │                  ╰ UID : 419f3d2219f938db 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:650ced715443700cec7144bed72fd459177036b2fb9455ab8fc7
│                        │      │                   590766424d26 
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
│                        ├ [43] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 41d4afb2fde363cf 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:117bf544b0c214a354309a61ea45132327c13e67efbcf1508832
│                        │      │                   d114c6efb26b 
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
│                        ├ [44] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : libuuid1@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : libuuid1 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libuuid1@2.41.3-3ubuntu2?arch=amd64&d
│                        │      │                  │       istro=ubuntu-26.04 
│                        │      │                  ╰ UID : 41d4afb2fde363cf 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:90e9439275028c636e11469f0379d6d929d13207e56324ba1d42
│                        │      │                   2649c2f3c7c5 
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
│                        ├ [45] ╭ VulnerabilityID : CVE-2026-1757 
│                        │      ├ PkgID           : libxml2-16@2.15.2+dfsg-0.1 
│                        │      ├ PkgName         : libxml2-16 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/libxml2-16@2.15.2%2Bdfsg-0.1?arch=amd
│                        │      │                  │       64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 9bfe0fc72832625d 
│                        │      ├ InstalledVersion: 2.15.2+dfsg-0.1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-1757 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ccfd03440695b3251f252d8ecb5f70b27b451bb80d208c273f9e
│                        │      │                   197929cd8142 
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
│                        ├ [46] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e1bfbadc9113c00a 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f5dc38a7ede058846f0f25963b71d5f7354a6c14a8cd57ef95b7
│                        │      │                   8807673994ac 
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
│                        ├ [47] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : login@1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ PkgName         : login 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login@4.16.0-2%2Breally2.41.3-3ubuntu
│                        │      │                  │       2?arch=amd64&distro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e1bfbadc9113c00a 
│                        │      ├ InstalledVersion: 1:4.16.0-2+really2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0664f76c32e00253c838f17e9edb62a35a2d27a5e2d3f7bfe217
│                        │      │                   9a37e4963ba9 
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
│                        ├ [48] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : login.defs@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : login.defs 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/login.defs@4.17.4-2ubuntu3?arch=all&d
│                        │      │                  │       istro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : eaf648d5e4e975f7 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ded046cbd24c7aa11037bdc5705dd1725a9ae8d91fad449fd456
│                        │      │                   1beb9ab30912 
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
│                        ├ [49] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c0b9b7c9c8956d47e32cd24f2883b628ab3f2bb2873566c8d6de
│                        │      │                   2ec869cb1fc9 
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
│                        ├ [50] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : mount@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : mount 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/mount@2.41.3-3ubuntu2?arch=amd64&dist
│                        │      │                  │       ro=ubuntu-26.04 
│                        │      │                  ╰ UID : 98c6a5d7e9e110eb 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:5a5e4fb17289540debd3509f4d327f63be7d02f52002122853f1
│                        │      │                   e865dd9f16ad 
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
│                        ├ [51] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : passwd@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : passwd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/passwd@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : e6ebfac85406f0d5 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:64c133f0355e3abfe21b3231b536550f80078f4bdf2a9f50ca8b
│                        │      │                   1885b7af5a0d 
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
│                        ├ [52] ╭ VulnerabilityID : CVE-2018-6952 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : d95d6071755544be 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2018-6952 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:1bf4143a58951fccf9d13ee2868a198f751b13c129a80c663fad
│                        │      │                   fec91be7ba72 
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
│                        ├ [53] ╭ VulnerabilityID : CVE-2021-45261 
│                        │      ├ PkgID           : patch@2.8-2build1 
│                        │      ├ PkgName         : patch 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/patch@2.8-2build1?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : d95d6071755544be 
│                        │      ├ InstalledVersion: 2.8-2build1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-45261 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c14afe70d55a62ee6498b5af612a12502b64c0bdb1ef59e91236
│                        │      │                   e8fba7cef4b2 
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
│                        ├ [54] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : python3.14@3.14.4-1 
│                        │      ├ PkgName         : python3.14 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14@3.14.4-1?arch=amd64&distro
│                        │      │                  │       =ubuntu-26.04 
│                        │      │                  ╰ UID : 5c38e5558a798bb7 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ae9e72f34dc3fa04cb4586f94e1f0e91c3f8c4a8ab1d7ca6f2d1
│                        │      │                   7cf7d10ae569 
│                        │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                        │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                        │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                        │      │                    (a base class) and so does not use io.open_code() to read
│                        │      │                   the .pyc files. sys.audit handlers for this audit event
│                        │      │                   therefore do not fire. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-668 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
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
│                        ├ [55] ╭ VulnerabilityID : CVE-2026-2297 
│                        │      ├ PkgID           : python3.14-minimal@3.14.4-1 
│                        │      ├ PkgName         : python3.14-minimal 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/python3.14-minimal@3.14.4-1?arch=amd6
│                        │      │                  │       4&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : da8e2190347b7c6 
│                        │      ├ InstalledVersion: 3.14.4-1 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-2297 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:87aaf29bdaec77d80f6e560f52798018a0dd73d70c428fa2acf0
│                        │      │                   0ed25617b1a4 
│                        │      ├ Title           : cpython: CPython: Logging Bypass in Legacy .pyc File Handling 
│                        │      ├ Description     : The import hook in CPython that handles legacy *.pyc files
│                        │      │                   (SourcelessFileLoader) is incorrectly handled in FileLoader
│                        │      │                    (a base class) and so does not use io.open_code() to read
│                        │      │                   the .pyc files. sys.audit handlers for this audit event
│                        │      │                   therefore do not fire. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-668 
│                        │      ├ VendorSeverity   ╭ alma       : 3 
│                        │      │                  ├ amazon     : 2 
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
│                        ├ [56] ╭ VulnerabilityID : CVE-2026-35341 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35341 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0860950eedfa0f33ba71002225e214ff10ddf50a7d3319c08e12
│                        │      │                   75d5f8525c39 
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
│                        ├ [57] ╭ VulnerabilityID : CVE-2026-35344 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35344 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:87924befd1eb0a99d881b4efcdeea2b02b9680bcbf673b4cda97
│                        │      │                   f2129b6496df 
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
│                        ├ [58] ╭ VulnerabilityID : CVE-2026-35345 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35345 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2c75784cf5db7815531b3a2f7f91ae729e7fb1c351990513e512
│                        │      │                   6e34c3426d4e 
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
│                        ├ [59] ╭ VulnerabilityID : CVE-2026-35348 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35348 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:3b46231f41bb279d701cd22183aca591dd96ec2290747b020b7b
│                        │      │                   9ebc7dd7732e 
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
│                        ├ [60] ╭ VulnerabilityID : CVE-2026-35350 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35350 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d11f10d86339e58266da5990cfe9e5c26e1f046cb40a577b1270
│                        │      │                   912a3d041712 
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
│                        ├ [61] ╭ VulnerabilityID : CVE-2026-35351 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35351 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:524a18a613fc7bb9b01c45ba60c0a38c06fc3dc18d51af12d2b2
│                        │      │                   4045bdcce646 
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
│                        ├ [62] ╭ VulnerabilityID : CVE-2026-35352 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35352 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e186d01af7cba8f414b6947c3596103db682af48802fa0035651
│                        │      │                   a7f119fcac99 
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
│                        ├ [63] ╭ VulnerabilityID : CVE-2026-35354 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35354 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:bb12062d18531f81381260a1415ab2bca7df1f3904033806d9af
│                        │      │                   7ce6db0b8f4b 
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
│                        ├ [64] ╭ VulnerabilityID : CVE-2026-35357 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35357 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:442c8d6289dac31c7acca111c7d7d8529d818263971d99ab94a8
│                        │      │                   86c9e22f6e60 
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
│                        ├ [65] ╭ VulnerabilityID : CVE-2026-35359 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35359 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:76a42ed174fa7de7e328800ccb217f7c697b40b3ffe52ed2bf82
│                        │      │                   5de33d24c059 
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
│                        ├ [66] ╭ VulnerabilityID : CVE-2026-35360 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35360 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:eaa9b809a365f934c5d0db12e72a9b1aecb41716583a27a68854
│                        │      │                   e088b665a8ba 
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
│                        ├ [67] ╭ VulnerabilityID : CVE-2026-35363 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35363 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:f5d23ef186cf17ecbc0c77d2a283787f79b1d8696d65b39b02ad
│                        │      │                   a6a21a053ce4 
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
│                        ├ [68] ╭ VulnerabilityID : CVE-2026-35364 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35364 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:35f172366bddca074ef07bcedde6ea446a294b9e137cb3c68dee
│                        │      │                   9fa6d0839955 
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
│                        ├ [69] ╭ VulnerabilityID : CVE-2026-35367 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35367 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:61b68ef2af8e7f81ec40adb58129dac3b7530e6fe8b5302f5a6b
│                        │      │                   1abdc7f73860 
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
│                        ├ [70] ╭ VulnerabilityID : CVE-2026-35368 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35368 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:91331d2a3e9b539f4a634069beefc66aa042297f8200671d16a3
│                        │      │                   2e356ad925c2 
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
│                        ├ [71] ╭ VulnerabilityID : CVE-2026-35370 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35370 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:2f81845984d26c4ae465a90fe551de92045ea1ddad9121979544
│                        │      │                   bdad9d3e01a7 
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
│                        ├ [72] ╭ VulnerabilityID : CVE-2026-35371 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35371 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c27c5975120eb026ac49d0f8c0da302ea8a21669bebab067eadc
│                        │      │                   04e26b25c7d6 
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
│                        ├ [73] ╭ VulnerabilityID : CVE-2026-35373 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35373 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:4b7d5e3a7edb5364b7d1950c9bdc8107b229dbb6e9be8f0c554a
│                        │      │                   13a414ff2a55 
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
│                        ├ [74] ╭ VulnerabilityID : CVE-2026-35374 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35374 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:68f02d031be546250108425d469559a13cda10f2b2e759e3e8ee
│                        │      │                   9994db26ae77 
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
│                        ├ [75] ╭ VulnerabilityID : CVE-2026-35377 
│                        │      ├ PkgID           : rust-coreutils@0.8.0-0ubuntu3 
│                        │      ├ PkgName         : rust-coreutils 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/rust-coreutils@0.8.0-0ubuntu3?arch=am
│                        │      │                  │       d64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 211a571db931b2ab 
│                        │      ├ InstalledVersion: 0.8.0-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-35377 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d56fa830a2dc7ca80b4bf5703327bdaa58fe6839474fec2bcdd6
│                        │      │                   2e08909a754b 
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
│                        ├ [76] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd@259.5-0ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04 
│                        │      │                  ╰ UID : e0e5fbac2698975d 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:7d8ba5a7d40c97ace8e94f105e892153de6b12eac6e182d8735a
│                        │      │                   84f6235c219f 
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
│                        ├ [77] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-cryptsetup@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-cryptsetup 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-cryptsetup@259.5-0ubuntu3?arc
│                        │      │                  │       h=amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 5f40b2e2217621bf 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:e8dd8df6f5ce91827aa1c0bce9d64d434204372b4581fea1152a
│                        │      │                   727df1ca3385 
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
│                        ├ [78] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-resolved@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-resolved 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-resolved@259.5-0ubuntu3?arch=
│                        │      │                  │       amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 2611e0dfa5a76aaf 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:d7b0e78dfd75bc129524d0c9a4745f1f4b5f7260dd20e4a45ae4
│                        │      │                   4a6f535a3485 
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
│                        ├ [79] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-sysv@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-sysv 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-sysv@259.5-0ubuntu3?arch=amd6
│                        │      │                  │       4&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 671de75b107aaffc 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:43520eaef42b5198f7cfbcfbda8eec6057347d02661c762cb40f
│                        │      │                   90851b8427cd 
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
│                        ├ [80] ╭ VulnerabilityID : CVE-2026-40228 
│                        │      ├ PkgID           : systemd-timesyncd@259.5-0ubuntu3 
│                        │      ├ PkgName         : systemd-timesyncd 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/systemd-timesyncd@259.5-0ubuntu3?arch
│                        │      │                  │       =amd64&distro=ubuntu-26.04 
│                        │      │                  ╰ UID : c6ea5d793fe24a49 
│                        │      ├ InstalledVersion: 259.5-0ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-40228 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:ba776df9a89959a0ad5b642677cf76b3d1786008261e54240786
│                        │      │                   d6e7ae9ac5c2 
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
│                        ├ [81] ╭ VulnerabilityID : CVE-2025-45582 
│                        │      ├ PkgID           : tar@1.35+dfsg-4 
│                        │      ├ PkgName         : tar 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : df8f3d12dd71b054 
│                        │      ├ InstalledVersion: 1.35+dfsg-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-45582 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:0e155ca2ee6fd33ad6802b3e563aadddd278affdf8ee82f3b28e
│                        │      │                   c45f5922853e 
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
│                        ├ [82] ╭ VulnerabilityID : CVE-2026-5704 
│                        │      ├ PkgID           : tar@1.35+dfsg-4 
│                        │      ├ PkgName         : tar 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/tar@1.35%2Bdfsg-4?arch=amd64&distro=u
│                        │      │                  │       buntu-26.04 
│                        │      │                  ╰ UID : df8f3d12dd71b054 
│                        │      ├ InstalledVersion: 1.35+dfsg-4 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-5704 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c8b0c6a8a63d5567c44255e64f2faf60692083a5fc0dfdaff7c4
│                        │      │                   db5462180d35 
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
│                        ├ [83] ╭ VulnerabilityID : CVE-2024-56433 
│                        │      ├ PkgID           : uidmap@1:4.17.4-2ubuntu3 
│                        │      ├ PkgName         : uidmap 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/uidmap@4.17.4-2ubuntu3?arch=amd64&dis
│                        │      │                  │       tro=ubuntu-26.04&epoch=1 
│                        │      │                  ╰ UID : d7cc4b1ad13c4c8d 
│                        │      ├ InstalledVersion: 1:4.17.4-2ubuntu3 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2024-56433 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:96dcc63a265a358cb891a94967d1fd8fdc90cbde2772e65373dd
│                        │      │                   36af05e93a42 
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
│                        ├ [84] ╭ VulnerabilityID : CVE-2026-27456 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27456 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:61dd6466317a248ee4aa79902c7ae9e643625e1a58b1c09e109c
│                        │      │                   2aff4f656408 
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
│                        ├ [85] ╭ VulnerabilityID : CVE-2026-3184 
│                        │      ├ PkgID           : util-linux@2.41.3-3ubuntu2 
│                        │      ├ PkgName         : util-linux 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/util-linux@2.41.3-3ubuntu2?arch=amd64
│                        │      │                  │       &distro=ubuntu-26.04 
│                        │      │                  ╰ UID : 34e9503915630576 
│                        │      ├ InstalledVersion: 2.41.3-3ubuntu2 
│                        │      ├ Status          : affected 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ubuntu 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-3184 
│                        │      ├ DataSource       ╭ ID  : ubuntu 
│                        │      │                  ├ Name: Ubuntu CVE Tracker 
│                        │      │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                        │      ├ Fingerprint     : sha256:c5bf9ba6f3dadfda1b0042fa4d2ab0003d1e4f37c6937a221eca
│                        │      │                   bd3efc3f11bb 
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
│                        ╰ [86] ╭ VulnerabilityID : CVE-2021-31879 
│                               ├ PkgID           : wget@1.25.0-2ubuntu4 
│                               ├ PkgName         : wget 
│                               ├ PkgIdentifier    ╭ PURL: pkg:deb/ubuntu/wget@1.25.0-2ubuntu4?arch=amd64&distr
│                               │                  │       o=ubuntu-26.04 
│                               │                  ╰ UID : a886bdd7bd7f93f6 
│                               ├ InstalledVersion: 1.25.0-2ubuntu4 
│                               ├ Status          : affected 
│                               ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                               │                  │         a6853a72a462323eed7d5 
│                               │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                               │                            5c88a68ed16f842ea1954 
│                               ├ SeveritySource  : ubuntu 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2021-31879 
│                               ├ DataSource       ╭ ID  : ubuntu 
│                               │                  ├ Name: Ubuntu CVE Tracker 
│                               │                  ╰ URL : https://git.launchpad.net/ubuntu-cve-tracker 
│                               ├ Fingerprint     : sha256:710ed39ee7fce1b24535b99ffe30d04ff6fce0378cd7ec4aaed2
│                               │                   399d3e707777 
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
│      ╰ Vulnerabilities ╭ [0]  ╭ VulnerabilityID : CVE-2026-46680 
│                        │      ├ VendorIDs        ─ [0]: GHSA-fqw6-gf59-qr4w 
│                        │      ├ PkgID           : github.com/containerd/containerd/v2@v2.2.3 
│                        │      ├ PkgName         : github.com/containerd/containerd/v2 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/containerd/containerd/v2@v2.2.3 
│                        │      │                  ╰ UID : baa14ee9769f7d12 
│                        │      ├ InstalledVersion: v2.2.3 
│                        │      ├ FixedVersion    : 2.0.9, 2.2.4, 2.3.1 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:26b00b912424f4eeb49bb15fe30a647fe76f822ba69fe830de43
│                        │      │                   312f6fac1340 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:26cb867051a055fc6fa61043f303ee041b54192d0396f91d7185
│                        │      │                   94f1713b6d12 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:0a315eb8b641e7abef4bbb335a521284499f9012fa92f0865bf7
│                        │      │                   4b86cb350f26 
│                        │      ├ Title           : Moby is an open source container framework. In versions
│                        │      │                   prior to 29.5. ... 
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
│                        │      │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -x86f-5xw2-fm2r 
│                        │      │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:97adbedf8a04fc468afb970f670eb6214aae58274d4dd3ee4781
│                        │      │                   76a89f566ed9 
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
│                        │      │                  ╰ ghsa  : 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7.2 
│                        │      ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │      │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -rg2x-37c3-w2rh 
│                        │      │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
│                        │      ├ PublishedDate   : 2026-06-12T19:16:27.49Z 
│                        │      ╰ LastModifiedDate: 2026-06-12T19:16:27.49Z 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:e5fb978ae6627399680bdf33df63fd17497db9feae8c66655e33
│                        │      │                   4455c7a49048 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:6021116bab19f0a01b77f904eccc8aa7a5aba854cc7434bf5421
│                        │      │                   2309a4881076 
│                        │      ├ Title           : Moby is an open source container framework. In Docker
│                        │      │                   Engine prior to  ... 
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
│                        │      ├ VendorSeverity   ─ ghsa: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 6 
│                        │      ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │      │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -vp62-88p7-qqf5 
│                        │      │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-41568 
│                        │      ├ PublishedDate   : 2026-06-12T19:16:26.907Z 
│                        │      ╰ LastModifiedDate: 2026-06-12T19:16:26.907Z 
│                        ├ [6]  ╭ VulnerabilityID : GHSA-pmwq-pjrm-6p5r 
│                        │      ├ PkgID           : github.com/in-toto/in-toto-golang@v0.10.0 
│                        │      ├ PkgName         : github.com/in-toto/in-toto-golang 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/in-toto/in-toto-golang@v0.10.0 
│                        │      │                  ╰ UID : 2f00fd2b28b6e12f 
│                        │      ├ InstalledVersion: v0.10.0 
│                        │      ├ FixedVersion    : 0.11.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-pmwq-pjrm-6p5r 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:e2ab6a232b670082d38d4fdf488ec87031cdfc14cd5bbf15c7a8
│                        │      │                   ffd7966d938d 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:da10c95e4747f939714ad9b8328f615c037d60ea56c9cf535b70
│                        │      │                   1817da94d771 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:5008bbf6cb2e48c152a6b27912bd596cb865903bfc5001cef9c3
│                        │      │                   af6bdfa0a17a 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f6ac9affba6817fa96ef33048b755320f38b8e4f52853f00bbe8
│                        │      │                   d480dc79a35b 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:3b2fd88ee01a9f5fad88174cfa3bbfc80713042e414df62ff163
│                        │      │                   763f70e9b310 
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
│                               ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                               │                  │         a6853a72a462323eed7d5 
│                               │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                               │                            5c88a68ed16f842ea1954 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:33e854fd2045e4c18776899de25856541f3272fb7645800ab951
│                               │                   e9abdd3b3157 
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
├ [6]  ╭ Target  : usr/bin/helm 
│      ├ Class   : lang-pkgs 
│      ├ Type    : gobinary 
│      ╰ Packages 
├ [7]  ╭ Target  : usr/bin/kubectl 
│      ├ Class   : lang-pkgs 
│      ├ Type    : gobinary 
│      ╰ Packages 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33811 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:d7bd557afe51ff2ba6dbdb25a807dd865d7e5ff4943d15171625
│                        │      │                   9d7496db9cd5 
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
│                        │      │                  ├ photon     : 3 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33814 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:ae92542cb448311f47750bb6bf38e2db5a97b55ad6946d77609a
│                        │      │                   abd4228086f9 
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
│                        │      │                  ├ photon     : 3 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39820 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:aa73aee64dcf44bc4b27c41d61f6dbe0073c59d4ecf6b351a822
│                        │      │                   8c21ec3a92a4 
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
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ╰ photon     : 3 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39823 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:2c3b186de39d8f0e1d9382a69571d1e5bd07e4da165ca753eaf5
│                        │      │                   5814acd5fcb4 
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
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ╰ photon     : 2 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39825 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:f88159cce101407d8f6577efca06c569acc3feab69d1cf88fdf1
│                        │      │                   f009c17ca6f7 
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
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ╰ photon     : 2 
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
│                        ├ [5]  ╭ VulnerabilityID : CVE-2026-39836 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4971 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : nvd 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39836 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:543e93a66b9048878ddf2d6ea83de24fa6ba40d1ea974900bc4a
│                        │      │                   e9cd6ba7992f 
│                        │      ├ Title           : ELSA-2026-22112:  go-toolset:ol8 security update (IMPORTANT) 
│                        │      ├ Description     : The Dial and LookupPort functions panic on Windows when
│                        │      │                   provided with an input containing a NUL (0). 
│                        │      ├ Severity        : HIGH 
│                        │      ├ CweIDs           ─ [0]: CWE-476 
│                        │      ├ VendorSeverity   ╭ bitnami    : 3 
│                        │      │                  ├ nvd        : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ╰ photon     : 3 
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
│                        ├ [6]  ╭ VulnerabilityID : CVE-2026-42499 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4977 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42499 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:0c5b347bb9f054d873b359d891639ba3c030c9637e46ddbb9fcd
│                        │      │                   d2da9f41d377 
│                        │      ├ Title           : Pathological inputs could cause DoS through consumePhrase
│                        │      │                   when parsing ... 
│                        │      ├ Description     : Pathological inputs could cause DoS through consumePhrase
│                        │      │                   when parsing an email address according to RFC 5322. 
│                        │      ├ Severity        : HIGH 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 3 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ╰ photon     : 3 
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
│                        ├ [7]  ╭ VulnerabilityID : CVE-2026-42504 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:29515d52606fde1494a6a52fdd52a1d87313e01b629b098f33dd
│                        │      │                   08345ce552de 
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
│                        ├ [8]  ╭ VulnerabilityID : CVE-2026-27145 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-5037 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:9b801486a9a25e746f842c50c506db4d77b03d072e745d46b57d
│                        │      │                   cc7432e0248c 
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
│                        ├ [9]  ╭ VulnerabilityID : CVE-2026-39826 
│                        │      ├ VendorIDs        ─ [0]: GO-2026-4980 
│                        │      ├ PkgID           : stdlib@v1.26.2 
│                        │      ├ PkgName         : stdlib 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                        │      │                  ╰ UID : e5871284774cde90 
│                        │      ├ InstalledVersion: v1.26.2 
│                        │      ├ FixedVersion    : 1.25.10, 1.26.3 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39826 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:92afd0391f5ae9dd615253fe2458f4855c0038eef0c0709f9868
│                        │      │                   92812c233cf1 
│                        │      ├ Title           : html/template: golang: html/template: Cross-site scripting
│                        │      │                   due to incorrect script tag escaping 
│                        │      ├ Description     : If a trusted template author were to write a <script> tag
│                        │      │                   containing an empty 'type' attribute or a 'type' attribute
│                        │      │                   with an ASCII whitespace, the execution of the template
│                        │      │                   would incorrectly escape any data passed into the <script>
│                        │      │                   block. 
│                        │      ├ Severity        : MEDIUM 
│                        │      ├ CweIDs           ─ [0]: CWE-116 
│                        │      ├ VendorSeverity   ╭ amazon     : 3 
│                        │      │                  ├ bitnami    : 2 
│                        │      │                  ├ oracle-oval: 3 
│                        │      │                  ├ photon     : 2 
│                        │      │                  ╰ redhat     : 2 
│                        │      ├ CVSS             ╭ bitnami ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:C/C:L/I
│                        │      │                  │         │           :L/A:N 
│                        │      │                  │         ╰ V3Score : 6.1 
│                        │      │                  ╰ redhat  ╭ V3Vector: CVSS:3.1/AV:N/AC:L/PR:N/UI:R/S:U/C:L/I
│                        │      │                            │           :L/A:N 
│                        │      │                            ╰ V3Score : 5.4 
│                        │      ├ References       ╭ [0]: https://access.redhat.com/security/cve/CVE-2026-39826 
│                        │      │                  ├ [1]: https://go.dev/cl/771180 
│                        │      │                  ├ [2]: https://go.dev/issue/78981 
│                        │      │                  ├ [3]: https://groups.google.com/g/golang-announce/c/qcCIEXs
│                        │      │                  │      o47M 
│                        │      │                  ├ [4]: https://linux.oracle.com/cve/CVE-2026-39826.html 
│                        │      │                  ├ [5]: https://linux.oracle.com/errata/ELSA-2026-22112.html 
│                        │      │                  ├ [6]: https://nvd.nist.gov/vuln/detail/CVE-2026-39826 
│                        │      │                  ├ [7]: https://pkg.go.dev/vuln/GO-2026-4980 
│                        │      │                  ╰ [8]: https://www.cve.org/CVERecord?id=CVE-2026-39826 
│                        │      ├ PublishedDate   : 2026-05-07T20:16:43.49Z 
│                        │      ╰ LastModifiedDate: 2026-05-13T16:59:07.48Z 
│                        ╰ [10] ╭ VulnerabilityID : CVE-2026-42507 
│                               ├ VendorIDs        ─ [0]: GO-2026-5039 
│                               ├ PkgID           : stdlib@v1.26.2 
│                               ├ PkgName         : stdlib 
│                               ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.2 
│                               │                  ╰ UID : e5871284774cde90 
│                               ├ InstalledVersion: v1.26.2 
│                               ├ FixedVersion    : 1.25.11, 1.26.4 
│                               ├ Status          : fixed 
│                               ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                               │                  │         a6853a72a462323eed7d5 
│                               │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                               │                            5c88a68ed16f842ea1954 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:e90df86c00e8a40bddc6afe403f6087b19f66c7e693bb1fd4a10
│                               │                   5d90d9ec9e0a 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:069d345021772a0facbc5bf7d48f4694cef3a8bdbb1f8714830c4
│                        │     │                   16499145754 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:aadb6799f1d04975ed4232e697cef22f3dfbce9ae989a1897c3a0
│                        │     │                   c8893922ff7 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d606217cdf1516517731a051781d4e61982568344a0e23be42859
│                        │     │                   f8ba15adbe2 
│                        │     ├ Title           : Moby is an open source container framework. In versions
│                        │     │                   prior to 29.5. ... 
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
│                        │     │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      x86f-5xw2-fm2r 
│                        │     │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d01c8acc4ac331577371bbf2ab4e4cd26ac959d9e94ebee91410c
│                        │     │                   adf0b55ab81 
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
│                        │     │                  ╰ ghsa  : 3 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/A:H 
│                        │     │                         ╰ V3Score : 7.2 
│                        │     ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │     │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      rg2x-37c3-w2rh 
│                        │     │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
│                        │     ├ PublishedDate   : 2026-06-12T19:16:27.49Z 
│                        │     ╰ LastModifiedDate: 2026-06-12T19:16:27.49Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:62255d21c2db73bbb226cacd72ee48953157b15d08df43d5fe657
│                        │     │                   1a66c276b23 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:9413a55120b6d878e29fda8d07855a997a7ff325a19744aab27bc
│                        │     │                   85a1980489c 
│                        │     ├ Title           : Moby is an open source container framework. In Docker Engine
│                        │     │                    prior to  ... 
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
│                        │     ├ VendorSeverity   ─ ghsa: 2 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L/A:H 
│                        │     │                         ╰ V3Score : 6 
│                        │     ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │     │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      vp62-88p7-qqf5 
│                        │     │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-41568 
│                        │     ├ PublishedDate   : 2026-06-12T19:16:26.907Z 
│                        │     ╰ LastModifiedDate: 2026-06-12T19:16:26.907Z 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-42504 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │     ├ PkgID           : stdlib@v1.26.3 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │     │                  ╰ UID : d06133606ce496f9 
│                        │     ├ InstalledVersion: v1.26.3 
│                        │     ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:b6a645e7af5ad7a79312ab55303323d44c310141b881086f5a6e3
│                        │     │                   b2b46bc0328 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:e13e410f4ca260230203c35707eeca597d5ad36cb3e793b8b48ee
│                        │     │                   9f9f2cb47bb 
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
│                              ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                              │                  │         6853a72a462323eed7d5 
│                              │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                              │                            c88a68ed16f842ea1954 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:529c5fc85ae46ae65442ae4f6ab90638b85e7291925f02f339b98
│                              │                   ad743587ff7 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:0333df7a187476e124e0b65e5bbff72dff90eafa50f181e860ad
│                        │      │                   b4f16d0653a6 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:8edb31c5884df9837c3109ac8c9bfc9f05b48a085bcfc1485b44
│                        │      │                   67714a01bd8c 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:3c0f89ac0952f229e98ebcb98e28cec6821c094f3f08a8985ab7
│                        │      │                   be7bdb0f105e 
│                        │      ├ Title           : Moby is an open source container framework. In versions
│                        │      │                   prior to 29.5. ... 
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
│                        │      │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -x86f-5xw2-fm2r 
│                        │      │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:b313777a89bfb39c0907107e9d33d49706db3a6b5111374589b3
│                        │      │                   5761b79c0210 
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
│                        │      │                  ╰ ghsa  : 3 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 7.2 
│                        │      ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │      │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -rg2x-37c3-w2rh 
│                        │      │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
│                        │      ├ PublishedDate   : 2026-06-12T19:16:27.49Z 
│                        │      ╰ LastModifiedDate: 2026-06-12T19:16:27.49Z 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:298328f68a4d47f6f8be6533267c5f1b4f5368c7bce43cdad67d
│                        │      │                   2a8429b7c86c 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:bfadf2c5c0a4900eb2955e8e3925e9eb21f0a2659945f5af27bb
│                        │      │                   8605af0ba9b8 
│                        │      ├ Title           : Moby is an open source container framework. In Docker
│                        │      │                   Engine prior to  ... 
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
│                        │      ├ VendorSeverity   ─ ghsa: 2 
│                        │      ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L/
│                        │      │                         │           A:H 
│                        │      │                         ╰ V3Score : 6 
│                        │      ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │      │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA
│                        │      │                  │      -vp62-88p7-qqf5 
│                        │      │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-41568 
│                        │      ├ PublishedDate   : 2026-06-12T19:16:26.907Z 
│                        │      ╰ LastModifiedDate: 2026-06-12T19:16:26.907Z 
│                        ├ [6]  ╭ VulnerabilityID : GHSA-pmwq-pjrm-6p5r 
│                        │      ├ PkgID           : github.com/in-toto/in-toto-golang@v0.10.0 
│                        │      ├ PkgName         : github.com/in-toto/in-toto-golang 
│                        │      ├ PkgIdentifier    ╭ PURL: pkg:golang/github.com/in-toto/in-toto-golang@v0.10.0 
│                        │      │                  ╰ UID : 3aa4f93341f1d696 
│                        │      ├ InstalledVersion: v0.10.0 
│                        │      ├ FixedVersion    : 0.11.0 
│                        │      ├ Status          : fixed 
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://github.com/advisories/GHSA-pmwq-pjrm-6p5r 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:0ce9c69b751694821bb3563636682e09c5f43e289ae52cd171ae
│                        │      │                   62b0aa2892ce 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:7e070ccfc16cc5acb57ca07e22355d324638c148caf428cf72ed
│                        │      │                   8a49a3200cd3 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ SeveritySource  : ghsa 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39882 
│                        │      ├ DataSource       ╭ ID  : ghsa 
│                        │      │                  ├ Name: GitHub Security Advisory Go 
│                        │      │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+
│                        │      │                          ecosystem%3Ago 
│                        │      ├ Fingerprint     : sha256:144925dfcca6d8e9ae0ca4b91c6fcf659578c760c4d481973a55
│                        │      │                   ba72d141b3b5 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:a5930374c72766a2161000f08c62b6a21f9448ecf9b64879c8e6
│                        │      │                   77a2415ff109 
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
│                        │      ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                        │      │                  │         a6853a72a462323eed7d5 
│                        │      │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                        │      │                            5c88a68ed16f842ea1954 
│                        │      ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │      ├ DataSource       ╭ ID  : govulndb 
│                        │      │                  ├ Name: The Go Vulnerability Database 
│                        │      │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │      ├ Fingerprint     : sha256:bf7eed23d3b7436a669db5428d54dbb95111255a51006173818f
│                        │      │                   8ef151feb0a6 
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
│                               ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822
│                               │                  │         a6853a72a462323eed7d5 
│                               │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da
│                               │                            5c88a68ed16f842ea1954 
│                               ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                               ├ DataSource       ╭ ID  : govulndb 
│                               │                  ├ Name: The Go Vulnerability Database 
│                               │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                               ├ Fingerprint     : sha256:9d20c292250ef0260cb57e55085169d22fb59b52cbce7bc7a3a2
│                               │                   19f0e2b40e39 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-46680 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:80fdb825387dc9439ddbcba5c2c22e9b4f74f3fefba4b10bb68c3
│                        │     │                   2673dba08c7 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-39883 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:4e3349f0384bb0fc2349551e8aa27fd218026cc4e23e66659a0de
│                        │     │                   e60c4376a57 
│                        │     ├ Title           : github.com/open-telemetry/opentelemetry-go:
│                        │     │                   OpenTelemetry-Go: Arbitrary code execution via PATH
│                        │     │                   hijacking on BSD/Solaris 
│                        │     ├ Description     : OpenTelemetry-Go is the Go implementation of OpenTelemetry.
│                        │     │                   From 1.15.0 to 1.42.0, the fix for CVE-2026-24051 changed
│                        │     │                   the Darwin ioreg command to use an absolute path but left
│                        │     │                   the BSD kenv command using a bare name, allowing the same
│                        │     │                   PATH hijacking attack on BSD and Solaris platforms. This
│                        │     │                   vulnerability is fixed in 1.43.0. 
│                        │     ├ Severity        : HIGH 
│                        │     ├ CweIDs           ─ [0]: CWE-426 
│                        │     ├ VendorSeverity   ╭ ghsa  : 3 
│                        │     │                  ├ nvd   : 3 
│                        │     │                  ╰ redhat: 3 
│                        │     ├ CVSS             ╭ ghsa   ╭ V40Vector: CVSS:4.0/AV:L/AC:H/AT:N/PR:L/UI:N/VC:H/
│                        │     │                  │        │            VI:H/VA:H/SC:N/SI:N/SA:N 
│                        │     │                  │        ╰ V40Score : 7.3 
│                        │     │                  ├ nvd    ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H
│                        │     │                  │        │           /A:H 
│                        │     │                  │        ╰ V3Score : 7 
│                        │     │                  ╰ redhat ╭ V3Vector: CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:C/C:H/I:H
│                        │     │                           │           /A:H 
│                        │     │                           ╰ V3Score : 8.8 
│                        │     ├ References       ╭ [0]: http://github.com/open-telemetry/opentelemetry-go/rele
│                        │     │                  │      ases/tag/v1.43.0 
│                        │     │                  ├ [1]: https://access.redhat.com/security/cve/CVE-2026-39883 
│                        │     │                  ├ [2]: https://github.com/open-telemetry/opentelemetry-go 
│                        │     │                  ├ [3]: https://github.com/open-telemetry/opentelemetry-go/sec
│                        │     │                  │      urity/advisories/GHSA-hfvc-g4fc-pqhx 
│                        │     │                  ├ [4]: https://nvd.nist.gov/vuln/detail/CVE-2026-39883 
│                        │     │                  ╰ [5]: https://www.cve.org/CVERecord?id=CVE-2026-39883 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:1bea22c699d73f662d2bbc45f8172bea1e3c11b6ae2b08c5c5beb
│                        │     │                   ff47072551d 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:c02a6944c5848027d3f72a8f43a99af9b0180f02dc7b50502995b
│                        │     │                   d8617a03776 
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
│                              ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                              │                  │         6853a72a462323eed7d5 
│                              │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                              │                            c88a68ed16f842ea1954 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:ad3f626da026d1f3b49366c0d8da7a1b2f5901f58e4adabcc8b43
│                              │                   6bdcac8a6ab 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2025-15558 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:efbbf41b5ad85f1f913df528f63cee10e48102e01c1e5aa5d1918
│                        │     │                   185db55c6c9 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-34040 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:d6a1efab31ab922996ee7bc6f6323f2f2cf780942e7364a0dedfb
│                        │     │                   cf7a1b04f25 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41567 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:a2c88005123cab3ff5fcd8c76dfc192dab5bde2df99a0665f8bc0
│                        │     │                   a1986f11434 
│                        │     ├ Title           : Moby is an open source container framework. In versions
│                        │     │                   prior to 29.5. ... 
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
│                        │     │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      x86f-5xw2-fm2r 
│                        │     │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-41567 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42306 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:af0c1d2a952b6220c144136da2723739d17980273d7e07b154680
│                        │     │                   539d5c66b9b 
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
│                        │     │                  ╰ ghsa  : 3 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:H/A:H 
│                        │     │                         ╰ V3Score : 7.2 
│                        │     ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │     │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      rg2x-37c3-w2rh 
│                        │     │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-42306 
│                        │     ├ PublishedDate   : 2026-06-12T19:16:27.49Z 
│                        │     ╰ LastModifiedDate: 2026-06-12T19:16:27.49Z 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-33997 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:f73a788220a369edbb4dcaad85ab1289d7a59a824fc6ed4f42e28
│                        │     │                   95624fbb778 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ SeveritySource  : ghsa 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-41568 
│                        │     ├ DataSource       ╭ ID  : ghsa 
│                        │     │                  ├ Name: GitHub Security Advisory Go 
│                        │     │                  ╰ URL : https://github.com/advisories?query=type%3Areviewed+e
│                        │     │                          cosystem%3Ago 
│                        │     ├ Fingerprint     : sha256:2f82e535ecad329170efb5713ab63c4fdf6f40d3dab3ad83afe03
│                        │     │                   b37f09ca9bd 
│                        │     ├ Title           : Moby is an open source container framework. In Docker Engine
│                        │     │                    prior to  ... 
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
│                        │     ├ VendorSeverity   ─ ghsa: 2 
│                        │     ├ CVSS             ─ ghsa ╭ V3Vector: CVSS:3.1/AV:L/AC:H/PR:L/UI:R/S:C/C:N/I:L/A:H 
│                        │     │                         ╰ V3Score : 6 
│                        │     ├ References       ╭ [0]: https://github.com/moby/moby 
│                        │     │                  ├ [1]: https://github.com/moby/moby/security/advisories/GHSA-
│                        │     │                  │      vp62-88p7-qqf5 
│                        │     │                  ╰ [2]: https://nvd.nist.gov/vuln/detail/CVE-2026-41568 
│                        │     ├ PublishedDate   : 2026-06-12T19:16:26.907Z 
│                        │     ╰ LastModifiedDate: 2026-06-12T19:16:26.907Z 
│                        ├ [6] ╭ VulnerabilityID : CVE-2026-42504 
│                        │     ├ VendorIDs        ─ [0]: GO-2026-5038 
│                        │     ├ PkgID           : stdlib@v1.26.3 
│                        │     ├ PkgName         : stdlib 
│                        │     ├ PkgIdentifier    ╭ PURL: pkg:golang/stdlib@v1.26.3 
│                        │     │                  ╰ UID : 3dcf59cf5482f2c5 
│                        │     ├ InstalledVersion: v1.26.3 
│                        │     ├ FixedVersion    : 1.25.11, 1.26.4 
│                        │     ├ Status          : fixed 
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42504 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:3ec97f2b12627976470f19068b3bc6afc4443419e3a37f0764d31
│                        │     │                   47ce317a7b0 
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
│                        │     ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                        │     │                  │         6853a72a462323eed7d5 
│                        │     │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                        │     │                            c88a68ed16f842ea1954 
│                        │     ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-27145 
│                        │     ├ DataSource       ╭ ID  : govulndb 
│                        │     │                  ├ Name: The Go Vulnerability Database 
│                        │     │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                        │     ├ Fingerprint     : sha256:230c5d134a979b2bce3fbe9c991ad177ac64924f532b5341a8e70
│                        │     │                   2ae70fe7029 
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
│                              ├ Layer            ╭ Digest: sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a
│                              │                  │         6853a72a462323eed7d5 
│                              │                  ╰ DiffID: sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5
│                              │                            c88a68ed16f842ea1954 
│                              ├ PrimaryURL      : https://avd.aquasec.com/nvd/cve-2026-42507 
│                              ├ DataSource       ╭ ID  : govulndb 
│                              │                  ├ Name: The Go Vulnerability Database 
│                              │                  ╰ URL : https://pkg.go.dev/vuln/ 
│                              ├ Fingerprint     : sha256:33b3b162c486eb81a577c7cd4bd072175a6097ee7681c032c987e
│                              │                   8565b7934b1 
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
│                      ├ Layer     ╭ Digest   : sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a6853a72a4623
│                      │           │            23eed7d5 
│                      │           ├ DiffID   : sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5c88a68ed16f8
│                      │           │            42ea1954 
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
│                      ├ Layer     ╭ Digest   : sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a6853a72a4623
│                      │           │            23eed7d5 
│                      │           ├ DiffID   : sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5c88a68ed16f8
│                      │           │            42ea1954 
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
                       ├ Layer     ╭ Digest   : sha256:eedf6297b52c5ebbda3fce1db5f5506cf2d165c5822a6853a72a4623
                       │           │            23eed7d5 
                       │           ├ DiffID   : sha256:3ccd9def16d3c79b1025b524791765afbefecc8d4da5c88a68ed16f8
                       │           │            42ea1954 
                       │           ╰ CreatedBy: COPY / / # buildkit 
                       ╰ Offset   : 36 
```
